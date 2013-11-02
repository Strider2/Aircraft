<?php

$this->show('aircraft/aircraft_header.tpl');
echo '<h4>Aircraft:'.$aircrafts->aircraft.'</h4><hr />';



echo 'Airline: <b>'.$aircrafts->airline.'</b><hr />';

echo '</b><hr />';
echo '<a href="'.SITE_URL.'/admin/index.php/Aircraft_admin/edit_aircraft?id='.$aircrafts->id.'"><b>Edit Aircraft</b></a><br /><hr />';
echo '<a href="'.SITE_URL.'/admin/index.php/Aircraft_admin/delete_fleet?id='.$aircrafts->id.'"><b>Delete Aircraft</b></a> - This will delete the Aircraft from the database permanently!<br /><hr />';
?>