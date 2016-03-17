<?php

// Load the XML source
$xml = new DOMDocument;
$xml->load('fincas.xml');

$xsl = new DOMDocument;
$xsl->load('propiedad.xslt');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->setParameter ( '' , 'code' , '1' );
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

?>