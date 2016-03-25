<?php
	$xml = new DOMDocument;
	$xml->load('../XML/fincas.xml');
	$xsl = new DOMDocument;
	$xsl->load('../fincas.xslt');
	$proc = new XSLTProcessor;
	$proc->importStyleSheet($xsl);
	echo $proc->transformToXML($xml);
?>