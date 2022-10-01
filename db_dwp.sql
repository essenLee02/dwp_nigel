-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2022 pada 19.07
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dwp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(15) NOT NULL,
  `nama_customer` varchar(70) DEFAULT NULL,
  `alamat_customer` varchar(120) DEFAULT NULL,
  `email_customer` varchar(70) DEFAULT NULL,
  `telp_customer` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`, `email_customer`, `telp_customer`) VALUES
('AR002', 'Armando Edo', 'Kupang Gunung 2/No. 13', 'edo1249@gmail.com', '082726138'),
('DI001', 'Dimas Kerto', 'Simpang Darmo Permai IX/09', 'dimas@gmail.com', '0886965654'),
('DI005', 'Dian Astuti', 'Malioboro VII/No.21', 'didi009@visiniaga.com', '0988921'),
('DO006', 'Dora', 'Tiang asem', 'dora@gmail.com', '20492911'),
('HA004', 'Hari Teshan', 'Wilo_Asem III/No 36', 'hari_2r@gmail.com', '088667913'),
('HA007', 'Hasan Jaya', 'Ciputra Eshan No 4 Blok A', 'han@gmail.com', '089981617'),
('RE003', 'Retha Richardo', 'Ngagel Jaya Utara', 'retha@gmail.com', '0827612767');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(15) NOT NULL,
  `nama_produk` varchar(70) NOT NULL,
  `harga_produk` int(10) NOT NULL,
  `layan_produk` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `layan_produk`) VALUES
('BA001', 'Basic', 20000, 'Macam-macam'),
('BI003', 'Bisnis', 150000, 'Super lengkap'),
('PR002', 'Profesional', 70000, 'Pelayanan Khusus'),
('UN004', 'Unlimited', 20000000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_user` varchar(15) NOT NULL,
  `nama_user` varchar(70) DEFAULT NULL,
  `username_user` varchar(70) DEFAULT NULL,
  `password_user` varchar(140) DEFAULT NULL,
  `refresh_token_user` text DEFAULT NULL,
  `status_user` int(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `id_user`, `nama_user`, `username_user`, `password_user`, `refresh_token_user`, `status_user`, `createdAt`, `updatedAt`) VALUES
