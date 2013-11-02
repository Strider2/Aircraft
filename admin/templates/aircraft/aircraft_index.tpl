<?php
$this->show('aircraft/aircraft_header.tpl');

echo 'Click On Aircraft For Details/Editing<hr />';

echo '<h4>Aircraft</h4><hr />';
    if(!$aircrafts)
    {
     echo 'No Aircraft found';
       
    }
    else
    {
  		echo '<table width="100%">';
    echo '<tr><td width="30%"><u>Schedule ID</u></td><td width="60%"><u>Airline</u></td></tr>';

    foreach($aircrafts as $ac)
    {
        echo '<tr><td><a href="'.SITE_URL.'/admin/index.php/Aircraft_admin/get_aircrafts?id='.$ac->id.'">'.$ac->aircraft.'</a></td>';
        echo '<td>'.$ac->airline.'</td></tr>';
    }
    
    echo '</table>';
       
    }

?>