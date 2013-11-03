
<p><?php if(!$aircrafts->image){
echo '<span class="label label-error">No Image Available.</span>';
}
else
{?>
<img src="<?php echo SITE_URL?>/lib/images/aircraft/<?php echo $aircrafts->image;?>" alt="<?php echo $aircrafts->name;?>"/>
<?php }?></p>
<table class="tablesorter">
<tr>
<td>Aircraft:</td><td> <?php echo $aircrafts->fullname;?></td>
<td>Registration:</td><td> <?php echo $aircrafts->registration;?></td>
</tr>
<tr>
<td>Weight:</td><td><?php echo $aircrafts->weight;?></td>
<td>Range:</td><td><?php echo $aircrafts->range;?>nm</td>
</tr>
<tr>
<td>Cruis:</td><td><?php echo $aircrafts->cruise;?>ft</td>
<?php if($aircrafts->maxpax =="0")
{
?>
<td>Cargo:</td><td><?php echo $aircrafts->maxcargo;?>lbs</td>
</tr>
<?php
}
else{?>
<td>Passengers:</td><td><?php echo $aircrafts->maxpax;?></td>
</tr>
<?php if($aircrafts->maxcargo == "0"){

}
else
{?>
<tr>
<td>Cargo:</td><td><?php echo $aircrafts->maxcargo;?>lbs</td>
</tr>
<?php
}
}?>
</table>
	
 <a href="<?php echo SITE_URL?>/index.php/Aircraft/CodeshareAircraft">Go Back</a>   <br/>
 <p>&copy; Strider Aircraft V1.1</p>
 