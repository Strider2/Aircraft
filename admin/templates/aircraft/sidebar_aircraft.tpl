<h3>Aircraft</h3>
<br />
<center>
<?php
if(PilotGroups::group_has_perm(Auth::$usergroups, EDIT_FLEET))
{
?>
<a href="<?php echo SITE_URL?>/admin/index.php/Aircraft_admin">Aircraft Main</a><br />
<a href="<?php echo SITE_URL?>/admin/index.php/Aircraft_admin/new_aircraft">Add new Aircraft</a><br />
<?php
}
?>
</center>
<br />