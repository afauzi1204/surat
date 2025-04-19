-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 09:49 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_dispos`
--

CREATE TABLE `m_dispos` (
  `id_dispos` int(11) NOT NULL,
  `nama_bagian` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `m_dispos`
--

INSERT INTO `m_dispos` (`id_dispos`, `nama_bagian`) VALUES
(1, 'Bagian Keuangan'),
(2, 'Bagian Tata Usaha'),
(3, 'Bagian Kesiswaan'),
(4, 'Bagian Kurikulum'),
(5, 'Bagian Sarpras'),
(6, 'Bagian Humas'),
(7, 'Bagian Bursa Kerja Khusus'),
(8, 'Bagian Ekstra Kulikuler'),
(9, 'Bagian PIKR dan UKS'),
(10, 'Bagian Jurusan'),
(11, 'Kepala Sekolah'),
(12, 'Perusahaan/ DUDI'),
(13, 'Syarifudin, S.Pd'),
(14, 'Siti Umi Fadhilah'),
(15, 'Bagian Ketenagaan');

-- --------------------------------------------------------

--
-- Table structure for table `ref_klasifikasi`
--

CREATE TABLE `ref_klasifikasi` (
  `id` int(4) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_klasifikasi`
--

INSERT INTO `ref_klasifikasi` (`id`, `kode`, `nama`, `uraian`) VALUES
(1, 'TU.A01', 'Umum & Tata Usaha', 'Umum & Tata Usaha'),
(2, 'ORG.B01', 'Organisasi & Ortom', 'Organisasi dan Ortom'),
(3, 'KEU.C01', 'Keuangan', 'Keuangan'),
(4, 'HRD.D01', 'Personalia', 'Personalia'),
(5, 'AGM.E01', 'Keagamaan & Dakwah', 'Keagamaan & Dakwah'),
(6, 'PDK.F01', 'Pendidikan, Penelitian dan Latihan', 'Pendidikan, Penelitian dan Latihan'),
(7, 'EKO.G01', 'Perekonomian', 'Perekonomian'),
(8, 'KES.H01', 'Kesehatan, Sosial & Masyarakat', 'Kesehatan, Sosial & Masyarakat'),
(9, 'HAM.I01', 'Hukum, UU dan HAM', 'Hukum, UU dan HAM'),
(10, 'HMS.J01', 'Humas', 'Humas'),
(11, 'INF.K01', 'Infaq, Wakaf, Zakat Sedekah', 'Infaq, Wakaf, Zakat Sedekah'),
(12, 'DLL.O01', 'Lain-lain', 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `tb_asal_tujuan`
--

CREATE TABLE `tb_asal_tujuan` (
  `id_asal_tujuan` int(11) NOT NULL,
  `asal_tujuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_asal_tujuan`
--

INSERT INTO `tb_asal_tujuan` (`id_asal_tujuan`, `asal_tujuan`) VALUES
(1, 'Majelis Dikdasmen Cabang'),
(2, 'Majelis Dikdasmen Daerah'),
(3, 'Dinas Pendidikan Provinsi'),
(4, 'Siswa/orang Tua/ Wali'),
(5, 'Guru/Karyawan'),
(6, 'Perguruan/ Sekolah/ Universitas lain'),
(7, 'DAIHATSU Program PIntar Bersama Daihatsu'),
(8, 'Peroangan (Lamaran Pekerjaan)'),
(9, 'PT MANDALA DHARA NAGAPASA TALENTA NUSANTARA'),
(10, 'Pimpinan Cabang Muhammadiyah Kec. Sukorejo'),
(11, 'MUSYAWARAH KERJA KEPALA SEKOLAH SMK KABUPATEN KENDAL'),
(12, 'Dinas Kepemudaan, Olahraga dan Pariwisata'),
(13, 'DUDI/ Perusahaan'),
(14, 'DARI PERSYARIKATAN'),
(15, 'Instansi Pemerintahan Lain'),
(16, 'PIMPINAN DAERAH MUHAMMADIYAH KAB.KENDAL'),
(17, 'KETUA JURUSAN'),
(18, 'FORUM KOMUNIKASI'),
(19, 'Pimpinan Wilayah Muhammadiyah Jawa Tengah'),
(20, 'PEMERINTAH PROVINSI JAWA TENGAH'),
(21, 'KECAMATAN SUKOREJO'),
(22, 'PIMPINAN PUSAT MUHAMMADIYAH'),
(23, 'Masjid atau AUM lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `id` int(9) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(40) NOT NULL,
  `teruskan` varchar(255) NOT NULL,
  `ket` text NOT NULL,
  `sifat_dispos` varchar(50) NOT NULL,
  `batas` date NOT NULL,
  `indeks` varchar(100) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `tujuan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_disposisi`
--

INSERT INTO `tb_disposisi` (`id`, `no_surat`, `tgl_surat`, `tanggal_terima`, `asal_surat`, `sifat_surat`, `perihal`, `no_agenda`, `teruskan`, `ket`, `sifat_dispos`, `batas`, `indeks`, `kode_surat`, `tujuan`) VALUES
(1, '-', '2025-04-16', '2025-04-16', '23', 'b', 'Permohonan Kultum', '0001', '3', 'kirim siswa', 'Penting', '2025-04-17', '1', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `id` int(11) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `lembaga` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile`
--

INSERT INTO `tb_profile` (`id`, `kota`, `lembaga`, `alamat`, `telpon`, `foto`) VALUES
(1, 'Kabupaten Kendal', 'SMK Muhammadiyah 4 Sukorejo', 'Jl. Terminal bus No 2. Kebumen, Sukorejo, Kendal', '081558444434', 'logo smk mupat.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `id` int(9) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `kepada` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(50) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_surat_keluar`
--

INSERT INTO `tb_surat_keluar` (`id`, `no_surat`, `tgl_surat`, `kepada`, `sifat_surat`, `perihal`, `no_agenda`, `kode_surat`, `foto`, `tujuan`, `tahun`) VALUES
(1, '112/asd/1202', '2025-04-16', 1, 'Penting', 'lorem ipsum', '0001', 2, '3324031204990002_kartuUjianSkb.pdf', 0, '2025'),
(2, '3/fd/33', '2025-04-03', 1, 'Biasa', 'sad', '0002', 1, 'WhatsApp Image 2025-04-08 at 15.18.06_50648135.jpg', 0, '2025');

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(9) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_surat` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(20) NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `indeks` varchar(255) NOT NULL,
  `disposisi` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `tgl_surat`, `tanggal_terima`, `asal_surat`, `sifat_surat`, `perihal`, `no_agenda`, `file_surat`, `status`, `tujuan`, `kode_surat`, `indeks`, `disposisi`, `tahun`) VALUES
(1, '-', '2025-04-16', '2025-04-16', 23, 'b', 'Permohonan Kultum', '0001', 'Permohonan Kultum Balai Muh Selokaton.pdf', 1, 1, 5, '1', 3, '2025'),
(2, '32', '2025-04-14', '2025-04-14', 2, 'p', 'lorem ipsum', '0002', 'MAKLUMAT-1-HASIL-HISAB-2024.pdf', 0, 1, 1, '2', 0, '2025'),
(3, '12/sdfs/213', '2025-04-08', '2025-04-15', 1, 'b', 'sad', '0003', 'WhatsApp Image 2025-04-05 at 11.20.27_ccfae9bd.jpg', 0, 6, 1, '3', 0, '2025');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tujuan`
--

CREATE TABLE `tb_tujuan` (
  `id_tujuan` int(11) NOT NULL,
  `nama_tujuan` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tujuan`
--

INSERT INTO `tb_tujuan` (`id_tujuan`, `nama_tujuan`, `no_hp`) VALUES
(1, 'Shofiq Ghorbal (KS)', '62081228413301'),
(2, 'Hari Setiono (Ka. TU)', '6283838865674'),
(3, 'Nanang Ernawan (Humas)', '6285326539912'),
(4, 'Budi Setiawan (Kesiswaan)', '6285326539859'),
(5, 'Khoerul Huda (Kurikulum)', '6287836949575'),
(6, 'Sartana (Sarpras)', '6282329600575'),
(7, 'Presti Widiawanto ( K3 TKRO)', '6285601660309'),
(8, 'Hafiz Kurniawan (K3 TBSM)', '6285817330788'),
(9, 'Dewi Suryaningsih (K3 AK & Bank)', '6289503713392'),
(10, 'Widodo Adi Wijayanto (K3 RPL & Elin)', '6281390347770'),
(11, 'Nining Wardani (Bend BOS & Ketenagaan)', '6281578019923'),
(12, 'Nova Adi Gunawan( BKK )', '85200905353'),
(13, 'Agus HP (Koordinator BK)', '85226764639'),
(14, 'Siti Umi Fadhilah', '6285701276783');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_user` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `level_pimpinan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama_user`, `level`, `foto`, `level_pimpinan`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'logo smk mupat.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_dispos`
--
ALTER TABLE `m_dispos`
  ADD PRIMARY KEY (`id_dispos`);

--
-- Indexes for table `ref_klasifikasi`
--
ALTER TABLE `ref_klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_asal_tujuan`
--
ALTER TABLE `tb_asal_tujuan`
  ADD PRIMARY KEY (`id_asal_tujuan`);

--
-- Indexes for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_profile`
--
ALTER TABLE `tb_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  ADD PRIMARY KEY (`id_tujuan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_dispos`
--
ALTER TABLE `m_dispos`
  MODIFY `id_dispos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ref_klasifikasi`
--
ALTER TABLE `ref_klasifikasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_asal_tujuan`
--
ALTER TABLE `tb_asal_tujuan`
  MODIFY `id_asal_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_profile`
--
ALTER TABLE `tb_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  MODIFY `id_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
