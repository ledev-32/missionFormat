<?php
function dateDuJour(){

$today = date('d-m-Y');
$timestamp = strtotime($today);
$formattedDate = date('l, F j, Y', $timestamp);
return $formattedDate;
}

?>