var usuarioModel = require("../models/usuarioModel");

function cadastrarUsuario(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var nomeUsuario = req.body.nomeUsuario;
    var telCelularUsuario = req.body.telCelularUsuario;
    var bairroUsuario = req.body.bairroUsuario;
    var cidadeUsuario = req.body.cidadeUsuario;
    var ruaUsuario = req.body.ruaUsuario;
    var numeroUsuario = req.body.numeroUsuario;
    var fkLogin = req.body.fkLogin;
    var alimentoPref = req.body.alimentoPref
    // Faça as validações dos valores
    if (nomeUsuario == undefined) {
        res.status(400).send("nomeUsuario está undefined!");
    } else if (telCelularUsuario == undefined) {
        res.status(400).send("telCelularUsuario está undefined!");
    } else if (bairroUsuario == undefined) {
        res.status(400).send("bairroUsuario está undefined!");
    } else if (cidadeUsuario == undefined) {
        res.status(400).send("cidadeUsuario está undefined!");
    }
    else if (numeroUsuario == undefined) {
        res.status(400).send("numeroUsuario está undefined!");
    }
    else if(fkLogin == undefined){
        res.status(400).send("fkLogin está undefined!");
    } 
    else if(alimentoPref == undefined){
        res.status(400).send("alimentoPref está undefined!");
    }
    else {

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        usuarioModel.cadastrarUsuario(nomeUsuario, telCelularUsuario, bairroUsuario, cidadeUsuario, ruaUsuario, numeroUsuario, fkLogin, alimentoPref)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

function selectUsuariosPorFkLogin(req, res){
    var fkLogin = req.params.fkLogin;
    console.log('Estou no Controller com o valor de:' + fkLogin)

    usuarioModel.selectUsuariosPorFkLogin(fkLogin)
    .then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
            console.log("Resultado da Controller:"+ resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar o usuário", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    cadastrarUsuario,
    selectUsuariosPorFkLogin
}