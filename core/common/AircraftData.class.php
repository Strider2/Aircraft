<?php
/**
Module Created By Strider

This module is only used for phpVMS (www.phpvms.net) - (A Virtual Airline Admin Software)

@Created By Strider
@Copyrighted @ 2013
@Under CC 3.0
@http://creativecommons.org/licenses/by-nc-sa/3.0/

// Version 1.0 (November 1.13) - Module Created
**/
class AircraftData extends CodonData
{
    public function get_aircraft()
    {
        return DB::get_results("SELECT * FROM ".TABLE_PREFIX."fleet");
		
    }
 	public function getAircraft($aircraftid)
    {
		
        $query = "SELECT a.*, f.image
   				  FROM " . TABLE_PREFIX ."aircraft a
    			  LEFT JOIN ".TABLE_PREFIX."fleet f ON a.id=f.aircraftid
				  WHERE a.id ='$aircraftid'";

        return DB::get_row($query);
    }
    /*public function get_aircrafts($airline)
    {
        $query = "SELECT * FROM phpvms_fleet WHERE airline='$airline'";

        return DB::get_row($query);
    }*/
	    public function get_aircrafts($id)
    {
        $query = "SELECT * FROM phpvms_fleet WHERE id='$id'";

        return DB::get_row($query);
    }
   public function get_past_fleet()
    {
        $query = "SELECT * FROM phpvms_fleet
                ORDER BY id DESC";

        return DB::get_results($query);
    }
    public function save_new_fleet($aircraft, $airline, $aircraftid, $image)
    {
        $query = "INSERT INTO phpvms_fleet (aircraft, airline, aircraftid, image)
                VALUES ('$aircraft', '$airline', '$aircraftid', '$image')";

        DB::query($query);
    }
     public function save_edit_fleet($aircraft, $airline, $aircraftid, $image, $id)
    {
        $query = "UPDATE phpvms_fleet SET
         aircraft='$aircraft',
         airline='$airline',
		 aircraftid='$aircraftid',
		 image='$image'
         WHERE id='$id'";

        DB::query($query);
    }
    
    public function delete_fleet($id)
    {
        $query = "DELETE FROM phpvms_fleet
                    WHERE id='$id'";

        DB::query($query);
    }
   
}