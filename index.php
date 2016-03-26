<?php
require('api/config/MysqliDB.php');
include('api/config/config.php');
$products = $db->get('products');
?>
<html>
<head>
<title>Pizza Designer 9001</title>
 <script src="js/jquery-1.12.2.js"></script>
  <script src="js/jquery-ui.js"></script><meta charset="UTF-8">
<script src="js/functions.js"></script><meta charset="UTF-8">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <script>
function zdr(){

    $( "#popup" ).dialog({width: 600,height:500});

};


  </script>
<script type="text/javascript">

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
</script>

<link rel="stylesheet" href="css/stylesheet.css">



</head>

<body>
<div id="container">


<div id="toppings">
<div id=toppingContainer>
<center><h2> Топинги </h2></center>
<?php
foreach($products as $product) {
echo "<img id='".$product['productname']."' class=\"product\" src='".$product['productimage']."' />";
}
?>
</div>
</div>

<div id="pizza">
<div class="pizza" id="pizzPic">
<img id="pica" class="droppable" src="images/pizza2.png" />
</div>
</div>

<div id="order">
<div id="orderContainer"
<center><h2>Вашата пица</h2></center>
<li>Тесто</li>
<li>Доматен сос </li>

<div id="orderNow">
<img id="orderButton" onclick="zdr()" src="images/poruchai.png"> </img>

</div>
</div>
</div>

<div id="popup">
<div id="noLogin">
<div id="noLoginContainer">
<h4>Поръчай без регистрация</h4>

<form name="order"  onsubmit="return validateForm()" method="post">
  Име<br>
  <input type="text" name="firstname"><br>
  Фамилия<br>
    <input type="text" name="surname"><br>
  Телефон<br>
  <input type="text" name="phone"><br>
  Адрес<br>
   <input type="text" name="address"><br>
   <br>

   <input type="submit" name="Давай" value="Изпращане"><br>
</form>
</div>
</div>


<div id="login">
<div id="loginContainer">
<h4>Вход за потребители</h4>
<form name="login"  onsubmit="return validateForm()" method="post">
  Потребителско име<br>
  <input type="text" name="firstname"><br>
  Парола<br>
    <input type="text" name="surname"><br>
<br>
   <input type="submit" name="Давай" value="Вход"><br>
   </div>
</div>
</div>







</body>


</html>