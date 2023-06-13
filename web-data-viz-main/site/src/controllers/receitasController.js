var receitasModel = require("../models/receitasModel");

function listarReceitas(req, res){
    receitasModel.listarReceitas()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Receitas encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

function listarDoces(req, res){
    receitasModel.listarDoces()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Doces encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

function listarSalgados(req, res){
    receitasModel.listarSalgados()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Salgados encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

function listarDrinks(req, res){
    receitasModel.listarDrinks()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Drinks encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

function listarQntdDoces(req, res){
    receitasModel.listarQntdDoces()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Drinks encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

function listarQntdSalgados(req, res){
    receitasModel.listarQntdSalgados()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Drinks encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

function listarQntdDrinks(req, res){
    receitasModel.listarQntdDrinks()
    .then(function (resultado){
      if(resultado.length > 0){
          res.status(200).json(resultado);
      }
      else{
        res.status(204).send("Nenhum resultado de Drinks encontrado!")
      }
    }).catch(
        function(erro){
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}

module.exports = {
    listarReceitas,
    listarDoces,
    listarSalgados,
    listarDrinks,
    listarQntdDoces,
    listarQntdSalgados,
    listarQntdDrinks
}