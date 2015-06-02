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