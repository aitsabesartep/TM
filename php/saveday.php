<?php
    $fincas = simplexml_load_file("../xml/fincas.xml");
    $finca = $fincas->finca[3]->calendario->addChild('registre');
    $finca->addChild('dia', '3');
    $finca->addChild('mes', '3');
    $finca->addChild('any', '3');
    $finca->addChild('ndias', '3');
    $dom = new DOMDocument('1.0');
    $dom->preserveWhiteSpace = false;
    $dom->formatOutput = true;
    $dom->loadXML($fincas->asXML());
    $dom->saveXML();
    $dom->save('../xml/fincas.xml');
?>
