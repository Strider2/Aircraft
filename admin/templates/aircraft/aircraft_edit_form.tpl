<?php


$this->show('aircraft/aircraft_header.tpl');
?>


<h4>Edit Codeshare</h4>
<hr />
<form name="eventform" action="<?php echo SITE_URL; ?>/admin/index.php/Aircraft_admin" method="post" enctype="multipart/form-data">
<table width="80%">
        
            <tr>
                <td>Aircraft</td>
                <td><input type="text" name="aircraft"
                           <?php echo 'value="'.$aircrafts->aircraft.'"'; ?>
                           ></td>
            </tr>
            <tr>
                <td>Airline</td>
                <td><input type="text" maxlength="3" name="airline"
                           <?php echo 'value="'.$aircrafts->airline.'"'; ?>
                           ></td>
            </tr>
            <tr>
                <td>Aircraft ID</td>
                <td><input type="text" maxlength="3" name="aircraftid"
                           <?php echo 'value="'.$aircrafts->aircraftid.'"'; ?>
                           ></td>
            </tr>
            <tr>
                <td>Image</td>
                <td><input type="text" name="image"
                           <?php echo 'value="'.$aircrafts->image.'"'; ?>
                           ></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="hidden" name="id" value="<?php echo $aircrafts->id; ?>" />
                    <input type="hidden" name="action" value="save_edit_fleet" />
                    <input type="submit" value="Edit Aircraft"></td>
            </tr>
   
    </table>     </form>