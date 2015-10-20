-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2010 at 12:19 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(4, 'Fresh Book', 'http://freshbooks.com', 'freshbook.jpg', '2009-02-05'),
(10, 'Penerbit Lokomedia', 'http://bukulokomedia.com', 'banner2.jpg', '2010-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'Ariawan', 'ariawan@gmail.com', 'Mohon Informasi', 'Mohon informasi mengenai buku yang diterbitkan oleh Lokomedia.', '2008-02-10'),
(4, 'lukman', 'lukman@hakim', 'Request Code', 'Tolong dunk ..', '2009-02-25'),
(6, 'Adiyaksa', 'adi@gmail.com', 'Nanya', 'ljlfdks flkdjsflk', '2009-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(2, 'Nokia', 'nokia'),
(3, 'Sony Ericsson', 'sony-ericsson'),
(4, 'Motorola', 'motorola'),
(5, 'LG', 'lg'),
(6, 'Blackberry', 'blackberry'),
(7, 'Samsung', 'samsung');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 'Jakarta', 13000),
(2, 'Bandung', 13500),
(3, 'Semarang', 10000),
(4, 'Medan', 20000),
(5, 'Aceh', 25000),
(6, 'Banjarmasin', 17500),
(7, 'Balikpapan', 18500),
(8, 'Samarinda', 19500),
(9, 'Lainnya', 10000),
(10, 'Palembang', 23000),
(11, 'Surabaya', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Produk', '?module=produk', '', '', 'admin', 'Y', 4),
(42, 'Order', '?module=order', '', '', 'admin', 'Y', 5),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 2),
(31, 'Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 3),
(43, 'Profil', '?module=profil', '<b>mobilestore.com</b> merupakan website resmi dari Toko HP Lokomedia yang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. Dirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br><br>Produk unggulan dari Toko HP Lokomedia adalah produk-produk serta aksesoris bertema Nokia yang merupakan merk produk handphone paling terdepan saat ini.', 'gedung.jpg', 'admin', 'Y', 7),
(44, 'Hubungi Kami', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, 'Cara Pembelian', '?module=carabeli', '<ol><li>Klik pada tombol&nbsp;<span style="font-weight: bold;">Beli</span> pada produk yang ingin Anda pesan.</li><li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold;">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold;">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold;">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li><li>Jika sudah selesai, klik tombol <span style="font-weight: bold;">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li><li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold;">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordersnya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li><li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br></li></ol>', '', 'admin', 'Y', 8),
(47, 'Banner', '?module=banner', '', '', 'user', 'Y', 10),
(48, 'Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 6),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(1, 'Untung Setiabudi', 'Jl. Tengiri Raya No.1 Yogyakarta 55581', '08198208494', 'adi@gmail.com', 'Dikirim', '2009-11-18', '09:17:17', 6),
(2, 'Richie Ren', 'Jl. Tengiri Raya No.1 Yogyakarta 55581', '07098798', 'richie@gmail.com', 'Lunas', '2009-11-18', '09:18:24', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(1, 8, 2),
(2, 7, 1),
(2, 5, 1),
(24, 6, 3),
(24, 13, 2),
(23, 13, 1),
(23, 6, 1),
(22, 3, 1),
(22, 8, 1),
(21, 6, 1),
(19, 13, 2),
(19, 5, 1),
(18, 8, 1),
(18, 7, 1),
(18, 13, 3),
(17, 14, 5),
(17, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=58 ;

--
-- Dumping data for table `orders_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `produk_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`) VALUES
(5, 4, 'Motorola RAZR V3m Red', 'motorola-razr-v3m-red', 'The Motorola Red RAZR V3m for Sprint combines powerful technology and chic style with social activism in a cell phone that makes a strong statement to the world.<br>Features: Bluetooth Wireless Technology, 1.3 Megapixel Digital Camera Takes Print-quality Stills or Video Clips, Less Than 1/2-inch Thick With Feather-touch Precision Crafted Keypad,&nbsp; Built-in Music Player With Removable, Expandable Memory Card Slot, Stunning Red Shell Is Made From Aircraft-grade Aluminum, Motorola Will Contribute A Portion Of The Red Razr Proceeds To Help Fight Aids In Africa, Watch On-demand Sprint TV or Listen To Streaming Music With Sprint Music Store.<br><br>', 2500000, 22, '0.50', '2009-05-25', '9motorola_razr.jpg', 20),
(6, 5, 'LG Chocolate VX8550 Blue', '', 'The LG Chocolate VX8550 for Verizon Wireless - now available with a chic "blue ice" color scheme - is the first Verizon Wireless phone with a soft-touch keypad, external graphic equalizer, streaming or downloadable music from VCAST, and the capability to transfer music to and from your PC (USB cable required).<br><br>Features:<br><br>&nbsp;&nbsp;&nbsp; * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br>&nbsp;&nbsp;&nbsp; * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br>&nbsp;&nbsp;&nbsp; * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br>&nbsp;&nbsp;&nbsp; * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br>&nbsp;&nbsp;&nbsp; * Stylish Slider Design With Soft-touch External Controls<br>&nbsp;&nbsp;&nbsp; * Huge, Vibrant Color Display<br>&nbsp;&nbsp;&nbsp; * Wirelessly Stream Music To A Stereo Bluetooth Headset<br>', 3450000, 43, '1.00', '2009-06-02', '39lg_vx8550.jpg', 6),
(3, 7, 'Samsung FlipShot SCH-U900', '', 'The Samsung U900 for Verizon Wireless is the update to the flagship Samsung A990. Features: Advanced Voice Activated Dialing Requires No Phone Pre-training, Advanced Bluetooth Wireless Technology With Streaming Stereo Music Support, Huge Color Main Display and Color External Display, Built-in Music Player Lets You Download From V CAST Music Service, One of the Best Digital Camera/Camcorders In A Mobile Phone Today, Next Generation (EV-DO) Technology Gives You Downloads At Near-Broadband Speeds, Watch On-demand TV or Listen to Music Via Verizon V CAST, Take Extra-long Video Clips With Very Good Resolution.<br>', 4500000, 26, '0.50', '2009-06-02', '21samsung_u900.jpg', 30),
(8, 3, 'Sony Ericsson W200i', '', 'The Sony Ericsson specially Phone for Walkman - now available with a chic "blue ice" color scheme - is the first Verizon Wireless phone with a soft-touch keypad, external graphic equalizer, streaming or downloadable music from VCAST, and the capability to transfer music to and from your PC (USB cable required).<br><br>Features:<br><br>    * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br>    * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br>    * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br>    * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br>    * Stylish Slider Design With Soft-touch External Controls<br>    * Huge, Vibrant Color Display<br>    * Wirelessly Stream Music To A Stereo Bluetooth Headset<br>\r\n', 1100000, 67, '0.50', '2009-09-28', '36se_w200i.jpg', 3),
(7, 3, 'Sony Ericsson W880', '', 'The Sony Ericsson w880 specially Phone for Walkman and Business - now available with a chic "blue ice" color scheme - is the first Verizon Wireless phone with a soft-touch keypad, external graphic equalizer, streaming or downloadable music from VCAST, and the capability to transfer music to and from your PC (USB cable required).<br><br>Features:<br><br>    * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br>    * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br>    * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br>    * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br>    * Stylish Slider Design With Soft-touch External Controls<br>    * Huge, Vibrant Color Display<br>    * Wirelessly Stream Music To A Stereo Bluetooth Headset<br>\r\n', 2800000, 37, '0.50', '2009-09-28', '97se_w880.jpg', 2),
(13, 3, 'Sony Ericsson w910', '', 'The Sony Ericsson w910 specially Phone for Walkman and Business - now\r\navailable with a chic "blue ice" color scheme - is the first Verizon\r\nWireless phone with a soft-touch keypad, external graphic equalizer,\r\nstreaming or downloadable music from VCAST, and the capability to\r\ntransfer music to and from your PC (USB cable required).<br><br>Features:<br><br>    * Advanced Voice Dialing Lets Your Operate Your Phone Without Pre-training<br>    * 1.3 Megapixel Camera Takes Print-quality Photo And Hour-long Video Clips<br>    * High-speed Data Downloads Let You Watch TV Or Listen To Streaming Music<br>    * First Phone To Play Either Downloaded V CAST Music or PC-transferred Music Files<br>    * Stylish Slider Design With Soft-touch External Controls<br>    * Huge, Vibrant Color Display<br>    * Wirelessly Stream Music To A Stereo Bluetooth Headset', 2500000, 46, '1.00', '2009-12-25', '12se_w910.jpg', 12);
