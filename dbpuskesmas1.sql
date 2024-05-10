-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2024 pada 14.54
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpuskesmas1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `kode` int(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`kode`, `nama`, `alamat`, `email`, `tgl_lahir`) VALUES
(1209, 'Dr. Ananda Putri', 'Jl. Pahlawan No. 20', 'anandaputriworkspace@gmail.com', '1990-04-18'),
(1210, 'Dr. Budi Santoso', 'Perumahan Harapan Baru Blok C3', 'dr.budisantoso@gmail.com', '2023-10-05'),
(1211, 'Dr. Cindy Rahayu', 'Jl. Merdeka Timur No. 15A', 'cindyrahayuu@gmail.com', '2024-04-12'),
(1212, 'Dr. Sayuti Jajari', 'Komplek Taman Indah Blok B2', 'jajari@gmail.com', '2023-12-21'),
(1213, 'Dr. Eko Gunawan', 'Jl. Melati No. 10', 'Ekoogunan@gmail.com', '1996-02-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kec_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama`, `kec_id`) VALUES
(1, 'Banyuedan', 1615),
(2, 'Tulungsari', 1670),
(3, 'Bekasi', 1690),
(4, 'Limo', 1680),
(5, 'Telukraja', 1870);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan_id`
--

CREATE TABLE `kelurahan_id` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kec_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelurahan_id`
--

INSERT INTO `kelurahan_id` (`id`, `nama`, `kec_id`) VALUES
(0, 'Bekasi', '0'),
(1, 'Padajaya', '2'),
(2, 'Bulakmaju', '3'),
(3, 'Ngadiraja', '4'),
(4, 'Tulungawi', '8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('perempuan','laki-laki','','') NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelurahan_id` int(11) NOT NULL,
  `aksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `kode`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `email`, `alamat`, `kelurahan_id`, `aksi`) VALUES
(0, '2023', 'Hernanda ayu', 'Sumedang ', '2017-04-12', 'perempuan', 'waduhngeri@gmail.com', 'Jl. padjajaran rt 03 rw 5', 0, 0),
(1, '2000', 'Amel Sari', 'Bogor', '2019-04-03', 'perempuan', 'sariiamelteh@gmail.com', 'Jl. Raya abadi perumahan griya sentosa', 2, 23),
(2, '1987', 'Satrio Wibowo', 'Depok', '2003-04-11', 'laki-laki', 'satsatwib@gmail.com', 'Jl. Adipati Brokenheart rt 08 rw 05', 3, 50),
(3, '1209', 'Abyymanyu', 'cikarang', '2004-04-08', 'laki-laki', 'Satriaaaa@gmail.com', 'Jl. Sukmamurni rt 04 rw 07 ', 4, 70),
(4, '309', 'Harum wangi ', 'Bekasi', '2000-04-06', 'perempuan', 'Haruuumnyaa@gmail.com', 'Jl. Pekan raya baru indah rt 02 rw 01', 8, 4097);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_administrasi`
--

CREATE TABLE `unit_administrasi` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `unit_administrasi`
--

INSERT INTO `unit_administrasi` (`id`, `nama`, `email`, `alamat`) VALUES
(1, 'Rizki Maulana', 'Rizz@gmail.com', 'Cluster Flamboyan Jl. Merdeka No. 8, Denpasar'),
(2, 'Sari Fitriani', 'fitrias@gmail.com', 'Perumahan Bumi Sejahtera Blok E2, Medan'),
(3, 'Dedi Santoso', 'Dedisantosoo@gmail.com', 'Jl. Anggrek Biru No. 25, Surabaya'),
(4, 'Intan Permata', 'saintan@gmail.com', 'Komplek Citra  Blok D3, Jakarta'),
(5, 'Ari Wijaya', 'jayabadi@gmail.com', 'Jl. Surya Kencana No. 10, Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_farmasi`
--

CREATE TABLE `unit_farmasi` (
  `id` int(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `unit_farmasi`
--

INSERT INTO `unit_farmasi` (`id`, `nama`, `alamat`, `email`, `tanggal_lahir`) VALUES
(1450, 'Amel Sari', 'Jl. Merdeka No. 10, Jakarta Selatan', 'sarimusaro@gmail.com', '2004-03-20'),
(1451, 'Dhanan Wijaya', 'Perumahan Bumi Indah Blok C3, Bandung', 'wijaya@gmail.com', '2015-01-07'),
(1452, 'Bagas Saputra', 'Komplek Permata Hijau Jl. Anggrek No. 5, Surabaya', 'bbagasu@gmail.com', '2006-10-07'),
(1453, 'Agung Nugroho', 'Jl. Diponegoro No. 25, Medan', 'Sayusaya@gmail.com', '2014-04-22'),
(1454, 'Iwan Santoso', 'Cluster Flamboyan Jl. Cendrawasih No. 8, Denpasar', 'Iwhansan@gmail.com', '2016-05-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `username` varchar(70) NOT NULL,
  `name` varchar(70) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `password`, `role`) VALUES
(1, 'admin', 'Melani Putri Banowati', 'admin123', 'admin'),
(2, 'mela', 'Melani Putri Banowati', '7e211239c287c37ca9777318740f1a66', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
