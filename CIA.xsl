<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>          
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Employee Management System</h1>
                
                    <h2 style="text-align:center;">Employee Details</h2>
                    <table border="2" align="center">
                        <tr bgcolor="beginpage">
                            <th style="text-align:left">ID</th>
							<th style="text-align:left">Name</th>
                            <th style="text-align:left">Age</th>
                            <th style="text-align:left">Salary</th>
                            <th style="text-align:left">Email</th>
                            <th style="text-align:left">MobNum</th>
                            <th style="text-align:left">Designation</th>
                        </tr>
                        <xsl:for-each select="Employee_Management_System/Members">
                            <tr>
                                <td>
                                    <xsl:value-of select="ID"/>
                                </td>
								<td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Salary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Email"/>
                                </td>
                                <td>
                                    <xsl:value-of select="MobNum"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Designation"/>
                                </td>
                            </tr>
							<xsl:if test="Age &gt; 50">
        <tr>
          <td><xsl:value-of select="ID"/></td>
          <td><xsl:value-of select="Name"/></td>
          <td><xsl:value-of select="Designation"/></td>
        </tr>
		
        </xsl:if>
		
		<xsl:choose>
		<xsl:when test="Age &gt; 40">
		 Team Leader
		</xsl:when>
		</xsl:choose>
		
		
		<xsl:choose>
		<xsl:when test="Age &lt; 49">
		 Team Leader
		</xsl:when>
		</xsl:choose>
		
        
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
