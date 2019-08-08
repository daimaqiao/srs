var express = require('express');
var router = express.Router();

var publishKey="test2019081713002130";
function checkPublishKey(req) {
	var param= req.body.param;
	if(param && param.indexOf("publish="+publishKey)>0)
		return true;
	else
		return false;
}

var playKey="test";
function checkPlayKey(req) {
	var param= req.body.param;
	if(param && param.indexOf("play="+playKey)>0)
		return true;
	else
		return false;
}

function isLocalhost(req) {
	var param= req.body.tcUrl;
	if(param && param.indexOf("rtmp://127.0.0.1")==0)
		return true;
	else
		return false;
}

router.post('/on_connect', function(req, res, next) {
	console.log("on_connect", req.body);
	res.send("0");
});


router.post('/on_publish', function(req, res, next) {
	console.log("on_publish:", req.body);
	if(isLocalhost(req))
		res.send("0");
	else
		res.send(checkPublishKey(req)? "0": "1");
});

router.post('/on_play', function(req, res, next) {
	console.log("on_play", req.body);
	res.send(checkPlayKey(req)? "0": "1");
});

module.exports = router;
