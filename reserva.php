<?php

// Load XML file 
$doc = new DOMDocument(); 
$doc->preserveWhiteSpace = false; 
$doc->load( "fincas.xml" ); 
$doc->formatOutput = true; 

// Get the stocklist root element 
$stockListElements = $doc->getElementsByTagName(  "calendario" ); 
$stockList = $stockListElements->item( 0 ); 



// Create a new "item" element and add it to the stocklist 
$item = $doc->createElement( "registre"); 
$stockList->appendChild( $item );

$stockListElements = $doc->getElementsByTagName(  "registre" ); 
$stockList = $stockListElements->item( 0 );

$item = $doc->createElement( "dia", "7"); 
$stockList->appendChild( $item ); 
$item = $doc->createElement( "mes", "1"); 
$stockList->appendChild( $item ); 
$item = $doc->createElement( "any", "2016"); 
$stockList->appendChild( $item );  
$item = $doc->createElement( "numdies", "5"); 
$stockList->appendChild( $item ); 

/*
// Create the item's "name" child element 
$name = $doc->createElement( "name", "carrot" ); 
$item->appendChild( $name ); 

// Create the item's "unitprice " child element 
$unitPrice = $doc->createElement( "unitPrice", "0.79" ); 
$item->appendChild( $unitPrice ); 

//Create item's quantity element 
$quantity = $doc->createElement( "quantity", "31" ); 
$item->appendChild( $quantity ); 

// Create item's description element 
$description = $doc->createElement( "description" ); 
$item->appendChild( $description ); 
$cdata = $doc->createCDATASection( "Carrots are crunchy" ); 
$description->appendChild( $cdata ); 
*/
//Output the XML document, encoding markup characters as needed 
echo htmlspecialchars( $doc->saveXML() );
echo htmlspecialchars( $doc->save('fincas.xml') );
?>