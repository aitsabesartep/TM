<?php

	$file = simplexml_load_file("fincas.xml");

	$finca = $file->finca[0];//Fer condicio

	$calendari = $finca->calendario;

	//$registro = $file->createElement('test', 'This is the root element!');

	$registre = new SimpleXMLElement('<registre></registre>');

	$registre->addChild('dia', '8');
	$registre->addChild('mes', '7');
	$registre->addChild('any', '2016');
	$registre->addChild('ndias', '3');

	$calendari->addChild('<calendari></calendari>',$registre);

	// Display the new XML code
	$file->asXml('fincas.xml');
?>