$(document).ready(function(){
    $( ".product" ).draggable({
        stop: function(event, ui) {
            $('.droppable').removeClass('ui-state-highlight');
            if ( $.ui.ddmanager.drop( $(this).data("draggable"), event ) ) {
                alert( 'was dropped' );
            }
            else {
                alert( 'it was not dropped' );
            }
        }
    });


    $( ".pizza" ).droppable({
        drop: function( event, ui ) {
            var targetElem = $(this).attr("id");
            $( this )
            .addClass( "ui-state-highlight" )
            console.log(targetElem);
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