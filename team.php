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

		$selectname = 'Team';
		$attrib = 'Abbrev';
		$options = mysqli_query($con, "select distinct Abbrev from p2 order by Abbrev");
		echo '<div class="searchWrapper">';
		echo '<form method="post" action="'.htmlentities($_SERVER['PHP_SELF']).'">';
		echo '<select name="'.$selectname.'">';
		while ($row = mysqli_fetch_array($options)){
			echo '<option value="' . $row[$attrib] . '">' . $row[$attrib] . '</option>';
		}
		echo '</select>';
		echo '<input type="submit" value="Search" name="submit">';
		echo '</form>';
		echo '</div>';

		echo '<div class="results">';
		if(isset($_POST['submit'])){
			echo '<h1> Results For ' . $_POST[$selectname] . ':</h1><br>';
			
			//Winning Games
			echo '<h2> Winning Games </h2>';
			$result = mysqli_query($con,
				"select Week, Day, Loser as Opponent, GameLength
				from s1, s2
				where s1.matchID = s2.matchID and Winner = '".$_POST[$selectname]."';");

			echo '<table>';
			echo '<tr class="categories"><td>Week</td><td>Day</td><td>Opponent</td><td>Game Length</td></tr>';
			while($row = mysqli_fetch_array($result)) {
				echo '<tr>';
				echo '<td>' . $row['Week'] . '</td>';
				echo '<td>' . $row['Day'] .  '</td>';
				echo '<td>' . $row['Opponent'] . '</td>';
				echo '<td>' . $row['GameLength'] . '</td>';
				echo '</tr>';
			}
			echo '</table>';

			//Losing Games
			echo '<h2> Losing Games </h2>';
			$result = mysqli_query($con,
				"select Week, Day, Winner as Opponent, GameLength
				from s1, s2
				where s1.matchID = s2.matchID and Loser = '".$_POST[$selectname]."';");

			echo '<table>';
			echo '<tr class="categories"><td>Week</td><td>Day</td><td>Opponent</td><td>Game Length</td></tr>';
			while($row = mysqli_fetch_array($result)) {
				echo '<tr>';
				echo '<td>' . $row['Week'] . '</td>';
				echo '<td>' . $row['Day'] .  '</td>';
				echo '<td>' . $row['Opponent'] . '</td>';
				echo '<td>' . $row['GameLength'] . '</td>';
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