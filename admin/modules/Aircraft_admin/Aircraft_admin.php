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

class Aircraft_admin extends CodonModule
{
    public function HTMLHead()
    {
        $this->set('sidebar', 'aircraft/sidebar_aircraft.tpl');
    }

    public function NavBar()
    {
        echo '<li><a href="'.SITE_URL.'/admin/index.php/Aircraft_admin">Aircraft</a></li>';
    }

    public function index()
    {
        if($this->post->action == 'save_new_fleet')
        {
            $this->save_new_fleet();
        }
        elseif($this->post->action == 'save_edit_fleet')
        {
            $this->save_edit_fleet();
        }
        else
        {
            $this->set('aircrafts', AircraftData::get_aircraft());
			$this->set('history', AircraftData::get_past_fleet());
            $this->show('aircraft/aircraft_index.tpl');
        }
    }
    public function get_aircrafts()
    {
        $id = $_GET[id];
        $this->set('aircrafts', AircraftData::get_aircrafts($id));
        
        $this->show('aircraft/aircrafts_aircraft.tpl');
    }
    public function new_aircraft()
    {
        $this->show('aircraft/aircraft_new_form.tpl');
    }
    protected function save_new_fleet()
    {
        $ac = array();

        $ac['aircraft'] = DB::escape($this->post->aircraft);
		$ac['airline'] = DB::escape($this->post->airline);
		$ac['aircraftid'] = DB::escape($this->post->aircraftid);
		$ac['image'] = DB::escape($this->post->image);

  

   /*     foreach($ac as $test)
        {
            if(empty($test))
            {
                $this->set('aircrafts', $ac);
                $this->show('aircraft/aircraft_new_form.tpl');
                return;
            }
        }*/

 

        AircraftData::save_new_fleet($ac['aircraft'], $ac['airline'], $ac['aircraftid'], $ac['image']);
                                   

       

        $this->set('aircrafts', AircraftData::get_aircraft());
       
        $this->show('aircraft/aircraft_index.tpl');
    }
    public function edit_aircraft() {
            $id = $_GET[id];
            $aircraft = array();
            //$aircraft = AircraftData::get_aircrafts($id);
            $this->set('aircrafts', AircraftData::get_aircrafts($id));
            $this->show('aircraft/aircraft_edit_form.tpl');
    }
    protected function save_edit_fleet()
    {
        $acs= array();

        $acs['aircraft'] = DB::escape($this->post->aircraft);
        $acs['airline'] = DB::escape($this->post->airline);
		$acs['aircraftid'] = DB::escape($this->post->aircraftid);
		$acs['image'] = DB::escape($this->post->image);
		$acs['id'] = DB::escape($this->post->id);
     

        AircraftData::save_edit_fleet($acs['aircraft'], 
										   $acs['airline'], 
										   $acs['aircraftid'],
										   $acs['image'],
										   $acs['id']);

        $id = $acs['id'];
        $this->set('aircrafts', AircraftData::get_aircrafts($id));
        
        $this->show('aircraft/aircrafts_aircraft.tpl');
    }
 
    public function delete_fleet()
    {
        $id = $_GET[id];
        AircraftData::delete_fleet($id);

        $this->set('aircraft', AircraftData::get_aircraft());
        $this->show('aircraft/aircraft_index.tpl');
    }
}