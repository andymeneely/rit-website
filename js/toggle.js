function toggle(id){
	if (document.getElementById) {
		// DOM3 = IE5+, NS6+
		var e = document.getElementById(id);
		if (e.style.display == 'block')
			e.style.display = 'none';
		else
			e.style.display = 'block';
	} //else just do nothing because old browsers are dumb...
}

function toggle_pubcloud(id){
	toggle(id + "_wordcloud");
	show_pubcloud(id);
}

function show_pubcloud(id){
	if(WordCloud.isSupported){
		var canvas = document.getElementById(id + "_canvas");
		canvas.width = 600;
		canvas.height = 400;
		WordCloud(canvas, {
			list: MeneelyESEM2013_wordfreq,
			gridSize: 1,
			weightFactor: 0.8,
			minRotation: 0,
			maxRotation: 0.78, /* pi/4 */
		} );
	}
}