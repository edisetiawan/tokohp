<?php
$sql = mysql_query("select nama_produk from produk where id_produk='$_GET[id]'");
$j   = mysql_fetch_array($sql);

if (ISSET($_GET[id])){
		echo "$j[nama_produk]";
}
else{
		echo "bukulokomedia adalah toko online dari penerbit lokomedia yang buku-buku komputer khususnya di bidang pemrograman web dan internet.";
}
?>
