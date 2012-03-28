<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                 xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="utf-8" version="" indent="yes" standalone="no" media-type="text/html" omit-xml-declaration="no" doctype-system="about:legacy-compat" />
        
<!-- start xslt -->
<xsl:template match="endpoints_catalog">
  <html>
  <head>
  	<title><xsl:value-of select="@name"/></title>
  	<xsl:text>&#10;</xsl:text>
     <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
     <xsl:text>&#10;</xsl:text>
	<!-- jQuery -->
	<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.1.min.js"></script>
	<xsl:text>&#10;</xsl:text>
	<!-- jQuery UI -->
	<script type="text/javascript" charset="utf8" src="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/jquery-ui.js"></script>
	<xsl:text>&#10;</xsl:text>
	<link type="text/css" rel="Stylesheet" href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/themes/flick/jquery-ui.css" />
	<xsl:text>&#10;</xsl:text>
	<style type="text/css" media="screen">
			.dataTables_info { padding-top: 0; }
			.dataTables_paginate { padding-top: 0; }
			.css_right { float: right; }
		</style>	
	<xsl:text>&#10;</xsl:text>		
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.8.2/jquery.dataTables.min.js"></script>
	<xsl:text>&#10;</xsl:text>
    <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.8.2/css/jquery.dataTables.css"/>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#endpoints').dataTable({
					"bJQueryUI": true
					<!-- "sPaginationType": "full_numbers"  -->				
				}
				);
			} );
		</script>
		<xsl:text>&#10;</xsl:text>
  </head>
  <xsl:text>&#10;</xsl:text>
  <body>
	  <div class="ui-widget-content ui-corner-all"  style="width:90%">
	  <xsl:text>&#10;</xsl:text>
	  <p>
		  <table id='endpoints' cellpadding="0" cellspacing="0" border="0" width='100%' class="display">	
		  <xsl:text>&#10;</xsl:text>
		  <caption><h3><xsl:value-of select="@name"/></h3><xsl:call-template name="print_href"/></caption>
		  <xsl:text>&#10;</xsl:text>
		  <thead> 
		 	<th>Group</th>
		 	<th>Subgroup</th>
		 	<th>Name</th>
		 	<th>OECD No.</th>
		 	<th>ECHA No.</th>
		   </thead>  
		   <xsl:text>&#10;</xsl:text>
		  <tbody> 	
		  <xsl:text>&#10;</xsl:text>
		  <xsl:apply-templates/>
		  </tbody>
		  <xsl:text>&#10;</xsl:text>
		  </table>
		  <xsl:text>&#10;</xsl:text>
    </p>
    </div>
    <xsl:text>&#10;</xsl:text>
  </body>
  </html> 
</xsl:template>

<xsl:template match="endpoint">
	<tr>
 	<td><xsl:value-of select="@group" /></td>
 	<td><i><xsl:value-of select="@subgroup" /></i></td>
 	<td><b><xsl:value-of select="@name" /></b></td>
 	<td><xsl:value-of select="@oecdNo" /></td>
 	<td><xsl:value-of select="@echaNo" /></td>
 	</tr>
 	<xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template name="print_href">
 <xsl:choose>
    <xsl:when test="@url != ''">
	 		<a>
			<xsl:attribute name="href">
			<xsl:value-of select="@url" disable-output-escaping="yes"/>
			</xsl:attribute>
			<xsl:attribute name="target">_blank</xsl:attribute>
			<xsl:value-of select="@url" disable-output-escaping="yes"/>
			</a> 
    </xsl:when>
    <xsl:otherwise></xsl:otherwise> <!-- default value -->
  </xsl:choose>

 </xsl:template>
<!-- end xslt -->
 </xsl:stylesheet>


	