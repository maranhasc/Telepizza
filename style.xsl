<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Telepizza</title>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
				<link rel="stylesheet" href="css/kk.css"/>
				
			</head>
			
			<body>
				<header class="bg-danger py-3">
					<div class="container">
						<div class="row justify-content-between">
							<div class="col">
								<img src="img/telepizzalogo.png" alt="" class="img-fluid"/>
							</div>
							<div class="col text-end">
								<img src="img/cart.svg" alt="" class="me-2 img-fluid"/>
								<img src="img/user.svg" alt="" class="me-2 img-fluid"/>
								<img src="img/work.svg" alt="" class="me-2 img-fluid"/>
							</div>
						</div>
					</div>
					
				</header>
				<div class="container shadow">
					<h2>Entrantes</h2>
					<xsl:for-each select="entrantes/categoria">
						<h4 class="test-secondary"> <xsl:value-of select="@nombre"/> </h4>
						<div class="row ">
							<xsl:for-each select="entrante">
								
								<div class="col-lg-4 col-md-6 d-flex mb-3">
									<div class="card flex-fill">
										<img class="card-img-top img-fluid" src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.png" alt="Title"/>
										<div class="card-body">
											<h4 class="card-title"> <xsl:value-of select="@nombre"/> </h4>
											<div class="row justify-content-between">
												<div class="col">
													<a href="#" class="text-secondary text-decoration-none">Ver más</a>
													<xsl:choose>
														<xsl:when test="oferta=''">
															<span class="card-text text-danger fw-bold">(oferta)</span>
														</xsl:when>
													</xsl:choose>
												</div>
												<div class="col text-end"><xsl:value-of select="precio"/>&#8364;</div>
											</div>
											<div class="text-end mt-2">
												<button class="btn btn-danger">Añadir</button>
											</div>
										</div>
									</div>
								</div>
							</xsl:for-each>
							
						</div>
					</xsl:for-each>
					
				</div>
				<footer class="">
					<h2 class="text-white bg-danger text-center py-2 mt-2">
						Telepizza  -  Azarquiel
					</h2>
				</footer>
				
				
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
					integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
				</script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
					integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
				</script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>