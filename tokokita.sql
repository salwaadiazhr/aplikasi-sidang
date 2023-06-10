-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2023 pada 15.47
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Selesai'),
(13, '164TENFDcyB/I', 3, '2023-02-16 03:22:14', 'Selesai'),
(14, '16T39JCODjUas', 4, '2023-02-17 07:34:30', 'Selesai'),
(15, '166nn2DWY9IPg', 3, '2023-03-15 03:51:31', 'Payment'),
(16, '169R2svcbGKNU', 5, '2023-05-11 01:15:50', 'Selesai'),
(17, '16Emp1IBKfAJ2', 1, '2023-05-13 12:16:07', 'Selesai'),
(18, '160sQbKeaAs3c', 1, '2023-05-26 13:31:20', 'Selesai'),
(19, '166V6eUTkDYB2', 1, '2023-06-07 03:24:34', 'Selesai'),
(20, '16JhorRcHqzQM', 5, '2023-06-07 03:26:58', 'Selesai'),
(21, '16f5jHTq3CMVg', 5, '2023-06-07 10:55:17', 'Selesai'),
(22, '16FOsGP1G4ZAI', 1, '2023-06-07 11:32:15', 'Selesai'),
(23, '16JLENFaXA35k', 1, '2023-06-07 11:34:45', 'Selesai'),
(24, '16OluWEfiUMyw', 1, '2023-06-07 11:41:15', 'Selesai'),
(25, '16EDLAwduPyP2', 5, '2023-06-08 06:04:03', 'Selesai'),
(26, '163JVZX9hcJZE', 5, '2023-06-08 06:09:54', 'Selesai'),
(27, '16IoOWG4Sg93E', 5, '2023-06-08 06:24:57', 'Selesai'),
(28, '16Jz24s8D4B8k', 5, '2023-06-08 06:27:25', 'Selesai'),
(29, '16MWnb03hHeq6', 5, '2023-06-08 06:35:49', 'Selesai'),
(30, '16we5aMtCZVuA', 1, '2023-06-08 10:07:19', 'Selesai'),
(31, '163Zg78Rdu6JM', 5, '2023-06-08 10:57:26', 'Selesai'),
(32, '16gZoWobrAmNE', 5, '2023-06-08 11:05:03', 'Selesai'),
(33, '160ppPTmDSnk6', 5, '2023-06-08 13:59:29', 'Selesai'),
(34, '16TV3qdu9NwbA', 5, '2023-06-08 15:03:05', 'Selesai'),
(35, '162iXnEhtUAZ.', 1, '2023-06-09 10:41:22', 'Selesai'),
(36, '168TLpj3aqNDc', 1, '2023-06-09 10:44:47', 'Selesai'),
(37, '16AicNAa9CWmk', 5, '2023-06-10 01:10:06', 'Selesai'),
(38, '16toKbLftyKQg', 5, '2023-06-10 01:22:18', 'Selesai'),
(39, '16YEb22NFFII6', 5, '2023-06-10 03:13:05', 'Selesai'),
(40, '16Dmy7X3aaOcU', 5, '2023-06-10 05:28:55', 'Selesai'),
(41, '1605t15BtpkIc', 5, '2023-06-10 05:31:03', 'Selesai'),
(42, '16BLGsENOYaWk', 5, '2023-06-10 05:47:47', 'Selesai'),
(43, '16wk3By5vNfGk', 5, '2023-06-10 06:10:58', 'Selesai'),
(44, '16MpEyzL/nUIQ', 5, '2023-06-10 06:34:21', 'Selesai'),
(45, '16Z87B2Gw.vIQ', 1, '2023-06-10 06:40:17', 'Confirmed'),
(46, '165kswrsDYU/s', 1, '2023-06-10 06:57:11', 'Confirmed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(13, '15wKVT0nej25Y', 1, 100),
(17, '16T39JCODjUas', 11, 1),
(30, '16f5jHTq3CMVg', 10, 6),
(31, '166V6eUTkDYB2', 2, 5),
(32, '16FOsGP1G4ZAI', 1, 4),
(33, '16JLENFaXA35k', 2, 7),
(34, '16OluWEfiUMyw', 11, 5),
(35, '16EDLAwduPyP2', 2, 9),
(36, '163JVZX9hcJZE', 14, 6),
(37, '16IoOWG4Sg93E', 10, 7),
(38, '16Jz24s8D4B8k', 12, 11),
(39, '16MWnb03hHeq6', 12, 1),
(40, '16we5aMtCZVuA', 7, 19),
(41, '163Zg78Rdu6JM', 1, 6),
(42, '16gZoWobrAmNE', 10, 3),
(43, '160ppPTmDSnk6', 7, 5),
(44, '16TV3qdu9NwbA', 1, 1),
(45, '162iXnEhtUAZ.', 2, 5),
(46, '168TLpj3aqNDc', 14, 1),
(47, '16AicNAa9CWmk', 10, 5),
(48, '16toKbLftyKQg', 7, 5),
(49, '16YEb22NFFII6', 7, 1),
(50, '16Dmy7X3aaOcU', 7, 1),
(51, '1605t15BtpkIc', 7, 1),
(52, '16BLGsENOYaWk', 1, 1),
(53, '16wk3By5vNfGk', 7, 1),
(54, '16MpEyzL/nUIQ', 1, 1),
(55, '16Z87B2Gw.vIQ', 7, 1),
(56, '165kswrsDYU/s', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, 'Makanan Instan ', '2019-12-20 07:28:34'),
(2, 'Minuman', '2019-12-20 07:34:17'),
(3, 'Makanan Ringan', '2020-03-16 12:15:40'),
(4, 'Bahan Pokok', '2023-02-17 04:00:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` text NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(35, '16Z87B2Gw.vIQ', 1, 'Bank BCA', '&lt;h1&gt;renasalwa&lt;/h1&gt;', '2023-06-10', '2023-06-10'),
(36, '165kswrsDYU/s', 1, 'Bank BCA', '&lt;h1&gt;salwa adia zahra&lt;/h1&gt;', '2023-06-10', '2023-06-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'zahrasalwaa380@gmail.com', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(5, 'salwa', 'salwa@gmail.com', '$2y$10$LL/P5zirjoOLyzl0lBVAgeuFiWDKYc235MvG6o0exrOI8sYmeKegO', '0859102879373', 'indonesia', '2023-05-11 01:15:11', 'Member', NULL),
(6, '<h1>sya</h1>', 'salwwa@gmail.com', '$2y$10$3TvuHRRnbl..IYR2NS98Ae0PFKXBISgQQN72lhPYClc7r3Sm4dqrO', '083803246357', 'tajur', '2023-06-07 12:10:36', 'Member', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Toko Kita'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Toko Kita'),
(3, 'DANA', '083803246357', 'images/dana.png', 'Toko Kita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(1, 1, 'Indomie Rendang', 'produk/7443a12318c5f4f29059d243fd14f447.png', 'Satu bungkus indomie rendang', 5, 3500, 2900, '2019-12-20 09:10:26'),
(2, 1, 'Mie Goreng Sedap', 'produk/15kwuDMbYtraw.png', 'Satu bungkus mie goreng sedap', 4, 3200, 2500, '2019-12-20 09:24:13'),
(7, 3, 'Potabeee potato chips', 'produk/16ubO6XZETYYY.jpeg', 'Potabee dengan berat 120g', 4, 16500, 15500, '2023-02-17 03:45:18'),
(10, 2, 'Fruit Tea', 'produk/16LfPhTXWWOg..jpeg', 'Fruit Tea Blackcurrant Botol 350ML', 5, 3900, 3000, '2023-02-17 03:54:55'),
(11, 2, 'Ichitan Thai Milk Tea', 'produk/16Ad73OcATRMM.jpeg', 'Ichitan Thai Milk Tea 310ML', 5, 9200, 8800, '2023-02-17 03:56:29'),
(12, 4, 'Minyak goreng Fortune', 'produk/160QfsKefDKzA.jpg', 'Minyak Goreng Kemasan Dengan berat 2L', 5, 33500, 32000, '2023-02-17 04:05:34'),
(14, 1, 'Sari roti', 'produk/16er2jn.HOOyQ.jpg', 'Sari roti, Roti tawar', 3, 15000, 12000, '2023-06-07 01:52:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indeks untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
