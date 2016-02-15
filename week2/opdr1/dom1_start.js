var receipts = document.getElementsByTagName('li');
var total = 0.0;

console.log(receipts); 

for (var i = 0; i < receipts.length; i++) {
	var string_bedrag = receipts[i].innerHTML; 
	total += parseFloat(string_bedrag);

	console.log("totaal is nu " + total);
	console.log("afgerond getal is " + total.toFixed(2));
}

var totalPlaceholder = total.toFixed(2);
document.getElementsByTagName('div')['total'].innerHTML = totalPlaceholder;


/**
 * functional way 
 */ 
var receipts = document.getElementsByTagName('li');
var total = 0.0;

/**
 * Signle argument function
 */
Array.from(receipts).map(r => { total += parseFloat(r.innerHTML);});
console.log("total amount is " + total.toFixed(2));