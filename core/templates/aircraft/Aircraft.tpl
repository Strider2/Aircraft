<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
<script type="text/javascript">
// perform JavaScript after the document is scriptable.
$(function() {
    // setup ul.tabs to work as tabs for each div directly under div.panes
    $("ul.tabs").tabs("div.panes > div");
});</script>

<!--<style type="text/css">
.navs {
  list-style:none;
  margin-bottom:20px;
  margin-left:0;
}
.navs > li > a {
  display:block;
}
.navs > li > a:hover {
  background-color:#EEEEEE;
  text-decoration:none;
}
.navs > .pull-right {
  float:right;
}
.nav-tabs, .nav-pills {
}
.nav-tabs::before, .nav-pills::before, .nav-tabs::after, .nav-pills::after {
  content:'';
  display:table;
  line-height:0;
}
.nav-tabs::after, .nav-pills::after {
  clear:both;
}
.nav-tabs > li, .nav-pills > li {
  float:left;
}
.nav-tabs > li > a, .nav-pills > li > a {
  line-height:14px;
  margin-right:2px;
  padding-left:12px;
  padding-right:12px;
}
.nav-tabs {
  border-bottom-color:#DDDDDD;
  border-bottom-style:solid;
  border-bottom-width:1px;
}
.nav-tabs > li {
  margin-bottom:-1px;
}
.nav-tabs > li > a {
  border:1px solid transparent;
  border-bottom-left-radius:0;
  border-bottom-right-radius:0;
  border-top-left-radius:4px;
  border-top-right-radius:4px;
  line-height:20px;
  padding-bottom:8px;
  padding-top:8px;
}
.nav-tabs > li > a:hover {
  border-color:#EEEEEE #EEEEEE #DDDDDD;
}
.nav-tabs > .active > a, .nav-tabs > .active > a:hover {
  background-color:#FFFFFF;
  border-color:#DDDDDD #DDDDDD transparent;
  border-style:solid;
  border-width:1px;
  color:#555555;
  cursor:default;
}
</style>-->
<h3>Aircraft break Down</h3>
<p>The following shows a break down of the fleet in MVA. All aircraft are listed under each airline under the MVA banner</p>
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