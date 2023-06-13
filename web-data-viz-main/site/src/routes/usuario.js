var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.post("/cadastrarUsuario", function (req, res) {
    usuarioController.cadastrarUsuario(req, res);
});

router.get("/selectUsuariosPorFkLogin/:fkLogin", function (req, res){
    usuarioController.selectUsuariosPorFkLogin(req, res);
});

module.exports = router; 