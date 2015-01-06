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
		echo '<h1> Best KDA </h1><br>';
		echo '<h2> AD Carry </h2><br>';
		$result = mysqli_query($con,
			"select TEMP.Name, Abbrev, max((K+0.5*A)/D) as KDA
			from p1, p2, 
				(select Name, SUM(Kills) as K, SUM(Deaths) as D, SUM(Assists) as A
				from (select * from c1 union all select * from c2) as COMBINED
				group by Name) as TEMP
			where TEMP.Name = p1.Name and p1.Name = p2.Name and Role = 'AD' ;");
		echo '<table>';
		echo '<tr class="categories"><td>Name</td><td>Team</td><td>KDA</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['Name'] . '</td>';
			echo '<td>' . $row['Abbrev'] .  '</td>';
			echo '<td>' . $row['KDA'] . '</td>';
			echo '</tr>';
			}
		echo '</table>';
		
		echo '<br><h2> Jungler </h2><br>';
		$result = mysqli_query($con,
			"select TEMP.Name, Abbrev, max((K+0.5*A)/D) as KDA
			from p1, p2, 
				(select Name, SUM(Kills) as K, SUM(Deaths) as D, SUM(Assists) as A
				from (select * from c1 union all select * from c2) as COMBINED
				group by Name) as TEMP
			where TEMP.Name = p1.Name and p1.Name = p2.Name and Role = 'Jungle' ;");
		echo '<table>';
		echo '<tr class="categories"><td>Name</td><td>Team</td><td>KDA</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['Name'] . '</td>';
			echo '<td>' . $row['Abbrev'] .  '</td>';
			echo '<td>' . $row['KDA'] . '</td>';
			echo '</tr>';
			}
		echo '</table>';
	
	
		echo '<br><h2> Mid </h2><br>';
		$result = mysqli_query($con,
			"select TEMP.Name, Abbrev, max((K+0.5*A)/D) as KDA
			from p1, p2, 
				(select Name, SUM(Kills) as K, SUM(Deaths) as D, SUM(Assists) as A
				from (select * from c1 union all select * from c2) as COMBINED
				group by Name) as TEMP
			where TEMP.Name = p1.Name and p1.Name = p2.Name and Role = 'Mid' ;");
		echo '<table>';
		echo '<tr class="categories"><td>Name</td><td>Team</td><td>KDA</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['Name'] . '</td>';
			echo '<td>' . $row['Abbrev'] .  '</td>';
			echo '<td>' . $row['KDA'] . '</td>';
			echo '</tr>';
			}
		echo '</table>';


		echo '<br><h2> Support </h2><br>';
		$result = mysqli_query($con,
			"select TEMP.Name, Abbrev, max((K+0.5*A)/D) as KDA
			from p1, p2, 
				(select Name, SUM(Kills) as K, SUM(Deaths) as D, SUM(Assists) as A
				from (select * from c1 union all select * from c2) as COMBINED
				group by Name) as TEMP
			where TEMP.Name = p1.Name and p1.Name = p2.Name and Role = 'Support' ;");
		echo '<table>';
		echo '<tr class="categories"><td>Name</td><td>Team</td><td>KDA</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['Name'] . '</td>';
			echo '<td>' . $row['Abbrev'] .  '</td>';
			echo '<td>' . $row['KDA'] . '</td>';
			echo '</tr>';
			}
		echo '</table>';
		


		echo '<br><h2> Top </h2><br>';
		$result = mysqli_query($con,
			"select TEMP.Name, Abbrev, max((K+0.5*A)/D) as KDA
			from p1, p2, 
				(select Name, SUM(Kills) as K, SUM(Deaths) as D, SUM(Assists) as A
				from (select * from c1 union all select * from c2) as COMBINED
				group by Name) as TEMP
			where TEMP.Name = p1.Name and p1.Name = p2.Name and Role = 'Top' ;");
		echo '<table>';
		echo '<tr class="categories"><td>Name</td><td>Team</td><td>KDA</td></tr>';
		while($row = mysqli_fetch_array($result)) {
			echo '<tr>';
			echo '<td>' . $row['Name'] . '</td>';
			echo '<td>' . $row['Abbrev'] .  '</td>';
			echo '<td>' . $row['KDA'] . '</td>';
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
