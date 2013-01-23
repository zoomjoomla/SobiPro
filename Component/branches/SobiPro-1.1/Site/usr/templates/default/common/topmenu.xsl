<?xml version="1.0" encoding="UTF-8"?>
<!--
 @version: $Id$
 @package: SobiPro Component for Joomla!

 @author
 Name: Sigrid Suski & Radek Suski, Sigsiu.NET GmbH
 Email: sobi[at]sigsiu.net
 Url: http://www.Sigsiu.NET

 @copyright Copyright (C) 2006 - 2013 Sigsiu.NET GmbH (http://www.sigsiu.net). All rights reserved.
 @license GNU/GPL Version 3
 This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3
 as published by the Free Software Foundation, and under the additional terms according section 7 of GPL v3.
 See http://www.gnu.org/licenses/gpl.html and http://sobipro.sigsiu.net/licenses.

 This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

 $Date$
 $Revision$
 $Author$
 $HeadURL$
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
	<xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="UTF-8" />
	<xsl:template name="topMenu">
		<xsl:param name="searchbox"/>
		<div class="navbar topmenu">
			<div class="navbar-inner">
				<ul class="nav">
					<xsl:if test="//menu/front">
						<li>
							<a href="{//menu/front/@url}">
                                <i class="icon-th-list"></i><xsl:text> </xsl:text>
								<xsl:value-of select="//menu/front" />
							</a>
						</li>
					</xsl:if>
					<xsl:if test="//menu/add">
						<li>
							<a href="{//menu/add/@url}">
                                <i class="icon-plus-sign"></i><xsl:text> </xsl:text>
								<xsl:value-of select="//menu/add" />
							</a>
						</li>
					</xsl:if>
				</ul>
				<xsl:if test="//menu/search and $searchbox = 'true'">
					<form class="navbar-search pull-right">
						<input type="text" name="sp_search_for" class="search-query" placeholder="{php:function( 'SobiPro::Txt', 'SH.SEARCH_FOR_BOX' )}" />
						<input type="hidden" name="task" value="search.search"/>
						<input type="hidden" name="option" value="com_sobipro"/>
					</form>
				</xsl:if>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
