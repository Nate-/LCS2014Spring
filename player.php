<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>

<title>LoL LCS Stats</title>
<link rel="shortcut icon" href="http://132.160.49.98/Ulukau.org/lolimgs/favicon.ico">

    <!-- --------------------------------------------------------------------------- -->
    <!--                                 META DATA                                   -->
    <!-- --------------------------------------------------------------------------- -->
    <meta name='keywords' content='League of Legends, LoL, LCS, Tournament'>
    <meta name='description' content='CS421 League of Legends '>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
    <meta name='robots' content='index, follow'>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- --------------------------------------------------------------------------- -->
    <!--                                   CSS                                       -->
    <!-- --------------------------------------------------------------------------- -->    
    <link rel="stylesheet" type="text/css" href="css/boilerplate.css">
    <link rel="stylesheet" type="text/css" href="css/fluidlayout.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/grid.css">

    <!-- --------------------------------------------------------------------------- -->
    <!--                                 SCRIPTS                                     -->
    <!-- --------------------------------------------------------------------------- -->
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<script src="javascript/respond.min.js"></script>
</head>

<body>

    <div class="gridContainer clearfix">
      <div id="LayoutDiv1">
        <div class="logo">
		<a href="index.php">
        <img src="http://132.160.49.98/Ulukau.org/lolimgs/logo2.png" alt="LoL LCS logo">
		</a>
        </div>
      </div>
      
      <div id="LayoutDiv1">
		<?php
		$mysql_host = "mysql12.000webhost.com";
		$mysql_database = "a6462472_lol";
		$mysql_user = "a6462472_lol";
		$mysql_password = "abc123";

		// Create connection
		$con=mysqli_connect($mysql_host,$mysql_user,$mysql_password,$mysql_database);

		// Check connection
		if (mysqli_connect_errno()) {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		}

		$options = mysqli_query($con, "SELECT Name FROM a6462472_lol.p1");
		echo '<div class="searchWrapper">';
		echo '<form method="post" action="'.htmlentities($_SERVER['PHP_SELF']).'">';
		echo '<select name="playerName">';
		while ($row = mysqli_fetch_array($options)){
			echo '<option value="' . $row['Name'] . '">' . $row['Name'] . '</option>';
		}
		echo '</select>';
		echo '<input type="submit" value="Search" name="submit">';
		echo '</form>';
		echo '</div>';

		echo '<div class="results">';
		if(isset($_POST['submit'])){
			echo '<h1> Results For ' . $_POST['playerName'] . ':</h1><br>';
			$result = mysqli_query($con,
				"select Week, Day, ChampionName, Kills, Deaths, Assists, Creepscore
				from a6462472_lol.s2, (select * from a6462472_lol.c1 union all select * from a6462472_lol.c2) as COMBINED
				where Name='Aphromoo' and a6462472_lol.s2.matchID=COMBINED.matchID");

			echo '<table>';
			echo '<tr class="categories"><td>Week</td><td>Day</td><td>Champion</td><td>Kills</td><td>Deaths</td><td>Assists</td><td>CS</td></tr>';
			while($row = mysqli_fetch_array($result)) {
				echo '<tr>';
				echo '<td>' . $row['Week'] . '</td>';
				echo '<td>' . $row['Day'] .  '</td>';
				echo '<td>' . $row['ChampionName'] . '</td>';
				echo '<td>' . $row['Kills'] . '</td>';
				echo '<td>' . $row['Deaths'] . '</td>';
				echo '<td>' . $row['Assists'] . '</td>';
				echo '<td>' . $row['Creepscore']. '</td>';
				echo '</tr>';
		}
		echo '</table>';
		echo '</div>';
		}
		mysqli_close($con);			
		?>

      </div>
    </div>


</body>
</html>
