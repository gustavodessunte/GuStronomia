var database = require("../database/config")

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrarUsuario(nomeUsuario, telCelularUsuario, bairroUsuario, cidadeUsuario, ruaUsuario, numeroUsuario, fkLoginUsuario, alimentoPref) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nomeUsuario, telCelularUsuario, bairroUsuario, cidadeUsuario, ruaUsuario, numeroUsuario, fkLoginUsuario);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO Usuario (nome, telCelular, bairro, cidade, rua, numero, fkLogin, alimentoPref) VALUES ('${nomeUsuario}', '${telCelularUsuario}', '${bairroUsuario}', '${cidadeUsuario}', '${ruaUsuario}', ${numeroUsuario}, ${fkLoginUsuario}, '${alimentoPref}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function selectUsuariosPorFkLogin(fkLogin){
    var instrucao = `SELECT * FROM USUARIO WHERE fkLogin = ${fkLogin}`;

    return database.executar(instrucao);
}

module.exports = {
    cadastrarUsuario,
    selectUsuariosPorFkLogin
}; 