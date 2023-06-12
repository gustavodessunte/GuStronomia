var database = require("../database/config")

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function listarReceitas() {
    console.log("Acessei a MODEL RECEITAS");
    
    var instrucao = `
        SELECT * FROM Receitas;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function listarDoces() {
    console.log("Acessei a MODEL RECEITAS DOCES");
    
    var instrucao = `
        SELECT * FROM Receitas WHERE idReceita >= 1 and idReceita <= 3;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function listarSalgados() {
    console.log("Acessei a MODEL RECEITAS SALGADOS");
    
    var instrucao = `
        SELECT * FROM Receitas WHERE idReceita > 3 and idReceita <= 6;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function listarDrinks() {
    console.log("Acessei a MODEL RECEITAS DRINKS");
    
    var instrucao = `
        SELECT * FROM Receitas WHERE idReceita > 6 and idReceita <= 9;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listarReceitas,
    listarDoces,
    listarSalgados,
    listarDrinks
};