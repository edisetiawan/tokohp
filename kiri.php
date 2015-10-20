<?php

// Menu Kategori
$kategori=mysql_query("select nama_kategori, kategori.id_kategori, kategori_seo,  
                       count(produk.id_produk) as jml 
                       from kategori left join produk 
                       on produk.id_kategori=kategori.id_kategori 
                       group by nama_kategori");
while($k=mysql_fetch_array($kategori)){
  echo "<span class=kategori>&bull; <a href=kategori-$k[id_kategori].html> $k[nama_kategori] ($k[jml])</a></span><hr />";
}
echo "<br />";

// Random Produk
/* echo "<img src=images/bar3.jpg /><br /><br />";
$promo=mysql_query("SELECT * FROM produk ORDER BY rand() LIMIT 1");

while($a=mysql_fetch_array($promo)){
		echo "<p align=center><img src='foto_produk/small_$a[gambar]' border=0><br /><br /><a href=#><b>$a[nama_produk]</b></a></p>";
}
echo "<br /><hr />";
*/

// Produk Best Seller
echo "<img src=images/bar3.jpg /><br /><br />";
$best=mysql_query("SELECT * FROM produk ORDER BY dibeli DESC LIMIT 2");

while($a=mysql_fetch_array($best)){
		echo "<p align=center><img src='foto_produk/small_$a[gambar]' border=0><br /><br /><a href=produk-$a[id_produk]-$a[produk_seo].html><b>$a[nama_produk]</b></a></p><br />";
}
echo "<hr />";


// Banner
$banner=mysql_query("SELECT * FROM banner ORDER BY id_banner DESC LIMIT 4");
while($b=mysql_fetch_array($banner)){
  echo "<p align=center><a href=$b[url] target='_blank' title='$b[judul]'><img src='foto_banner/$b[gambar]' border=0></a></p>";
}
echo "<br />";
?>