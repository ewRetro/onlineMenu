<html>
<head>
<meta charset=utf-8>
    <title>Valhalla - Menu</title>
    <link rel="stylesheet" href="menu.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<?php
// Connect to database
include('database.php');

$action = "";
if(isset($_GET['action'])){		$action=htmlspecialchars($_GET['action']); } else { $action="noaction"; }

?>

<body>

    <div class="topPage">
        <h1>🍻 Valhalla 🍻</h1>
		<h3>Online мени</h3>
	</div>
	<div class="selection">
		<a href="menu.php?action=showHA">Highly Alcoholic Drinks</a>
		<a href="menu.php?action=showNA">Non-Alcoholic Drinks</a>
		<a href="menu.php?action=showBeer">Beer</a>
		<a href="menu.php?action=showSaS">Shots and Shakers</a>
		<a href="menu.php?action=showC">Cocktails</a>
	</div>

<header>

	<div class="bcgMenu">
		<a href="#" class="menuBtn">
			CATEGORIES
		</a>
	</div>

	<div class="close">
		<a href="#" class="closeBtn">CLOSE</a>
	</div>
    <nav class="mainMenu">
		<ul>
            <li>
				<a href="menu.php?action=showHA">Highly Alcoholic Drinks</a>
            </li>
            <li>
				<a href="menu.php?action=showNA">Non-Alcoholic Drinks</a>
            </li>
            <li>
            	<a href="menu.php?action=showBeer">Beer</a>
            </li>
            <li>
				<a href="menu.php?action=showSaS">Shots and Shakers</a>
            </li>
			<li>
				<a href="menu.php?action=showC">Cocktails</a>
            </li>
		</ul>		
    </nav>
</header>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script>
			$(document).ready(function(){
			// menu click event
			/*$('.menuBtn').click(function() {
				$(this).toggleClass('act');
					if($(this).hasClass('act')) {
						$('.mainMenu').addClass('act');
						$('.close').addClass('act');
						$('.closeBtn').addClass('act');
					}
			});

			$('.closeBtn').click(function() {
				$(this).toggleClass('act');
					if($(this).hasClass('act')) {
					
					}
					else {
						$('.mainMenu').removeClass('act');
					}
			});*/
			$('.menuBtn').click(function() {
				$('.mainMenu').addClass('act');
				$('.close').addClass('act');
				$('.closeBtn').addClass('act');

			});

			$('.closeBtn').click(function() {
				$('.mainMenu').removeClass('act');
				$('.close').removeClass('act');
			});
			


		});
		</script>
	
		
<?php
$cat = "Beer";

if($action=="showHA"){
	$cat = "Highly Alcoholic Drinks";
}


if($action=="showNA"){
	$cat = "Non-Alcoholic Drinks";
}

if($action=="showBeer"){
	$cat = "Beer";
}

if($action=="showSaS"){
	$cat = "Shots and Shakers";
}

if($action=="showC"){
	$cat = "Cocktails";
}

$currency = "MKD";
if(!$getStuff=mysqli_query($con, "SELECT * FROM drinks WHERE category='{$cat}' ORDER BY drinkGroup ASC")){
	echo mysqli_query($con);
} else {
	$lastDrinkGroup="";
	$bgc="#7f8d8d";
	while($foo=mysqli_fetch_array($getStuff)){
		if($bgc=="#1c1d1d"){
			$bgc="#1c1d1d";
		} else {
			$bgc="#1c1d1d";
		}
		$itemID		= $foo['menuItemID'];
		$itemName	= $foo['name'];
		$itemSize	= $foo['size'];
		$itemCost	= $foo['cost'];
		$itemGroup	= $foo['drinkGroup'];
		if($itemGroup!=$lastDrinkGroup){
			$lastDrinkGroup=$itemGroup;
			echo "<br style=\"clear: both;\" /><p class= \"itemGroup\"> " . $itemGroup . "</p>"; // ITEM GROUP
			echo "<p class = \"drinkName\">NAME</p> <p class=\"drinkSize\">SIZE(ml)</p> <p class = \"drinkCost\">COST</p>"; // SPECS
			echo "<hr style=\"border: 1px solid goldenrod; width: 99.5%;\">";  // LINE
		}


		?>
        <p class = "drinkName"><?php echo $itemName; ?></p> <p class = "drinkSize"><?php echo $itemSize; ?></p> <p class = "drinkCost"><?php echo $itemCost . ' ' . $currency;?></p>

        <?php
	}

}


?>


</body>
</html>