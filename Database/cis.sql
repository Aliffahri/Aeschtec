-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Apr 2015 pada 08.38
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli`
--

CREATE TABLE IF NOT EXISTS `beli` (
  `ID_BELI` char(6) NOT NULL,
  `ID_SUPPLIER` char(6) NOT NULL,
  `ID_PENGELUARAN` char(6) NOT NULL,
  `TANGGAL_BELI` date DEFAULT NULL,
  `SUB_TOTAL` int(11) DEFAULT NULL,
  `PPN_BELI` decimal(10,0) DEFAULT NULL,
  `TOTAL_BELI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_beli`
--

CREATE TABLE IF NOT EXISTS `detail_beli` (
  `ID_DETAIL_BELI` char(250) NOT NULL,
  `ID_OBAT` char(6) NOT NULL,
  `ID_BELI` char(6) NOT NULL,
  `QTY_DETAIL_BELI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_resep_obat`
--

CREATE TABLE IF NOT EXISTS `detail_resep_obat` (
  `ID_DETAIL_RESEP` char(6) NOT NULL,
  `ID_REKAM_MEDIS` char(6) NOT NULL,
  `ID_OBAT` char(6) NOT NULL,
  `QTY_DETAIL_RESEP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi_obat`
--

CREATE TABLE IF NOT EXISTS `detail_transaksi_obat` (
  `ID_DETAIL_TRANSAKSI_OBAT` char(6) NOT NULL,
  `ID_TRANSAKSI_OBAT` varchar(6) NOT NULL,
  `ID_OBAT` char(6) NOT NULL,
  `QTY_DETAIL_TRANSAKSI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `ID_DOKTER` char(6) NOT NULL,
  `ID_POLI` varchar(6) NOT NULL,
  `NAMA_DOKTER` varchar(20) DEFAULT NULL,
  `ALAMAT_DOKTER` varchar(50) DEFAULT NULL,
  `TGL_LAHIR_DOKTER` date DEFAULT NULL,
  `TELEPON_DOKTER` varchar(16) DEFAULT NULL,
  `JENIS_KELAMIN_DOKTER` varchar(1) DEFAULT NULL,
  `AGAMA_DOKTER` varchar(10) DEFAULT NULL,
  `PASSWORD_DOKTER` varchar(10) DEFAULT NULL,
  `NO_IJIN` varchar(16) DEFAULT NULL,
  `TARIF_DOKTER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`ID_DOKTER`, `ID_POLI`, `NAMA_DOKTER`, `ALAMAT_DOKTER`, `TGL_LAHIR_DOKTER`, `TELEPON_DOKTER`, `JENIS_KELAMIN_DOKTER`, `AGAMA_DOKTER`, `PASSWORD_DOKTER`, `NO_IJIN`, `TARIF_DOKTER`) VALUES
('DOK001', 'pol001', 'DR. RETNO WISASTI, S', 'JL. WR. SUPRATMAN 59 SURABAYA TIMUR/GUBENG', '1975-03-18', '0315674360', 'P', 'ISLAM', 'dok001retn', 'd20030001rs', 50000),
('DOK002', 'pol001', 'DR. FADJAR ARIBOWO', 'JL. KAPAS KRAMPUNG NO. 148 SURABAYA TIMUR', '1969-08-10', '0315033748', 'L', 'ISLAM', 'dok002fadj', 'd20010002fa', 50000),
('DOK003', 'pol001', 'DRG. DYAH AYU R. W.', 'JL. TIDAR NO. 94 SURABAYA UTARA', '1972-05-25', '0315451530', 'P', 'ISLAM', 'dok003dyah', 'd20050003darw', 50000),
('DOK004', 'pol002', 'DRG. BACHTIAR EFFEND', 'JL. TIDAR NO. 81 SURABAYA UTARA', '1965-10-17', '0315468955', 'L', 'KRISTEN', 'dok004bach', 'd19990004be', 50000),
('DOK005', 'pol002', 'DR. NUGROHO TJANDRA ', 'JL. KAPUAS NO. 54 SURABAYA PUSAT', '1965-03-01', '0315686907', 'L', 'KRISTEN', 'dok005nugr', 'd20000005ntw', 50000),
('DOK006', 'pol002', 'DR. I NYOMAN ADNYANA', 'JL. RAYA DHARMAHUSADA INDAH BLOK A NO.26 SURABAYA ', '1962-02-21', '03170679810', 'L', 'HINDU', 'dok006nyom', 'd20000006ina', 65000),
('DOK007', 'pol003', 'DR. BUDIARTO, SP. PK', 'JL. JEMURSARI NO. 4 SURABAYA SELATAN', '1966-03-23', '0318418414', 'L', 'ISLAM', 'dok007budi', 'd20020007b', 65000),
('DOK008', 'pol003', 'DR. MARIANA HAROEN, ', 'JL. KEDUNGSARI NO. 121 SURABAYA UTARA', '1970-09-07', '0315341027', 'P', 'KRISTEN', 'dok008mari', 'd20010008mh', 65000),
('DOK009', 'pol004', 'DR. RAHARDJO ARIYO M', 'JL. TEGALSARI NO. 7 SURABAYA UTARA', '1976-07-13', '0315344239', 'L', 'ISLAM', 'dok009raha', 'd20040009ram', 30000),
('DOK010', 'pol004', 'DR. HERI KABULLAH, S', 'JL. TANJUNG PERAK TIMUR NO. 160 SURABAYA UTARA', '1967-05-14', '0313522429', 'L', 'ISLAM', 'dok010heri', 'd20030010hk', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `ID_JADWAL` char(6) NOT NULL,
  `ID_DOKTER` char(6) NOT NULL,
  `HARI` varchar(10) DEFAULT NULL,
  `JAM` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kadaluarsa_obat`
