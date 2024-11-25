<?php
function AnnéeAct(){

$today = date('Y');
$timestamp = strtotime($today);
$formattedDate = date('Y', $timestamp);
return $formattedDate;
}

?>