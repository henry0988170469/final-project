var express = require('express');
var router = express.Router();
const crown2Controller = require('../controllers/crown2Controller_92');

/* GET home page. */
router.get('/', crown2Controller.getPictureByCategory);
module.exports = router;
