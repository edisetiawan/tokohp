<?php 
  error_reporting(0);
  session_start();	
  include "config/koneksi.php";
	include "config/fungsi_indotgl.php";
	include "config/class_paging.php";
	include "config/fungsi_combobox.php";
	include "config/library.php";
  include "config/fungsi_autolink.php";
  include "config/fungsi_rupiah.php";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php include "dina_titel.php"; ?></title>
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index, follow">
<meta name="description" content="<?php include "dina_meta1.php"; ?>">
<meta name="keywords" content="<?php include "dina_meta2.php"; ?>">
<meta http-equiv="Copyright" content="lokomedia">
<meta name="author" content="Lukmanul Hakim">
<meta http-equiv="imagetoolbar" content="no">
<meta name="language" content="Indonesia">
<meta name="revisit-after" content="7">
<meta name="webcrawlers" content="all">
<meta name="rating" content="general">
<meta name="spiders" content="all">

<link rel="shortcut icon" href="favicon.ico" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://localhost/tokohp/rss.xml" />
<link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div id="wrapper">
  <div id="header">
    <div id="menuutama">
   	<ul>
		<li><a href="index.php">Home</a></li>
		<li><a href="profil-kami.html">Profil</a></li>
		<li><a href="cara-pembelian.html">Cara Pembelian</a></li>
		<li><a href="semua-produk.html">Produk</a></li>
		<li><a href="keranjang-belanja.html">Keranjang Belanja</a></li>
		<li><a href="hubungi-kami.html">Hubungi Kami</a></li>        
	  </ul>
    </div>
  </div>
  <div id="leftcontent">
    <p>&nbsp;</p>
  </div>
  <div id="middlecontent">
<img src=images/pencarian.jpg><br /><br />
        <form method=POST action='hasil-pencarian.html'>    
        <input name=kata type=text size=23 maxlength=50 />
        <input type=submit value=Go />
        </form><br />

    <img src="images/bar2.jpg" width="200" height="30" />
    <p>
      <?php include "kiri.php"; ?>
    </p>
  </div>
  <div id="rightcontent"><img src="images/bar.jpg" width="560" height="200" />
    <p>
      <?php include "kanan.php"; ?>
    </p>
  </div>
  <div id="clearer"></div>
  <div id="footer">Copyright &copy; 2012 by <a href="http://pijaronline.com">pijaronline.com</a>. All Rights Reserved.</div>
</div>
</body>
</html>