(1, 'AD001', 'Aditya Fernando', 'nando', '$2b$10$IbnnhOAoW7f2MDIQe73KXOIy1VxmetHeiOyjNPVONv56rqcKT2EBW', NULL, 1, '2022-09-30 16:45:42', '2022-09-30 16:45:42'),
(2, 'LE002', 'Lewi Supranata', 'lewi', '$2b$10$UFFnIdsrivcvk7URYdvixuUNNJB2IHQHXXTYT8RIaKb4V/dw.XHrS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJMRTAwMiIsInVzZXJOYW1lIjoiTGV3aSBTdXByYW5hdGEiLCJ1c2VyVXNlcm5hbWUiOiJsZXdpIiwiaWF0IjoxNjY0NjM3NjQwLCJleHAiOjE2NjQ3MjQwNDB9.KREe3n2HB23worn6xdmqHoHXj_rLIFS15ueBFmce-qI', 1, '2022-09-30 16:53:45', '2022-10-01 15:20:40'),
(3, 'RE003', 'Retna Ajeng', 'retna', '$2b$10$Zes8JB.3XwI.SVH/0Oe3WOkBK9fjGWzHOvbo/RS95vnoCc4jPsVEi', NULL, 1, '2022-09-30 16:55:08', '2022-09-30 16:55:08'),
(4, 'FI004', 'Fiko Aditama', 'fiko', '$2b$10$fKfcCN43.d4Tiq8wOv7gaO8QbKEfRbWdLzHJEf4Zcwpcw480llVrS', NULL, 1, '2022-09-30 16:56:17', '2022-09-30 16:56:17'),
(5, 'KE005', 'Kevin Wijaya', 'kevin', '$2b$10$xcPOyD75mjZy7fo6D2241OeFuj/hnlUq0EGRtvjNiAQZ7Y5w3gv1e', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJLRTAwNSIsInVzZXJOYW1lIjoiS2V2aW4gV2lqYXlhIiwidXNlclVzZXJuYW1lIjoia2V2aW4iLCJpYXQiOjE2NjQ2NDIxNTEsImV4cCI6MTY2NDcyODU1MX0.flgQYF8dGbOD0-fJCdKWFIvHTLJ1FX0_Dcpp2isPERg', 1, '2022-09-30 16:59:11', '2022-10-01 16:35:51'),
(6, 'AL006', 'Alexander Liem', 'alex', '$2b$10$STGsSZAY4mjD2Yq8Pxnr4ujGYtFeZPbBjNEttNlPuKlicdc8aTkLm', NULL, 1, '2022-10-01 00:19:27', '2022-10-01 00:19:27'),
(7, 'ST007', 'Stefanus Nigel', 'nigel', '$2b$10$qunNICbGLO/iBXHsrq79aeju3iRuvLbjuulLdqZd9VCziT1I3hhcW', NULL, 1, '2022-10-01 00:53:09', '2022-10-01 00:53:09'),
(8, 'RA008', 'Radika Al Hakim', 'radika', '$2b$10$SRcfuN9HzHbZE5pF8DgXauaJm2fiV8eh9jlios5T6SvgbmdF0DylK', NULL, 1, '2022-10-01 00:57:07', '2022-10-01 00:57:07'),
(9, 'NI009', 'Nia Agartha', 'nia', '$2b$10$VBiiuoE/jUrz4TRLBaA/UewQv2p12HX6Mc4WSoD8ya2hXJRjZyUl2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJOSTAwOSIsInVzZXJOYW1lIjoiTmlhIEFnYXJ0aGEiLCJ1c2VyVXNlcm5hbWUiOiJuaWEiLCJpYXQiOjE2NjQ2MzAyOTMsImV4cCI6MTY2NDcxNjY5M30.BN-rh_74iFYNtm-0ZYdoKqyF6xT8XPnz7tzkD5o7tmg', 1, '2022-10-01 01:02:40', '2022-10-01 13:18:13'),
(10, 'FE010', 'Felix Siau', 'felix', '$2b$10$rgNuSD0dq1yC/QRUPPPkKOf8yuGVoW7vBsLaN/eS1.gpPE.qdNHAu', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJGRTAxMCIsInVzZXJOYW1lIjoiRmVsaXggU2lhdSIsInVzZXJVc2VybmFtZSI6ImZlbGl4IiwiaWF0IjoxNjY0NTg3MzA2LCJleHAiOjE2NjQ2NzM3MDZ9.RHQLUzbOSFx3HqOrJsYq5E03QE5HB-KRp7C8gR9c9wU', 1, '2022-10-01 01:03:42', '2022-10-01 01:21:46'),
(11, 'LI011', 'Lia Hartanto', 'lia', '$2b$10$XDE4wHnjPa6GMOLZSG4UK.rJfzAoEjL0W4rxbrqwZGxsirh1oytSG', NULL, 1, '2022-10-01 01:08:32', '2022-10-01 01:08:32'),
(12, 'AL012', 'Alexander Liem', 'alex', '$2b$10$vj4MrpSa.MkmVL6c6yiLa.lRYfmVnUu1vlVcR1okK5gzNwg4zSn5S', NULL, 1, '2022-10-01 08:24:31', '2022-10-01 08:24:31'),
(13, 'AL013', 'Alexander Liem', 'alex', '$2b$10$D2z5azTb3XpbqXpham/2eubqjc70qGcUcZ5ZoLv9gEI00VwM1sxcO', NULL, 1, '2022-10-01 08:34:58', '2022-10-01 08:34:58'),
(14, 'AL014', 'Alexander Liem', 'alex', '$2b$10$b2QZ1bRyI5L9IjTXvAMwtuRkycVIEGiCXyZvJGYX0ty2NjcdxWwmq', NULL, 1, '2022-10-01 10:56:23', '2022-10-01 10:56:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
