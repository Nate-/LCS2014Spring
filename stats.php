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
		
		echo '<div class="searchWrapper">';
		echo '<form method="post" action="'.htmlentities($_SERVER['PHP_SELF']).'">';
		echo '<select name="scope">';
		echo '<option value="T"> Within Tournament </option>';
		echo '<option value="M"> Within A Match </option>';
		echo '</select>';
		echo '<input type="submit" value="Search" name="submit">';
		echo '</form>';
		echo '</div>';

		echo '<div class="results">';
		if(isset($_POST['submit'])){
			if ($_POST['scope'] == 'T'){
				echo '<h1> Within Tournament:</h1><br>';
				echo '<h2> Most Kills </h2><br>';
				$result = mysqli_query($con,
					"select Name, SUM(Kills) as Kills
					from (select * from c1 union all select * from c2) as COMBINED
					group by Name
					order by Kills desc
					limit 3
					");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>Kills</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['Kills'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';
				
				echo '<h2> Most Deaths </h2><br>';
				$result = mysqli_query($con,
					"select Name, SUM(Deaths) as Deaths
					from (select * from c1 union all select * from c2) as COMBINED
					group by Name
					order by Deaths desc
					limit 3
					");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>Deaths</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['Deaths'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';

				echo '<h2> Most Assists </h2><br>';
				$result = mysqli_query($con,
					"select Name, SUM(Assists) as Assists
					from (select * from c1 union all select * from c2) as COMBINED
					group by Name
					order by Assists desc
					limit 3
					");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>Assists</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['Assists'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';
				
				echo '<h2> Highest Creepscore </h2><br>';
				$result = mysqli_query($con,
					"select Name, SUM(Creepscore) as CS
					from (select * from c1 union all select * from c2) as COMBINED
					group by Name
					order by CS desc
					limit 3
					");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>CS</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['CS'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';
			}
			else{
		
				echo '<h1> Within A Single Match:</h1><br>';
				echo '<h2> Most Kills </h2><br>';
				$result = mysqli_query($con,
					"select Name, Kills, Week, Day
					from s2, (select * from c1 union all select * from c2) as COMBINED
					where COMBINED.matchID = s2.MatchID
					order by Kills desc
					limit 3");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>Kills</td><td>Week</td><td>Day</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['Kills'] .  '</td>';
					echo '<td>' . $row['Week'] .  '</td>';
					echo '<td>' . $row['Day'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';
				
				echo '<h2> Most Deaths </h2><br>';
				$result = mysqli_query($con,
					"select Name, Deaths, Week, Day
					from s2, (select * from c1 union all select * from c2) as COMBINED
					where COMBINED.matchID = s2.MatchID
					order by Deaths desc
					limit 3");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>Deaths</td><td>Week</td><td>Day</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['Deaths'] .  '</td>';
					echo '<td>' . $row['Week'] .  '</td>';
					echo '<td>' . $row['Day'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';

				echo '<h2> Most Assists </h2><br>';
				$result = mysqli_query($con,
					"select Name, Assists, Week, Day
					from s2, (select * from c1 union all select * from c2) as COMBINED
					where COMBINED.matchID = s2.MatchID
					order by Assists desc
					limit 3");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>Assists</td><td>Week</td><td>Day</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['Assists'] .  '</td>';
					echo '<td>' . $row['Week'] .  '</td>';
					echo '<td>' . $row['Day'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';
				
				echo '<h2> Highest Creepscore </h2><br>';
				$result = mysqli_query($con,
					"select Name, Creepscore as CS, Week, Day
					from s2, (select * from c1 union all select * from c2) as COMBINED
					where COMBINED.matchID = s2.MatchID
					order by CS desc
					limit 3");
				echo '<table>';
				echo '<tr class="categories"><td>Name</td><td>CS</td><td>Week</td><td>Day</td></tr>';
				while($row = mysqli_fetch_array($result)) {
					echo '<tr>';
					echo '<td>' . $row['Name'] . '</td>';
					echo '<td>' . $row['CS'] .  '</td>';
					echo '<td>' . $row['Week'] .  '</td>';
					echo '<td>' . $row['Day'] .  '</td>';
					echo '</tr>';
					}
				echo '</table>';		
		
			}		
		}
		echo '</div>';
		mysqli_close($con);			
		?>
		
      </div>
    </div>


</body>
</html>
