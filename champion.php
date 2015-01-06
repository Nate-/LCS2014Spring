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
		
		
		echo '<div class="results">';
		echo '<h1> Top Played Champions </h1><br>';
		echo '<h2> AD Carry </h2><br>';
		$result = mysqli_query($con,
			"select ChampionName, count(ChampionName) as Times_Played
			from (select * from c1 union all select * from c2) as COMBINED
			where Name in
				(select Name
				from p1
				where Role = 'AD')
			group by ChampionName
			order by Times_Played desc
			limit 3");
		echo '<table>';
		echo '<tr class="categories"><td>Champion</td><td>Times Played</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['ChampionName'] . '</td>';
			echo '<td>' . $row['Times_Played'] .  '</td>';
			echo '</tr>';
			}
		echo '</table>';
		
		echo '<br><h2> Jungler </h2><br>';
		$result = mysqli_query($con,
			"select ChampionName, count(ChampionName) as Times_Played
			from (select * from c1 union all select * from c2) as COMBINED
			where Name in
				(select Name
				from p1
				where Role = 'Jungle')
			group by ChampionName
			order by Times_Played desc
			limit 3");
		echo '<table>';
		echo '<tr class="categories"><td>Champion</td><td>Times Played</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['ChampionName'] . '</td>';
			echo '<td>' . $row['Times_Played'] .  '</td>';
			echo '</tr>';
			}
		echo '</table>';
	
	
		echo '<br><h2> Mid </h2><br>';
		$result = mysqli_query($con,
			"select ChampionName, count(ChampionName) as Times_Played
			from (select * from c1 union all select * from c2) as COMBINED
			where Name in
				(select Name
				from p1
				where Role = 'Mid')
			group by ChampionName
			order by Times_Played desc
			limit 3");
		echo '<table>';
		echo '<tr class="categories"><td>Champion</td><td>Times Played</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['ChampionName'] . '</td>';
			echo '<td>' . $row['Times_Played'] .  '</td>';
			echo '</tr>';
			}
		echo '</table>';


		echo '<br><h2> Support </h2><br>';
		$result = mysqli_query($con,
			"select ChampionName, count(ChampionName) as Times_Played
			from (select * from c1 union all select * from c2) as COMBINED
			where Name in
				(select Name
				from p1
				where Role = 'Support')
			group by ChampionName
			order by Times_Played desc
			limit 3");
		echo '<table>';
		echo '<tr class="categories"><td>Champion</td><td>Times Played</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['ChampionName'] . '</td>';
			echo '<td>' . $row['Times_Played'] .  '</td>';
			echo '</tr>';
			}
		echo '</table>';
		


		echo '<br><h2> Top </h2><br>';
		$result = mysqli_query($con,
			"select ChampionName, count(ChampionName) as Times_Played
			from (select * from c1 union all select * from c2) as COMBINED
			where Name in
				(select Name
				from p1
				where Role = 'Top')
			group by ChampionName
			order by Times_Played desc
			limit 3");
		echo '<table>';
		echo '<tr class="categories"><td>Champion</td><td>Times Played</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['ChampionName'] . '</td>';
			echo '<td>' . $row['Times_Played'] .  '</td>';
			echo '</tr>';
			}
		echo '</table>';
		echo '</div>';
		mysqli_close($con);			
		?>

      </div>
    </div>


</body>
</html>
