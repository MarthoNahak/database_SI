-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2023 pada 15.35
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `Id_kritik_saran` int(25) NOT NULL,
  `Id_Pelanggan` int(50) NOT NULL,
  `Alamat_admin` varchar(100) NOT NULL,
  `No_Hp_Admin` int(15) NOT NULL,
  `Id_Konsumen` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `Id_barang` int(25) NOT NULL,
  `Nama_barang` varchar(50) NOT NULL,
  `deskripisi_barang` varchar(100) NOT NULL,
  `Harga_barang` varchar(50) NOT NULL,
  `Jumlah_barang` int(50) NOT NULL,
  `Id_Distributor` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_distributor`
--

CREATE TABLE `tb_distributor` (
  `Id_distributor` int(50) NOT NULL,
  `Nama_distributor` varchar(50) NOT NULL,
  `Alamat_didtributor` varchar(50) NOT NULL,
  `No_Hp_disributor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `Id_Konsumen` int(11) NOT NULL,
  `Nama_Konsumen` varchar(50) NOT NULL,
  `Alamat_Komsumen` varchar(100) NOT NULL,
  `No_Telp_Konsumen` varchar(15) NOT NULL,
  `Email_Konsumen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `Id_Pelanggan` int(25) NOT NULL,
  `Nama_Pelanggan` varchar(50) NOT NULL,
  `No_Telp_Pelanggan` int(50) NOT NULL,
  `Email_Pelanggan` varchar(50) NOT NULL,
  `Jumlah_Poin_Pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penukaran_poin`
--

CREATE TABLE `tb_penukaran_poin` (
  `Id_penukaran` int(25) NOT NULL,
  `Id_pelanggan` int(50) NOT NULL,
  `Tanggal_Penukaran` varchar(50) NOT NULL,
  `Jumlah_Poin_Yang_DiTukar` int(50) NOT NULL,
  `Id_Barang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poin`
--

CREATE TABLE `tb_poin` (
  `Id_poin` int(25) NOT NULL,
  `Id_pelanggan` int(50) NOT NULL,
  `Jumlah_poin` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_transaksi_konsumen`
--

CREATE TABLE `tb_riwayat_transaksi_konsumen` (
  `Id_Konsumen` int(50) NOT NULL,
  `Id_transaksi_Konsumen` int(11) NOT NULL,
  `Tanggal_transaksi_konsumen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_transaksi_pelanggan`
--

CREATE TABLE `tb_riwayat_transaksi_pelanggan` (
  `Id_Pelanggan` int(25) NOT NULL,
  `Id_transaksi_pelanggan` int(25) NOT NULL,
  `Tanggal_transaksi_pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi_penjualan_konsumen`
--

CREATE TABLE `tb_transaksi_penjualan_konsumen` (
  `Id_transaksi_Konsumen` varchar(50) NOT NULL,
  `Tanggal_Transaksi_konsumen` varchar(50) NOT NULL,
  `Id_konsumen` int(11) NOT NULL,
  `Total_harga_Transaksi_konsumen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi_penjualan_pelanggan`
--

CREATE TABLE `tb_transaksi_penjualan_pelanggan` (
  `Id_transaksi_Pelanggan` varchar(50) NOT NULL,
  `Tanggal_Transaksi_Pelanggan` varchar(50) NOT NULL,
  `Id_Pelanggan` int(25) NOT NULL,
  `Total_harga_Transaksi_pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`Id_kritik_saran`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`),
  ADD KEY `Id_Konsumen` (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`Id_barang`),
  ADD KEY `Id_Distributor` (`Id_Distributor`);

--
-- Indeks untuk tabel `tb_distributor`
--
ALTER TABLE `tb_distributor`
  ADD PRIMARY KEY (`Id_distributor`);

--
-- Indeks untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`Id_Pelanggan`);

--
-- Indeks untuk tabel `tb_penukaran_poin`
--
ALTER TABLE `tb_penukaran_poin`
  ADD PRIMARY KEY (`Id_penukaran`),
  ADD KEY `Id_pelanggan` (`Id_pelanggan`),
  ADD KEY `Id_Barang` (`Id_Barang`);

--
-- Indeks untuk tabel `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD PRIMARY KEY (`Id_poin`),
  ADD KEY `Id_pelanggan` (`Id_pelanggan`);

--
-- Indeks untuk tabel `tb_riwayat_transaksi_konsumen`
--
ALTER TABLE `tb_riwayat_transaksi_konsumen`
  ADD PRIMARY KEY (`Id_transaksi_Konsumen`),
  ADD KEY `Id_Konsumen` (`Id_Konsumen`);

--
-- Indeks untuk tabel `tb_riwayat_transaksi_pelanggan`
--
ALTER TABLE `tb_riwayat_transaksi_pelanggan`
  ADD PRIMARY KEY (`Id_transaksi_pelanggan`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`);

--
-- Indeks untuk tabel `tb_transaksi_penjualan_konsumen`
--
ALTER TABLE `tb_transaksi_penjualan_konsumen`
  ADD PRIMARY KEY (`Id_transaksi_Konsumen`),
  ADD KEY `Id_konsumen` (`Id_konsumen`);

--
-- Indeks untuk tabel `tb_transaksi_penjualan_pelanggan`
--
ALTER TABLE `tb_transaksi_penjualan_pelanggan`
  ADD PRIMARY KEY (`Id_transaksi_Pelanggan`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_distributor`
--
ALTER TABLE `tb_distributor`
  MODIFY `Id_distributor` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `Id_Konsumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `Id_Pelanggan` int(25) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`),
  ADD CONSTRAINT `tb_admin_ibfk_2` FOREIGN KEY (`Id_Konsumen`) REFERENCES `tb_konsumen` (`Id_Konsumen`);

--
-- Ketidakleluasaan untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`Id_Distributor`) REFERENCES `tb_distributor` (`Id_distributor`);

--
-- Ketidakleluasaan untuk tabel `tb_penukaran_poin`
--
ALTER TABLE `tb_penukaran_poin`
  ADD CONSTRAINT `tb_penukaran_poin_ibfk_1` FOREIGN KEY (`Id_pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`),
  ADD CONSTRAINT `tb_penukaran_poin_ibfk_2` FOREIGN KEY (`Id_Barang`) REFERENCES `tb_barang` (`Id_barang`);

--
-- Ketidakleluasaan untuk tabel `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD CONSTRAINT `tb_poin_ibfk_1` FOREIGN KEY (`Id_pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_transaksi_konsumen`
--
ALTER TABLE `tb_riwayat_transaksi_konsumen`
  ADD CONSTRAINT `tb_riwayat_transaksi_konsumen_ibfk_1` FOREIGN KEY (`Id_Konsumen`) REFERENCES `tb_konsumen` (`Id_Konsumen`);

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_transaksi_pelanggan`
--
ALTER TABLE `tb_riwayat_transaksi_pelanggan`
  ADD CONSTRAINT `tb_riwayat_transaksi_pelanggan_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `tb_transaksi_penjualan_konsumen`
--
ALTER TABLE `tb_transaksi_penjualan_konsumen`
  ADD CONSTRAINT `tb_transaksi_penjualan_konsumen_ibfk_1` FOREIGN KEY (`Id_konsumen`) REFERENCES `tb_konsumen` (`Id_Konsumen`);

--
-- Ketidakleluasaan untuk tabel `tb_transaksi_penjualan_pelanggan`
--
ALTER TABLE `tb_transaksi_penjualan_pelanggan`
  ADD CONSTRAINT `tb_transaksi_penjualan_pelanggan_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `tb_pelanggan` (`Id_Pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
