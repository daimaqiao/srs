var express = require('express');
var router = express.Router();

var autoCount=0
router.get('/auto_count', function(req, res, next) {
	let last= autoCount;
	autoCount++;
	console.log("auto_count:", last, "-->", autoCount);

	res.send(autoCount.toString());
});

module.exports = router;
