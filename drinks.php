<html>
<head>
<meta charset=utf-8>
<title>Butts</title>
<link rel="stylesheet" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<?php

// Connect to database
include('database.php');

// Grab GETs
$action="";
$report="";
if(isset($_GET['action'])){		$action=htmlspecialchars($_GET['action']); } else { $action="noaction"; }
if(isset($_GET['itemID'])){		$itemID=htmlspecialchars($_GET['itemID']); }
if(isset($_GET['itemName'])){	$itemName=htmlspecialchars($_GET['itemName']); }
if(isset($_GET['itemSize'])){	$itemSize=htmlspecialchars($_GET['itemSize']); }
if(isset($_GET['itemCost'])){	$itemCost=htmlspecialchars($_GET['itemCost']); }
if(isset($_GET['itemCat'])){	$itemCat=htmlspecialchars($_GET['itemCat']); }
if(isset($_GET['itemGroup'])){	$itemGroup=htmlspecialchars($_GET['itemGroup']); }

if($action=="addnew"){
	if(!$addDrink=mysqli_query($con, "INSERT INTO 
										drinks 
									  VALUES (NULL, '".$itemName."', '".$itemSize."', '".$itemCost."', '".$itemCat."', '".$itemGroup."');")){
		echo mysqli_error($con);
	} else {
		$report = "✅ Drink Added! (".$itemName.", ".$itemSize.", ".$itemCost.", ".$itemCat.", ".$itemGroup.")";
	}
}

if($action=="savedrink"){
	if(!$saveDrink=mysqli_query($con, "UPDATE drinks SET 
											name = '".$itemName."',
											cost = '".$itemCost."',
											size = '".$itemSize."',
											category = '".$itemCat."',
											drinkGroup = '".$itemGroup."'
										WHERE menuItemID = '".$itemID."';")){
		echo mysqli_error($con);
	} else {
		$report = "✅ Drink Modified! (".$itemName.", ".$itemSize.", ".$itemCost.", ".$itemCat.", ".$itemGroup.")";
	}
}

if($action=="deletedrink"){
	if(!$deletedrink=mysqli_query($con, "DELETE FROM drinks WHERE menuItemID = ".$itemID.";")){
		echo mysqli_error($con);
	} else {
		$report = "✅ Deleted Drink!";
	}
}

?>

	<!-- Report block -->
	<h3>Add Drink</h3>
	<div style="float: left; clear: both; width: 100%; background-color: #1c1d1d; color:#f5deb3;">
		<p>&nbsp; <?php echo $report; ?></p>
	</div>
	<form method="GET" action="drinks.php">
		<input type="hidden" name="action" value="addnew">
		<input type="text" name="itemName" value="Name">
		<input type="text" name="itemCost" value="Cost">
		<input type="text" name="itemSize" value="Size">
		<select name="itemCat">
			<option disabled hidden selected>Choose category</option>
			<option value="Highly Alcoholic Drinks">Highly Alcoholic drinks</option>
			<option value="Non-Alcoholic Drinks">Non-Alcoholic Drinks</option>
			<option value="Beer">Beer</option>
			<option value="Shots and Shakers">Shots and Shakers</option>
			<option value="Cocktails">Cocktails</option>
		</select>
		<input type="text" name="itemGroup" value="Group">
		<input type="submit">
	</form>
	<hr>
<?php
// Show all the drinks in the database
if(!$getlist=mysqli_query($con, "SELECT * FROM drinks ORDER BY category, drinkGroup")){
	echo mysqli_query($con);
} else {
	$drinkcount=0;
	$bgc="#7f8d8d";
	while($foo=mysqli_fetch_array($getlist)){
		$drinkcount+=1;
		if($bgc=="#1c1d1d"){
			$bgc="#1c1d1d";
		} else {
			$bgc="#1c1d1d";
		}
		$itemID		= $foo['menuItemID'];
		$itemName	= $foo['name'];
		$itemSize	= $foo['size'];
		$itemCost	= $foo['cost'];
		$itemCat	= $foo['category'];
		$itemGroup	= $foo['drinkGroup'];
		// Output each line as its own form for editing
		?>
		
		<div style="float: left; clear: both; width: 90%; padding: 1px; background-color: <?php echo $bgc; ?>;">
		<form method="GET" action="drinks.php">
			<input type="hidden" name="action" value="savedrink">
			<input type="hidden" name="itemID" value="<?php echo $itemID; ?>">
			<div style="float: left; width: 2%;"><?php echo $drinkcount; ?></div>
			<div style="float: left; width: 15%;"><input type="text" name="itemName" value="<?php echo $itemName; ?>"></div>
			<div style="float: left; width: 15%;"><input type="text" name="itemCost" value="<?php echo $itemCost; ?>"></div>
			<div style="float: left; width: 15%;"><input type="text" name="itemSize" value="<?php echo $itemSize; ?>"></div>
			<div style="float: left; width: 15%;"> <select name="itemCat" style="width: 90%;">
			<option selected value="<?php echo $itemCat; ?>"><?php echo $itemCat; ?></option>
			<option value="Highly Alcoholic Drinks">Highly Alcoholic Drinks</option>
			<option value="Non-Alcoholic Drinks">Non-Alcoholic Drinks</option>
			<option value="Beer">Beer</option>
			<option value="Shots and Shakers">Shots and Shakers</option>
			<option value="Cocktails">Cocktails</option>
			</select></div>
			<div style="float: left; width: 15%;"><input type="text" name="itemGroup" value="<?php echo $itemGroup; ?>"></div>
			<div style="float: left; width: 5%;"><input type="submit" value="Save"></div>
			<div style="float: left; width: 10%;"><span id="delete<?php echo $itemID; ?>" style="color: #ff0000; text-decoration: underline; cursor: pointer; padding: 10px;" onclick="document.getElementById('confirm<?php echo $itemID; ?>').style.display = 'block'; document.getElementById('delete<?php echo $itemID; ?>').style.display = 'none';">Delete</span>
				<span id="confirm<?php echo $itemID; ?>" style="color: #ff0000; text-decoration: underline; display: none;" ><a href="drinks.php?action=deletedrink&itemID=<?php echo $itemID; ?>">Confirm Delete</a></span>
			</div>
			
		</form>
		</div>
		
		<?php
	}
	
}


?>
</body>
</html>