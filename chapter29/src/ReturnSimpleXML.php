<?php
$xmlstr = <<<XML
<?xml version='1.0'?>
<vendors>
 <vendor>
  <name>You Grow 'em, We Mow 'em</name>
  <service>Lawn Mowing</service>
 </vendor>
 <vendor>
  <name>How High the Shingle</name>
  <service>Roofing</service>
 </vendor>
 <vendor>
  <name>Ma &amp; Pa Kettle</name>
  <service>Cooking Supplies</service>
 </vendor> 
</vendors>
XML;
header("Content-type: text/xml");
echo $xmlstr;
?>