--

CREATE TABLE IF NOT EXISTS `kadaluarsa_obat` (
  `ID_KADALUARSA_OBAT` char(6) NOT NULL,
  `ID_OBAT` char(6) NOT NULL,
  `TANGGAL_KADALUARSA_OBAT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `ID_OBAT` char(6) NOT NULL,
  `NAMA_OBAT` varchar(20) DEFAULT NULL,
  `DOSIS` decimal(10,0) DEFAULT NULL,
  `KETERANGAN_OBAT` text,
  `STOK_OBAT` int(11) DEFAULT NULL,
  `PABRIK_OBAT` varchar(20) DEFAULT NULL,
  `JENIS_OBAT` varchar(20) DEFAULT NULL,
  `KEMASAN` varchar(25) NOT NULL,
  `HARGA_OBAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `ID_PASIEN` char(6) NOT NULL,
  `NAMA_PASIEN` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `NO_TELEPON` varchar(16) DEFAULT NULL,
  `UMUR` char(3) DEFAULT NULL,
  `AGAMA` varchar(10) DEFAULT NULL,
  `PEKERJAAN` varchar(30) DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(10) DEFAULT NULL,
  `NO_BPJS_PASIEN` varchar(16) DEFAULT NULL,
  `GOL_DARAH` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`ID_PASIEN`, `NAMA_PASIEN`, `ALAMAT`, `JENIS_KELAMIN`, `TGL_LAHIR`, `NO_TELEPON`, `UMUR`, `AGAMA`, `PEKERJAAN`, `TEMPAT_LAHIR`, `NO_BPJS_PASIEN`, `GOL_DARAH`) VALUES
