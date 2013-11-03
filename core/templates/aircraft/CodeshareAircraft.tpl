<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
<script type="text/javascript">
// perform JavaScript after the document is scriptable.
$(function() {
    // setup ul.tabs to work as tabs for each div directly under div.panes
    $("ul.tabs").tabs("div.panes > div");
});</script>


<h3>Aircraft break Down</h3>
<p>Place your own text here.</p>
<p><a href="<?php echo SITE_URL?>/index.php/Aircraft">Aircraft</a></p>
<?php
if(!$aircrafts)
    {
    	echo '<span style="color:red;">No aircraft in your database</span>';
    }
    else {?>
    <ul class="tabs">
	<li><a href="#">Tab 1</a></li>
	<li><a href="#">Tab 2</a></li>
	<li><a href="#">Tab 3</a></li>
</ul>
 
<!-- tab "panes" -->
<div class="panes">
	<div><table class="tablesorter">
            	<tr>
                	<th>Aircraft</th>
                    <th>Image</th>
                    <th>View</th>
                </tr>
               	<?php 
                foreach($aircrafts as $aircraft)
				{
                if($aircraft->airline == "MH")
                {
                ?>
                <tr>
                <td><?php echo $aircraft->aircraft;?></td>
                <td>
                <?php if(!$aircraft->image){
                echo "No Image Available.";
                }
                else
                {?>
                <img src="<?php echo SITE_URL?>/lib/images/aircraft/thumbs/<?php echo $aircraft->image;?>" alt="<?php echo $aircraft->airline;?>"/><?php }?></td>
                <td><a href="<?php echo SITE_URL?>/index.php/Aircraft/Aircraftview/<?php echo $aircraft->aircraftid;?>"><span class="btn">View more</span></a></td>
                </tr>
                <?php
                }
                }
                ?>
                </table></div>
	<div><table class="tablesorter">
            	<tr>
                	<th>Aircraft</th>
                    <th>Image</th>
                    <th>View</th>
                </tr>
               	<?php 
                foreach($aircrafts as $aircraft)
				{
                if($aircraft->airline == "MH")
                {
                ?>
                <tr>
                <td><?php echo $aircraft->aircraft;?></td>
                <td>
                <?php if(!$aircraft->image){
                echo "No Image Available.";
                }
                else
                {?>
                <img src="<?php echo SITE_URL?>/lib/images/aircraft/<?php echo $aircraft->image;?>" alt="<?php echo $aircraft->airline;?>"/><?php }?></td>
                <td><a href="<?php echo SITE_URL?>/index.php/Aircraft/Aircraftview/<?php echo $aircraft->aircraftid;?>"><span class="btn">View more</span></a></td>
                </tr>
                <?php
                }
                }
                ?>
                </table></div>
	<div><table class="tablesorter">
            	<tr>
                	<th>Aircraft</th>
                    <th>Image</th>
                    <th>View</th>
                </tr>
               	<?php 
                foreach($aircrafts as $aircraft)
				{
                if($aircraft->airline == "MH")
                {
                ?>
                <tr>
                <td><?php echo $aircraft->aircraft;?></td>
                <td>
                <?php if(!$aircraft->image){
                echo "No Image Available.";
                }
                else
                {?>
                <img src="<?php echo SITE_URL?>/lib/images/aircraft/<?php echo $aircraft->image;?>" alt="<?php echo $aircraft->airline;?>"/><?php }?></td>
                <td><a href="<?php echo SITE_URL?>/index.php/Aircraft/Aircraftview/<?php echo $aircraft->aircraftid;?>"><span class="btn">View more</span></a></td>
                </tr>
                <?php
                }
                }
                ?>
                </table></div>
</div>

<?php
}
?>

<p>&copy; Strider Aircraft V1.0</p>