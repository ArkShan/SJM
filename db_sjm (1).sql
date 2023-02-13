-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2023 pada 08.16
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sjm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_masuk`
--

CREATE TABLE `b_masuk` (
  `id_b` varchar(100) NOT NULL,
  `kode_b` varchar(100) NOT NULL,
  `nama_b` varchar(100) NOT NULL,
  `Jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `uid` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_b` int(100) NOT NULL,
  `kode_b` varchar(100) NOT NULL,
  `nama_b` varchar(500) NOT NULL,
  `tipe_mobil` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `pcs_dus` int(11) NOT NULL,
  `harga_p` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_b`, `kode_b`, `nama_b`, `tipe_mobil`, `kategori`, `harga`, `pcs_dus`, `harga_p`) VALUES
(1, 'B123', 'Astra', 'TOYOTA', 'KNALPOT', '500000', 500, '-'),
(2, 'B234', 'DOMBA', 'HONDA', 'STIR', '700,000', 600, '-'),
(3, 'B34', 'DOMBA', 'HONDA', 'STIR', '700,000', 0, '-'),
(4, 'B34', 'DOMBA', 'HONDA', 'STIR', '700,000', 0, '-'),
(5, 'B34', 'DOMBA', 'TOYOTA', 'KNALPOT', '500000', 20, '-'),
(6, 'B34', 'DOMBA', 'TOYOTA', 'KNALPOT', '500000', 20, '-'),
(7, 'B34', 'DOMBA', 'TOYOTA', 'KNALPOT', '500000', 20, '-'),
(8, '10A', 'Fuses DX', 'Universal', 'Brand Fuses DX', '260', 10, '-'),
(9, '10A', 'Fuses DX', 'Universal', 'Brand Fuses DX', '260', 10, '-'),
(10, '10A', 'Fuses DX', 'Universal', 'Brand Fuses DX', '260', 10, '-'),
(11, '10A', 'Fuses DX', 'Universal', 'Brand Fuses DX', '260', 10, '-'),
(12, '10A', 'Fuses DX', 'Universal', 'Brand Fuses DX', '260', 10, '-'),
(13, '10A', 'Fuses DX', 'Universal', 'Brand Fuses DX', '260', 10, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_register`
--

CREATE TABLE `tb_register` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `namadepan` varchar(100) NOT NULL,
  `namabelakang` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_register`
--

INSERT INTO `tb_register` (`id_user`, `email`, `namadepan`, `namabelakang`, `password`, `role`) VALUES
(1, 'malvin@gmail.com', 'Malvin', 'Adrianus', '123', 'Owner'),
(2, 'ken@gmail.com', 'Ken', 'Adrianus', '123', 'Sales'),
(3, 'kira@gmail.com', 'Kira', 'Yamato', '123', 'Gudang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uid`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_b`);

--
-- Indeks untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_b` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
