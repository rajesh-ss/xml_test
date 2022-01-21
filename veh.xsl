<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<style>
					table{ 
						border-radious:5px;
						padding: 2px;
						border: 3px solid black;
					}
					table th{ 
						margin: 5px;
						padding: 5px;
					}
				</style>
			</head>
			<body>
				<h1 style="text-align:center">Sort vehicle by price</h1>
				<table  border='2' align= 'center'>
					<tr>
						<th>Brand</th>
						<th>Type</th>
						<th>Year</th>
						<th>ManYr</th>
						<th>Mileage</th>
						<th>Color</th>
						<th>Price</th>
					</tr>
					<xsl:for-each select="usedVehicle/vehicle/Car">
						<xsl:sort select="Price"></xsl:sort>
						<xsl:if test="Year &gt; 1">
							<tr>
								<td>
									<xsl:value-of select="Brand"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Type"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Year"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="ManYr"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Mileage"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Color"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Price"></xsl:value-of>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>

				<h1 style="text-align:center">Vehicle with good mileage</h1>
				<table border="2" align="center">
					<tr>
						<th>Brand</th>
						<th>Type</th>
						<th>Year</th>
						<th>ManYr</th>
						<th>Mileage</th>
						<th>Color</th>
						<th>Price</th>
					</tr>
					<xsl:for-each select="usedVehicle/vehicle/Car">
						<xsl:sort select="Mileage"></xsl:sort>
						<xsl:if test="Mileage &gt; 12">
							<tr>
								<td>
									<xsl:value-of select="Brand"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Type"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Year"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="ManYr"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Mileage"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Color"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Price"></xsl:value-of>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<h1 style="text-align:center">Sort by brand</h1>
				<table border="2" align="center">
					<tr>
						<th>Brand</th>
						<th>Type</th>
						<th>Year</th>
						<th>ManYr</th>
						<th>Mileage</th>
						<th>Color</th>
						<th>Price</th>
					</tr>
					<xsl:for-each select="usedVehicle/vehicle/Car">
						<xsl:sort select="Brand"></xsl:sort>
						<xsl:if test="Color = 'black'">
							<tr>
								<td>
									<xsl:value-of select="Brand"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Type"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Year"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="ManYr"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Mileage"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Color"></xsl:value-of>
								</td>
								<td>
									<xsl:value-of select="Price"></xsl:value-of>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>

				<h1 style="text-align:center">Seller info</h1>
				<table border="2" align="center">
					<tr>
						<th>name</th>
						<th>age</th>
						<th>phone</th>
						<th>vehID</th>
						<th>city</th>
					</tr>
					<xsl:for-each select="usedVehicle/Seller/person">
						<tr>
							<td>
								<xsl:value-of select="name"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="age"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="phone"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="vehID"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="city"></xsl:value-of>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h1 style="text-align:center">Sellers from banagalore</h1>
				<table border="2" align="center">
					<tr>
						<th>name</th>
						<th>age</th>
						<th>phone</th>
						<th>vehID</th>
						<th>city</th>
					</tr>
					<xsl:for-each select="usedVehicle/Seller/person">
					<xsl:if test="city = 'bangalore'">
						<tr>
							<td>
								<xsl:value-of select="name"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="age"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="phone"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="vehID"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="city"></xsl:value-of>
							</td>
						</tr>
					</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>