<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Products</title>
                <link rel="stylesheet" href="../styles/style.css"/>

            </head>

            <body>

                <!--Nav bar-->
                <header class="navigation-bar">
                    <div class="logo">
                        <a href="index.html">GigaGoods</a>
                    </div>
                    <nav>
                        <a href="products.xml">Products</a>
                        <a href="aboutus.html">About Us</a>
                        <a href="#contact">Contact</a>
                    </nav>
                </header>


                <!--Main div-->
                <div class="content-wrapper">
                    <!-- LEFT AREA-->
                    <div id="productsSection" class="product-table">
                        <h2>Graphics Cards Catalog</h2>
                        <table id="productTable">
                            <thead>
                                <tr>
                                    <th>Code</th>
                                    <th>Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="products/product">
                                    <tr class="product-row">
                                        <td><xsl:value-of select="@code"/></td>
                                        <td><xsl:value-of select="name"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>
                    <!--RIGHT AREA-->
                    <div id="showSection" class="product-display">
                        <div id="searchSection" class="search-bar">
                            <input type="text" id="productCode" placeholder="Enter product code (e.g., 141-90)"/>
                            <button onclick="searchProduct()">Search</button>
                        </div>
                        <!--JS INNERHTML AREA-->
                        <div id="resultSection">
                            <p>Your selected product details will appear here.</p>
                            <p id="sStatus" ></p>
                        </div>
                    </div>
                </div>
     
                <section class="info">
                    <h2>Do you want to understand our vision better? take a look at our  <a href="aboutus.html">about us</a> page! </h2>
                </section>

                <!--Contact information-->
                <footer>
                    <div id="contact">
                        <p>Contact Us!</p>
                        <div>
                            <p>André Pont De Anda</p>
                        </div>
                        <div>
                            <p>x23164034@student.ncirl.ie</p>
                        </div>
                        <div>
                            <p>+353 089 3675947</p>
                        </div>
                    </div>
                </footer>
                <script src="../script/script.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
