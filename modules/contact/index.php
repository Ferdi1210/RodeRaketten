<?php
//print_r($_POST);

$sMessage = '';

if(isset($_GET['page'])) {
	  if($_GET['page'] == 'send'){
		otherQuery("INSERT INTO `contact`(`voornaam`, `achternaam`, `email`, `country`, `subject`) VALUES ('".$_POST['Voornaam']."','".$_POST['achternaam']."','".$_POST['email']."','".$_POST['country']."','".$_POST['subject']."');");
		
		$sMessage = '<div>Formulier is succesvol verzonden</div>';
	  }
	}

$sContactHTML = '';
$sContactHTML .= $sMessage;
$sContactHTML .= '
    <h3>Contact Formulier</h3>

    <div class="container">
    <form action="' . ROOTURL . '?module=contact&page=send" method="post">
    <label for="fname">Voornaam</label>
    <input type="text" id="voornaam" name="Voornaam" placeholder="Vul hier uw voornaam in">

    <label for="fname">Achternaam</label>
    <input type="text" id="achternaam" name="achternaam" placeholder="Vul hier uw achternaam in">
    
    <label for="lname">E-Mail</label>
    <input type="text" id="email" name="email" placeholder="Vul hier uw E-Mail in">

      <label for="country">Reden</label>
    <select id="country" name="country">
      <option value="klacht">Aanmelden</option>
      <option value="aanmelden">Klacht</option>
      <option value="feedback">Feedback</option>
    </select>

    <label for="subject">Onderwerp</label>
    <textarea id="subject" name="subject" placeholder="Type hier uw text" style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>';

return($sContactHTML);
?>