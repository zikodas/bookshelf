<?php 
session_start();
if(!(isset($_SESSION['pwd']))){
header("location:espaceAdmin.php");
}?>


<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8"/>
<title>Mon Premier site WEB</title>
<link href="style1.css" rel="stylesheet" type="text/css">
<style>
.sect              { background:url(images/guache.jpg) repeat;}
.sect h4           { text-align:center; font:bold; font-size:24px; background:#00FFCC;}
.lien{ background:#FF0000;border-radius:11px; padding:5px 5px; text-decoration:none; margin-top:15px; margin-left:15px }
.lien:hover{ background:#FF0000;border-radius:11px; padding:7px 2px; text-decoration:none;   }
 </style>
</head>

<body>


<?php include("header.php"); ?>




<section id="section" class="sect" >

<h4> Les Livres Disponible </h4>


<?php 

echo '<table border="1" width="95%" align="center">';
echo '<tr> <td> cote </td><td> titre</td> <td> auteurs</td>  <td > domaine </td> </tr> ';

$db = new PDO('mysql:host=localhost;dbname=bibliotheque;charset=utf8mb4', 'root', '');

$stmt = $db->query('select * from livre ');
 
while($repons = $stmt->fetch(PDO::FETCH_ASSOC)) {
echo '<tr> ';
$id=$repons['id_livre'];
echo '<td>'.$repons['cote'].' </td>'; 
echo ' <td>'.$repons['titre'].' </td>';
echo ' <td>'.$repons['auteurs'].' </td>';
echo ' <td> '.$repons['domaine'].'</td>';
echo '</tr> ';
}

echo '</table>';

//mysql_close($db);
?>


</section>




<?php include("aside_admin.php"); ?>

<?php include("footer.php"); ?>


</body>
</html>
