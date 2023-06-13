var express = require("express");
var router = express.Router();

var receitasController = require("../controllers/receitasController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.get("/listarReceitas", function (req, res) {
    receitasController.listarReceitas(req, res);
});

router.get("/listarDoces", function (req, res) {
    receitasController.listarDoces(req, res);
});

router.get("/listarSalgados", function (req, res) {
    receitasController.listarSalgados(req, res);
});

router.get("/listarDrinks", function (req, res) {
    receitasController.listarDrinks(req, res);
});

router.get("/listarQntdDoces", function (req, res) {
    receitasController.listarQntdDoces(req, res);
});

router.get("/listarQntdSalgados", function (req, res) {
    receitasController.listarQntdSalgados(req, res);
});

router.get("/listarQntdDrinks", function (req, res) {
    receitasController.listarQntdDrinks(req, res);
});

module.exports = router;