var lastmoved;
var string,name,address,number,pzcode;
function sendForm() {
$.ajax({
    url: 'ordernr.php',
    type: 'post',
    data: { "name": name, "address": address, "number": number, "pizzacode": pzcode},
    success: function(response) { string += response + '<br>'; }
});
}
Array.prototype.remove = function() {
    var what, a = arguments, L = a.length, ax;
    while (L && this.length) {
        what = a[--L];
        while ((ax = this.indexOf(what)) !== -1) {
            this.splice(ax, 1);
        }
    }
    return this;
};
function addProduct() {
$.ajax({
    url: 'getname.php',
    type: 'post',
    data: { "name": lastmoved},
    success: function(response) { string += response + '<br>'; }
});
$('#addedproducts').html(string);
}
function removeProduct() {
masivche.remove(lastmoved);
}
$(document).ready(function(){
    $( ".product" ).draggable({
		revert: "invalid",
	
		drag: function( event, ui ) {
		lastmoved = ($(this).context.id);
		
		},
    });


    $( ".pizza" ).droppable({
        drop: function( event, ui ) {
            var targetElem = $(this).attr("id");
			addProduct();
        }
    });
	 $( ".toppingContainer" ).droppable({
        drop: function( event, ui ) {
            var targetElem = $(this).attr("id");
			removeProduct();
			console.log(masivche);
        }
    });
});
  function validateForm() {
    var x = document.forms["order"]["firstname"].value;
    if (x == null || x == "") {
        alert("Въведете всички данни");
        return false;
    }
     var x = document.forms["order"]["surname"].value;
    if (x == null || x == "") {
        alert("Въведете всички данни");
        return false;
    }
     var x = document.forms["order"]["phone"].value;
    if (x == null || x == "") {
        alert("Въведете всички данни");
        return false;
    }
     var x = document.forms["order"]["address"].value;
    if (x == null || x == "") {
        alert("Въведете всички данни");
        return false;
    }
}
function zdr(){

    $( "#popup" ).dialog({width: 600,height:500});

};
