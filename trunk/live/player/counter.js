// Using jQuery.js
var countPlayerOnce= false;
function countPlayer() {
	if(countPlayerOnce)
		return;
	countPlayerOnce= true;
	let hostname= window.location.hostname;
	let origin=encodeURIComponent(window.location);
	let counter="http://"+hostname+":12998/counter/auto_count?origin="+origin;
	$.get(counter, (n)=> {
		let txt= "播放次数统计："+ n;
		$("#out").html(txt);
	});
}

