<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.company-news-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-company-news-list" ox-mod="company-news-list">
        	<ul>
	            <xsl:for-each select="data/info-news/i">
	            	<li>
	            		<a href="{LINK/detail}">
		            		<img src="http://a.oxm1.cc/img/blank.png" style="background-image:url({media/i[type = 'image']/src})" class="mainpic"/>
		            		<h4 class="title">
		            			<xsl:value-of select="title" />
		            		</h4>
		            		<p class="brief">
		            			<xsl:value-of select="brief" />
		            		</p>
		            		<p class="time">
		            			<xsl:value-of select="time/y" />-<xsl:value-of select="time/M" />-<xsl:value-of select="time/d" />
		            		</p>
		            	</a>
	            	</li>
	            </xsl:for-each>
	        </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
