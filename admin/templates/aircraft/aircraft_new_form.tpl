<?php

$this->show('aircraft/aircraft_header.tpl');

/*if(isset($aircraft))
{echo '<div id="error">All fields must be filled out</div>'; }*/
?>

<h4>Add an aircraft</h4>
<span style="color:red;">Note: You must have already added the aircraft into your main aircraft table before you can add the aircraft into this module. As you need the id from the aircraft table for it to work.</span>
<table width="80%">
        <form name="eventform" action="<?php echo SITE_URL; ?>/admin/index.php/Aircraft_admin" method="post" enctype="multipart/form-data">
            <tr>
                <td>Aircraft</td>
                <td><input type="text" name="aircraft"
                           <?php
                                if(isset($aircraft))
                                {echo 'value="'.$aircraft['aircraft'].'"';}
                           ?>/>
                           </td>
            </tr>
            <tr>
                <td>Airline</td>
                <td><input type="text" maxlength="3" name="airline"
                           <?php
                                if(isset($aircraft))
                                {echo 'value="'.$aircraft['airline'].'"';}
                           ?>/></td>
            </tr>
                        <tr>
                <td>Aircraft ID</td>
                <td><input type="text" name="aircraftid"
                           <?php
                                if(isset($aircraft))
                                {echo 'value="'.$aircraft['aircraftid'].'"';}
                           ?>/>
                           </td>
            </tr>
            <tr>
                <td>Image</td>
                <td><input type="text" name="image"
                           
                                value="<?php echo $aircraft['image'];?>"
                           >
                           </td>
            </tr>
            <tr>
                <td colspan="2"><input type="hidden" name="action" value="save_new_fleet" /><input type="submit" value="Save New Aircraft"></td>
            </tr>
        </form>
    </table>

