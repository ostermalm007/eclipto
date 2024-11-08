<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MacAddressController extends Controller
{
    public function getMacAdress()
    {
    	// Turn on output buffering
		ob_start();

		//Get the ipconfig details using system commond
		system('ipconfig /all');

		// Capture the output into a variable
		$mycom=ob_get_contents();

		// Clean (erase) the output buffer
		ob_clean();

		$findme = "Physical";

		//Search the "Physical" | Find the position of Physical text
		$pmac = strpos($mycom, $findme);

		// Get Physical Address
		$mac=substr($mycom,($pmac+36),17);

		//Display Mac Address
		return $mac;
    }
}
