<?php
/**
Module Created By Strider

This module is only used for phpVMS (www.phpvms.net) - (A Virtual Airline Admin Software)

@Created By Strider
@Copyrighted @ 2013
@Under CC 3.0
@http://creativecommons.org/licenses/by-nc-sa/3.0/

// Version 1.1 (November 3.13) - Module Created
**/
class Aircraft extends CodonModule 
{
	public function index()
	{
		$this->set('aircrafts', AircraftData::get_aircraft());
		$this->render('aircraft/Aircraft.tpl');
	}
	public function aircraftview($aircraftid='')
	{
		$aircrafts = AircraftData::getAircraft($aircraftid);
		$this->set('aircrafts', $aircrafts);
		$this->render('aircraft/Aircraftview.tpl');
	}
	public function codeshareaircraft()
	{
		$this->set('aircrafts', AircraftData::get_aircraft());
		$this->render('aircraft/CodeshareAircraft.tpl');
	}
	public function codeshareaircraftview($aircraftid='')
	{
		$aircrafts = AircraftData::getAircraft($aircraftid);
		$this->set('aircrafts', $aircrafts);
		$this->render('aircraft/CodeshareAircraftView.tpl');
	}
	
}
