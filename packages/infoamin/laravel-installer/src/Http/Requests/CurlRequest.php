<?php

namespace Infoamin\Installer\Http\Requests;

use Infoamin\Installer\Interfaces\CurlRequestInterface;

class CurlRequest implements CurlRequestInterface {

	public function send($data) {
		return true;
	}
}
