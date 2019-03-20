<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SoundOnline API</title>
</head>
<body>

<hr>
<h1>SoundOnline API</h1>
<p>API med data til online musikbutik.</p>

<p><b>Brands</b></p>
<ol>
	<li>Hent alle brands:
        <a target="_blank" href="/api/brands/">https://heka5.apache.techcollege.dk/api/brands/</a></li>
	<li>Hent enkelt brand ud fra id:
        <a target="_blank" href="/api/brands/get/1">https://heka5.apache.techcollege.dk/api/brands/get/[brand_id]</a></li>
</ol>

<p><b>Produktgrupper</b></p>
<ol>
	<li>Hent alle grupper:
        <a target="_blank" href="/api/productgroups/">https://heka5.apache.techcollege.dk/api/productgroups/</a></li>
	<li>Hent enkelt gruppe ud fra id:
        <a target="_blank" href="/api/productgroups/get/1">https://heka5.apache.techcollege.dk/api/productgroups/get/[productgroup_id]</a></li>
    <li>Hent grupper ud fra parent_id:
        <a target="_blank" href="/api/productgroups/getbyparent/1">https://heka5.apache.techcollege.dk/api/productgroups/getbyparent/[parent_id]</a></li>
    <li>Hent grupper ud fra brand id:
        <a target="_blank" href="/api/productgroups/getbybrand/1">https://heka5.apache.techcollege.dk/api/productgroups/getbybrand/[brand_id]</a></li>
</ol>

<p><b>Produkter</b></p>
<ol>
	<li>Hent alle produkter:
        <a target="_blank" href="/api/products/">https://heka5.apache.techcollege.dk/api/products/</a></li>
	<li>Hent enkelt produkt ud fra id:
        <a target="_blank" href="/api/products/get/1">https://heka5.apache.techcollege.dk/api/products/get/[product_id]</a></li>
	<li>Hent produkter ud fra gruppe id:
        <a target="_blank" href="/api/products/getbygroup/2">https://heka5.apache.techcollege.dk/api/products/getbygroup/[productgroup_id]</a></li>
	<li>Hent produkter ud fra brand:
        <a target="_blank" href="/api/products/getbybrand/1">https://heka5.apache.techcollege.dk/api/products/getbybrand/[brand_id]</a></li>
</ol>

<p><b>Produktbilleder</b></p>
<ol>
    <li>Alle produktbilleder kan hentes i mappen https://heka5.apache.techcollege.dk/images/products/</li>
</ol>

<hr>
</body>
</html>
