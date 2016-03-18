<?php

//file name
string filename = @"fincas.xml";

//create new instance of XmlDocument
XmlDocument doc = new XmlDocument();

//load from file
doc.Load(filename);

//Seleccionam el node finca correcte
XmlNode finca = doc.SelectSingleNode("finca[codi=1]");

//Seleccionam calendar
XmlNode calendari = finca.SelectSingleNode("calendari");

//create node and add value
XmlNode node = doc.CreateNode(XmlNodeType.Element, "registre", null);

//create title node
XmlNode dia = doc.CreateElement("dia");
XmlNode mes = doc.CreateElement("mes");
XmlNode any = doc.CreateElement("any");
XmlNode ndias = doc.CreateElement("ndias");
//add value for it
dia.InnerText = "4";
mes.InnerText = "4";
any.InnerText = "2016";
ndias.InnerText = "3";


//add to parent node
node.AppendChild(dia);
node.AppendChild(mes);
node.AppendChild(any);
node.AppendChild(ndias);

//Afegir node a Calendari
calendari.AppendChild(node);

//Afegir node a Calendari
finca.AppendChild(calendari);

//add to elements collection
doc.DocumentElement.AppendChild(finca);

//save back
doc.Save(filename);

?>