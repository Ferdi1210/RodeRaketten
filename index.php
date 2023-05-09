<?php  
	if(!isset($_GET['module'])) {
		$_GET['module'] = 'home';
	}

	if(file_exists('functions.php')) {
		include('functions.php');
	}

	$createSql = "
CREATE TABLE IF NOT EXISTS teams(
    id INT(6) NOT NULL AUTO_INCREMENT,
    team varchar(5),
    firstname varchar(255),
    lastname varchar(255),
    age int(2),
    PRIMARY KEY (id)
);";
	otherQuery($createSql);

	$createSql = "
CREATE TABLE IF NOT EXISTS contact(
    id INT(6) NOT NULL AUTO_INCREMENT,
    firstname varchar(255),
    lastname varchar(255),
    email varchar(255),
    reason varchar(255),
    subject varchar(800),
    PRIMARY KEY (id)
);";

	otherQuery($createSql);

	$sHtml = '';
	//echo include($sPath);
	//var_dump($_GET);

	//Met deze regel ga ik kijken of er een module is ingesteld
	if(!empty($_GET['module']))	{
	  $sPath = __DIR__ . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . $_GET['module'] . DIRECTORY_SEPARATOR . 'index.php';

		//Module inladen
		if(file_exists($sPath))	{

			// $sHtml .= 'file exists!';  
			$sHtml .= include($sPath);

		}
		else {
			$sHtml .= 'error, no module found!';
		}

		//print_r($sPath);
	}
	else
	{
		$sHtml .='error, no module found!';
	}

	$sNavibar = include('navibar.php');
	
?>
<!DOCTYPE html>

<html>
  <head>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
  <?php echo $sNavibar; ?>
  
  <div class="inhoud">
    <div><?php echo $sHtml; ?></div>
  </div>

  <div class="footer">
      <p>Footer</p>
      <a href="<?= ROOTURL; ?>?module=home">Home</a> 
      <a href="<?= ROOTURL; ?>?module=contact">Contact</a>
      <a href="<?= ROOTURL; ?>?module=teams">Teams</a>
  </div>

  </body>
</html>