('PAS001', 'DEWI', 'ASEM ROWO NO.12, SURABAYA', 'L', '1982-02-02', '085742122341', '33', 'ISLAM', 'IBU RUMAH TANGGA', 'SURABAYA', NULL, 'AB'),
('PAS002', 'ADI PURTANTO', 'KETINTANG NO.11 SURABAYA', 'L', '1994-05-13', '08574565321', '21', 'ISLAM', 'MAHASISWA', 'JAKARTA', NULL, 'O'),
('PAS003', 'SAIDI', 'GUNUNG SARI INDAH NO. 28, SURABAYA', 'L', '1992-08-23', '08992123412', '23', 'HINDU', 'PNS', 'JAKARTA', NULL, 'AB'),
('PAS004', 'AYUNDA', 'RUNGKUT ASRI INDAH NO.22, SURABAYA', 'P', '1996-01-12', '0312114214', '19', 'ISLAM', 'MAHASISWA', 'SURABAYA', NULL, 'B'),
('PAS005', 'ASTUTI', 'MULYOSARI TIMUR NO.21, SURABAYA', 'P', '1889-03-22', '0899453463', '26', 'KRISTEN', 'WIRASWASTA', 'SEMARANG', NULL, 'AB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan`
--

CREATE TABLE IF NOT EXISTS `pemasukan` (
  `ID_PEMASUKAN` char(6) NOT NULL,
  `TANGGAL_PEMASUKAN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `ID_PENDAFTARAN` char(6) NOT NULL,
  `ID_PETUGAS` char(6) NOT NULL,
  `ID_DOKTER` char(6) NOT NULL,
  `ID_PASIEN` char(6) NOT NULL,
  `ID_POLI` varchar(6) NOT NULL,
  `TGL_PERIKSA` date DEFAULT NULL,
  `KELUHAN` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `ID_PENGELUARAN` char(6) NOT NULL,
  `TANGGAL_PENGELUARAN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `ID_PENYAKIT` char(6) NOT NULL,
  `NAMA_PENYAKIT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `ID_PETUGAS` char(6) NOT NULL,
  `NAMA_PETUGAS` varchar(20) DEFAULT NULL,
  `JABATAN_PETUGAS` varchar(10) DEFAULT NULL,
  `ALAMAT_PETUGAS` varchar(50) DEFAULT NULL,
  `TELEPON_PETUGAS` varchar(16) DEFAULT NULL,
  `TGL_LAHIR_PETUGAS` date DEFAULT NULL,
  `JENIS_KELAMIN_PETUGAS` varchar(2) DEFAULT NULL,
  `AGAMA_PETUGAS` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PASSWORD_PETUGAS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`ID_PETUGAS`, `NAMA_PETUGAS`, `JABATAN_PETUGAS`, `ALAMAT_PETUGAS`, `TELEPON_PETUGAS`, `TGL_LAHIR_PETUGAS`, `JENIS_KELAMIN_PETUGAS`, `AGAMA_PETUGAS`, `PASSWORD_PETUGAS`) VALUES
('PET001', 'JESSICA', 'KASIR', 'JL. KAYON NO. 3 SURABAYA TIMUR', '081330734979', '1993-02-10', 'P', 'KRISTEN', 'PET001JESS'),
('PET002', 'ALIF', 'KASIR', 'JL. GUBENG POJOK NO. 21 SURABAYA TIMUR', '0315310069', '1991-11-03', 'L', 'ISLAM', 'PET002ALIF'),
('PET003', 'YULIASTI', 'APOTEKER', 'JL. KAYON NO. 3 SURABAYA ', '0315345426', '1992-08-11', 'P', 'KRISTEN', 'PET003YULI'),
('PET004', 'MELLA', 'APOTEKER', 'JL. KARAH INDAH H – 18 SURABAYA BARAT', '0318299815', '1990-08-12', 'P', 'ISLAM', 'PET004MELL'),
('PET005', 'INDYKA', 'APOTEKER', 'JL. KAPAS KRAMPUNG NO. 123 SURABAYA TIMUR', '0313719012', '1991-05-07', 'L', 'ISLAM', 'PET005INDY'),
('PET006', 'MERRY', 'PERAWAT', 'JL. RAYA TENGGILIS C NO. 10 SURABAYA SELATAN', '0318411821', '1990-07-15', 'P', 'ISLAM', 'PET006MERR'),
('PET007', 'TRIYAH', 'PERAWAT', 'JL. NGAGEL JAYA NO. 81 SURABAYA SELATAN', '0315054096', '1991-04-07', 'P', 'ISLAM', 'PET007TRIY'),
('PET008', 'MELINDA', 'PERAWAT', 'JALAN MULYOREJO TENGAH NO 30 SURABAYA', '0313425128', '1989-11-14', 'P', 'ISLAM', 'PET008MELI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poliklinik`
--

CREATE TABLE IF NOT EXISTS `poliklinik` (
  `ID_POLI` varchar(6) NOT NULL,
  `NAMA_POLI` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `poliklinik`
--

INSERT INTO `poliklinik` (`ID_POLI`, `NAMA_POLI`) VALUES
('pol001', 'Poli Umum'),
('pol002', 'Poli KIA'),
('pol003', 'Poli Gigi'),
('pol004', 'Poli Mata');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE IF NOT EXISTS `rekam_medis` (
  `ID_REKAM_MEDIS` char(6) NOT NULL,
  `ID_DOKTER` char(6) NOT NULL,
  `ID_PASIEN` char(6) NOT NULL,
  `ID_PENYAKIT` char(6) NOT NULL,
  `TGL_REKAM_MEDIS` date DEFAULT NULL,
  `ALERGI_OBAT` text,
  `ANAMNESE` text,
  `PEMERIKSAAN` text,
  `TERAPI` text,
  `DIAGNOSA` text,
  `HASIL` text,
  `STATUS` text,
  `KETERANGAN_OBAT_RM` text,
  `RUJUKAN_DOKTER` text,
  `TINDAKAN_DOKTER_RM` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `ID_SUPPLIER` char(6) NOT NULL,
  `NAMA_SUPPLIER` varchar(30) DEFAULT NULL,
  `ALAMAT_SUPPLIER` varchar(50) DEFAULT NULL,
  `KOTA_SUPPLIER` varchar(20) DEFAULT NULL,
  `TELEPON_SUPPLIER` varchar(16) DEFAULT NULL,
  `NPWP_SUPPLIER` varchar(20) DEFAULT NULL,
  `JENIS_PAJAK_SUPPLIER` varchar(20) DEFAULT NULL,
  `KODE_PAJAK_SUPPLIER` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`ID_SUPPLIER`, `NAMA_SUPPLIER`, `ALAMAT_SUPPLIER`, `KOTA_SUPPLIER`, `TELEPON_SUPPLIER`, `NPWP_SUPPLIER`, `JENIS_PAJAK_SUPPLIER`, `KODE_PAJAK_SUPPLIER`) VALUES
('SUP001', 'PT HOLI PHARMACEUTICAL INDUSTR', 'JL . LEUWI GAJAH NO. 100 CIMINDI ', 'CIMAHI', '0318969078', '34.129.035.1-601.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP002', 'PT KIMIA FARMA', 'JL . CICENDO NO. 43 ', 'BANDUNG', '0226789012', '07.007.007.7-777.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP003', 'PT COMPHIPAR', 'JL . RAYA SIMPANG 383 PADALARANG', 'BANDUNG', '0223756112', '07.015.027.7-170.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP004', 'PT SANBE FARMA', 'L . INDUSTRI  I NO. 9 , DESA UTAMA, LEUWI GAJAH, C', 'CIMAHI', '0225722132', '34.127.041.1-602.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP005', 'PT GRACIA PHARMINDO', 'KAWASAN INDUSTRI DWI PAPURI  BLOK M­30 JL . RAYA R', 'BANDUNG', '0223755216', '07.105.222.7-255.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP006', 'PT SANDOZ INDONESIA', 'JL . RAYA CARINGIN 363 PADALARANG', 'BANDUNG', '02237676521', '07.046.007.7-007.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP007', 'PT KASA HUSADA', 'JALAN KALI MAS BARAT NO. 17 – 19', 'SURABAYA', '0313566721', '12.130.010.3-127.000', 'PPH PASAL 15 FARMASI', 'PAJAKFAR3'),
('SUP008', 'PT HENSON FARMA', 'JL . KARANGPILANG BARAT NO. 200', 'SURABAYA', '03133547721', '12.050.010.3-130.000', 'PPH PASAL 15 FARMASI', 'PAJAKFAR3'),
('SUP009', 'PT DURAFARMA JAYA', 'JL . RUNGKUT INDUSTRI  VIII/22­24 ', 'SURABAYA', '0318439617', '12.034.006.3-157.000', 'PPH PASAL 15 FARMASI', 'PAJAKFAR3'),
('SUP010', 'PT SURYA DERMATO MEDICA', 'JL . RUNGKUT INDUSTRI  III/31', 'SURABAYA', '0318493209', '12.035.005.3-008.000', 'PPH PASAL 15 FARMASI', 'PAJAKFAR3'),
('SUP011', 'PT OTSUKA INDONESIA', 'JL . SUMBER WARAS NO. 25 LAWANG', 'MALANG', '0341426244', '21.006.129.5-002.000', 'PPH PASAL 22 FARMASI', 'PAJAKFAR2'),
('SUP012', 'PT WIRO SATIVA FARMINDO', 'JL . RAYA TAMAN KM 20, TANJUNGSARI  TAMAN', 'SIDOARJO', '0317881440', '22.012.129.7-110.000', 'PPH PASAL 15 FARMASI', 'PAJAKFAR3'),
('SUP013', 'PT BINTANG TOEDJOE', 'JL . RAWA SUMUR BARAT II / K­9 KAWASAN INDUSTRI  P', 'JAKARTA TIMUR', '0214605533', '01.120.007.01-003.00', 'PPH PASAL 23/26 FARM', 'PAJAKFAR1'),
('SUP014', 'PT DANKOS FARMA', 'JL . RAWA GATEL  BLOK III S / 37­38 KAWASAN INDUST', 'JAKARTA TIMUR', '0214600158', '01.130.007.01-005.00', 'PPH PASAL 23/26 FARM', 'PAJAKFAR1'),
('SUP015', 'PT MERCK INDONESIA', 'JL . TB SIMATUPANG NO. 8 PASAR REBO', 'JAKARTA', '0218400081', '01.140.007.01-007.00', 'PPH PASAL 23/26 FARM', 'PAJAKFAR1'),
('SUP016', 'PT PHAROS INDONESIA', 'JL . LIMO 40 PERMATA HIJAU, SENAYAN', 'JAKARTA', '0217200981', '01.123.007.01-013.00', 'PPH PASAL 23/26 FARM', 'PAJAKFAR1'),
('SUP017', 'PT INTERNASIONAL CHEMICAL', 'JL . DAAN MOGOT KM 11 RT 06/03  CENGKARENG', 'JAKARTA BARAT', '0216252752', '01.170.007.01-077.00', 'PPH PASAL 23/26 FARM', 'PAJAKFAR1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan_dokter`
--

CREATE TABLE IF NOT EXISTS `tindakan_dokter` (
  `ID_TINDAKAN_DOKTER` char(6) NOT NULL,
  `TINDAKAN_DOKTER` text,
  `BIAYA_TINDAKAN_DOKTER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tindakan_dokter`
--

INSERT INTO `tindakan_dokter` (`ID_TINDAKAN_DOKTER`, `TINDAKAN_DOKTER`, `BIAYA_TINDAKAN_DOKTER`) VALUES
('TD001', 'INFUS - PASANG', 40000),
('TD002', 'INFUS - LEPAS', 15000),
('TD003', 'INFUS - GANTI CAIRAN INFUS (SPOELING INFUS)', 25000),
('TD004', 'SUNTIK KB', 40000),
('TD005', 'SUNTIK UMUM', 40000),
('TD006', 'RAWAT LUKA - BAKAR (BESAR)', 60000),
('TD007', 'RAWAT LUKA - BAKAR (KECIL)', 40000),
('TD008', 'SIRCUMSISI (LASER / BIASA) - REPAIR KHITAN', 480000),
('TD009', 'CABUT GIGI', 50000),
('TD010', 'TAMBAL GIGI', 50000),
('TD011', 'MEMBERSIHKAN KARANG GIGI', 70000),
('TD012', 'BLEACHING (PEMUTIHAN GIGI)', 1500000),
('TD013', 'PASANG KAWAT (BEHEL GIGI)', 2500000),
('TD014', 'LEPAS BRECKET PER RAHANG', 70000),
('TD015', 'TINDAKAN THT - SPOELING', 50000),
('TD016', 'IMUNISASI', 40000),
('TD017', 'IMUNISASI HEPATITIS', 70000),
('TD018', 'JAHIT LUKA (HECTING)', 50000),
('TD019', 'BUKA JAHITAN', 30000),
('TD020', 'MEDICAL CHECK UP', 150000),
('TD021', 'CEK TENSI', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan_periksa`
--

CREATE TABLE IF NOT EXISTS `tindakan_periksa` (
  `ID_TINDAKAN_PERIKSA` char(6) NOT NULL,
  `ID_REKAM_MEDIS` char(6) NOT NULL,
  `ID_TINDAKAN_DOKTER` char(6) DEFAULT NULL,
  `ID_TRANSAKSI_PERIKSA` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_obat`
--

CREATE TABLE IF NOT EXISTS `transaksi_obat` (
  `ID_TRANSAKSI_OBAT` varchar(6) NOT NULL,
  `ID_PEMASUKAN` char(6) NOT NULL,
  `TANGGAL_JUAL` date DEFAULT NULL,
  `SUBTOTAL_TRANSAKSI_OBAT` int(11) DEFAULT NULL,
  `PPN_TRANSAKSI_OBAT` decimal(10,0) DEFAULT NULL,
  `TOTAL_TRANSAKSI_OBAT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_periksa`
--

CREATE TABLE IF NOT EXISTS `transaksi_periksa` (
  `ID_TRANSAKSI_PERIKSA` varchar(5) NOT NULL,
  `ID_DOKTER` char(6) NOT NULL,
  `ID_PEMASUKAN` char(6) NOT NULL,
  `ID_PASIEN` char(6) NOT NULL,
  `SUBTOTAL_TRANSAKSI_PERIKSA` int(11) DEFAULT NULL,
  `PPN_TRANSAKSI_PERIKSA` decimal(10,0) DEFAULT NULL,
  `TOTAL_TRANSAKSI_PERIKSA` int(11) DEFAULT NULL,
  `KLAIM_BPJS` varchar(7) DEFAULT NULL,
  `NO_KARTU_TRANSAKSI` varchar(18) DEFAULT NULL,
  `TANGGAL_TRANSAKSI_PERIKSA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
 ADD PRIMARY KEY (`ID_BELI`), ADD KEY `FK_DARI1` (`ID_SUPPLIER`), ADD KEY `FK_TERDIRI5` (`ID_PENGELUARAN`);

--
-- Indexes for table `detail_beli`
--
ALTER TABLE `detail_beli`
 ADD PRIMARY KEY (`ID_DETAIL_BELI`), ADD KEY `FK_BERISI5` (`ID_OBAT`), ADD KEY `FK_TERDIRI6` (`ID_BELI`);

--
-- Indexes for table `detail_resep_obat`
--
ALTER TABLE `detail_resep_obat`
 ADD PRIMARY KEY (`ID_DETAIL_RESEP`), ADD KEY `FK_BERISI1` (`ID_REKAM_MEDIS`), ADD KEY `FK_BERISI2` (`ID_OBAT`);

--
-- Indexes for table `detail_transaksi_obat`
--
ALTER TABLE `detail_transaksi_obat`
 ADD PRIMARY KEY (`ID_DETAIL_TRANSAKSI_OBAT`), ADD KEY `FK_BERISI3` (`ID_OBAT`), ADD KEY `FK_BERISI4` (`ID_TRANSAKSI_OBAT`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
 ADD PRIMARY KEY (`ID_DOKTER`), ADD KEY `FK_DIISI1` (`ID_POLI`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
 ADD PRIMARY KEY (`ID_JADWAL`), ADD KEY `FK_MEMILIH2` (`ID_DOKTER`);

--
-- Indexes for table `kadaluarsa_obat`
--
ALTER TABLE `kadaluarsa_obat`
 ADD PRIMARY KEY (`ID_KADALUARSA_OBAT`), ADD KEY `FK_MEMILIKI2` (`ID_OBAT`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
 ADD PRIMARY KEY (`ID_OBAT`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
 ADD PRIMARY KEY (`ID_PASIEN`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
 ADD PRIMARY KEY (`ID_PEMASUKAN`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
 ADD PRIMARY KEY (`ID_PENDAFTARAN`), ADD KEY `FK_DIPILIH1` (`ID_DOKTER`), ADD KEY `FK_MELAKUKAN1` (`ID_PASIEN`), ADD KEY `FK_MEMILIH1` (`ID_POLI`), ADD KEY `FK_MENGURUS1` (`ID_PETUGAS`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
 ADD PRIMARY KEY (`ID_PENGELUARAN`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
 ADD PRIMARY KEY (`ID_PENYAKIT`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
 ADD PRIMARY KEY (`ID_PETUGAS`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
 ADD PRIMARY KEY (`ID_POLI`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
 ADD PRIMARY KEY (`ID_REKAM_MEDIS`), ADD KEY `FK_DITULIS1` (`ID_DOKTER`), ADD KEY `FK_MEMILIKI1` (`ID_PASIEN`), ADD KEY `FK_MENGISI1` (`ID_PENYAKIT`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`ID_SUPPLIER`);

--
-- Indexes for table `tindakan_dokter`
--
ALTER TABLE `tindakan_dokter`
 ADD PRIMARY KEY (`ID_TINDAKAN_DOKTER`);

--
-- Indexes for table `tindakan_periksa`
--
ALTER TABLE `tindakan_periksa`
 ADD PRIMARY KEY (`ID_TINDAKAN_PERIKSA`), ADD KEY `FK_MENDAPATKAN2` (`ID_TINDAKAN_DOKTER`), ADD KEY `FK_TERDIRI3` (`ID_REKAM_MEDIS`), ADD KEY `FK_TERDIRI4` (`ID_TRANSAKSI_PERIKSA`);

--
-- Indexes for table `transaksi_obat`
--
ALTER TABLE `transaksi_obat`
 ADD PRIMARY KEY (`ID_TRANSAKSI_OBAT`), ADD KEY `FK_TERDIRI1` (`ID_PEMASUKAN`);

--
-- Indexes for table `transaksi_periksa`
--
ALTER TABLE `transaksi_periksa`
 ADD PRIMARY KEY (`ID_TRANSAKSI_PERIKSA`), ADD KEY `FK_DIISI2` (`ID_DOKTER`), ADD KEY `FK_MENDAPTKAN1` (`ID_PASIEN`), ADD KEY `FK_TERDIRI2` (`ID_PEMASUKAN`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `beli`
--
ALTER TABLE `beli`
ADD CONSTRAINT `FK_DARI1` FOREIGN KEY (`ID_SUPPLIER`) REFERENCES `supplier` (`ID_SUPPLIER`),
ADD CONSTRAINT `FK_TERDIRI5` FOREIGN KEY (`ID_PENGELUARAN`) REFERENCES `pengeluaran` (`ID_PENGELUARAN`);

--
-- Ketidakleluasaan untuk tabel `detail_beli`
--
ALTER TABLE `detail_beli`
ADD CONSTRAINT `FK_BERISI5` FOREIGN KEY (`ID_OBAT`) REFERENCES `obat` (`ID_OBAT`),
ADD CONSTRAINT `FK_TERDIRI6` FOREIGN KEY (`ID_BELI`) REFERENCES `beli` (`ID_BELI`);

--
-- Ketidakleluasaan untuk tabel `detail_resep_obat`
--
ALTER TABLE `detail_resep_obat`
ADD CONSTRAINT `FK_BERISI1` FOREIGN KEY (`ID_REKAM_MEDIS`) REFERENCES `rekam_medis` (`ID_REKAM_MEDIS`),
ADD CONSTRAINT `FK_BERISI2` FOREIGN KEY (`ID_OBAT`) REFERENCES `obat` (`ID_OBAT`);

--
-- Ketidakleluasaan untuk tabel `detail_transaksi_obat`
--
ALTER TABLE `detail_transaksi_obat`
ADD CONSTRAINT `FK_BERISI3` FOREIGN KEY (`ID_OBAT`) REFERENCES `obat` (`ID_OBAT`),
ADD CONSTRAINT `FK_BERISI4` FOREIGN KEY (`ID_TRANSAKSI_OBAT`) REFERENCES `transaksi_obat` (`ID_TRANSAKSI_OBAT`);

--
-- Ketidakleluasaan untuk tabel `dokter`
--
ALTER TABLE `dokter`
ADD CONSTRAINT `FK_DIISI1` FOREIGN KEY (`ID_POLI`) REFERENCES `poliklinik` (`ID_POLI`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
ADD CONSTRAINT `FK_MEMILIH2` FOREIGN KEY (`ID_DOKTER`) REFERENCES `dokter` (`ID_DOKTER`);

--
-- Ketidakleluasaan untuk tabel `kadaluarsa_obat`
--
ALTER TABLE `kadaluarsa_obat`
ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`ID_OBAT`) REFERENCES `obat` (`ID_OBAT`);

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
ADD CONSTRAINT `FK_DIPILIH1` FOREIGN KEY (`ID_DOKTER`) REFERENCES `dokter` (`ID_DOKTER`),
ADD CONSTRAINT `FK_MELAKUKAN1` FOREIGN KEY (`ID_PASIEN`) REFERENCES `pasien` (`ID_PASIEN`),
ADD CONSTRAINT `FK_MEMILIH1` FOREIGN KEY (`ID_POLI`) REFERENCES `poliklinik` (`ID_POLI`),
ADD CONSTRAINT `FK_MENGURUS1` FOREIGN KEY (`ID_PETUGAS`) REFERENCES `petugas` (`ID_PETUGAS`);

--
-- Ketidakleluasaan untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
ADD CONSTRAINT `FK_DITULIS1` FOREIGN KEY (`ID_DOKTER`) REFERENCES `dokter` (`ID_DOKTER`),
ADD CONSTRAINT `FK_MEMILIKI1` FOREIGN KEY (`ID_PASIEN`) REFERENCES `pasien` (`ID_PASIEN`),
ADD CONSTRAINT `FK_MENGISI1` FOREIGN KEY (`ID_PENYAKIT`) REFERENCES `penyakit` (`ID_PENYAKIT`);

--
-- Ketidakleluasaan untuk tabel `tindakan_periksa`
--
ALTER TABLE `tindakan_periksa`
ADD CONSTRAINT `FK_MENDAPATKAN2` FOREIGN KEY (`ID_TINDAKAN_DOKTER`) REFERENCES `tindakan_dokter` (`ID_TINDAKAN_DOKTER`),
ADD CONSTRAINT `FK_TERDIRI3` FOREIGN KEY (`ID_REKAM_MEDIS`) REFERENCES `rekam_medis` (`ID_REKAM_MEDIS`),
ADD CONSTRAINT `FK_TERDIRI4` FOREIGN KEY (`ID_TRANSAKSI_PERIKSA`) REFERENCES `transaksi_periksa` (`ID_TRANSAKSI_PERIKSA`);

--
-- Ketidakleluasaan untuk tabel `transaksi_obat`
--
ALTER TABLE `transaksi_obat`
ADD CONSTRAINT `FK_TERDIRI1` FOREIGN KEY (`ID_PEMASUKAN`) REFERENCES `pemasukan` (`ID_PEMASUKAN`);

--
-- Ketidakleluasaan untuk tabel `transaksi_periksa`
--
ALTER TABLE `transaksi_periksa`
ADD CONSTRAINT `FK_DIISI2` FOREIGN KEY (`ID_DOKTER`) REFERENCES `dokter` (`ID_DOKTER`),
ADD CONSTRAINT `FK_MENDAPTKAN1` FOREIGN KEY (`ID_PASIEN`) REFERENCES `pasien` (`ID_PASIEN`),
ADD CONSTRAINT `FK_TERDIRI2` FOREIGN KEY (`ID_PEMASUKAN`) REFERENCES `pemasukan` (`ID_PEMASUKAN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
