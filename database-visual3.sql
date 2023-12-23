-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table 2110010302visual3tugas.divisi
CREATE TABLE IF NOT EXISTS `divisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_divisi` varchar(50) DEFAULT NULL,
  `kode_divisi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 2110010302visual3tugas.divisi: ~5 rows (approximately)
INSERT INTO `divisi` (`id`, `nama_divisi`, `kode_divisi`) VALUES
	(1, 'Bidang Teknis Informasi', 101),
	(2, 'Bidang Tata Usaha', 102),
	(3, 'Bidang Keuangan', 103),
	(4, 'Bidang Humas', 104),
	(5, 'Bidang Tata Usaha', 105),
	(6, 'Section 8', 200);

-- Dumping structure for table 2110010302visual3tugas.klasifikasi
CREATE TABLE IF NOT EXISTS `klasifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `nomor` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 2110010302visual3tugas.klasifikasi: ~5 rows (approximately)
INSERT INTO `klasifikasi` (`id`, `nama`, `nomor`, `status`) VALUES
	(1, 'Balasan', 100, 'aktif'),
	(2, 'Himbauan', 200, 'aktif'),
	(3, 'Permohonan', 300, 'aktif'),
	(4, 'Rekomendasi', 400, 'aktif'),
	(5, 'Perjanjian', 500, 'nonaktif');

-- Dumping structure for table 2110010302visual3tugas.penerbit
CREATE TABLE IF NOT EXISTS `penerbit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_divisi` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `NIP` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_divisi` (`id_divisi`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `penerbit_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id`),
  CONSTRAINT `penerbit_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 2110010302visual3tugas.penerbit: ~7 rows (approximately)
INSERT INTO `penerbit` (`id`, `id_user`, `id_divisi`, `nama`, `NIP`, `jabatan`, `status`) VALUES
	(1, 12, 1, 'Muhammad Hamdani', '2110010302', 'Manajer Informasi', 'aktif'),
	(2, 2, 2, 'Muhammad Safirti', '2110010303', 'Supervisor', 'aktif'),
	(3, 3, 3, 'Dimas Adi Nugroho', '2110010304', 'Coordinator', 'aktif'),
	(4, 4, 1, 'Novriyan Ramadhan', '2110010305', 'Assistant Manager', 'aktif'),
	(5, 5, 2, 'Muhammad Athahillah', '2110010306', 'Kabid HRD', 'aktif'),
	(7, 6, 6, 'Dani Hamdani', '2110010302', 'auditor', 'aktif');

-- Dumping structure for table 2110010302visual3tugas.surat
CREATE TABLE IF NOT EXISTS `surat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_penerbit` int(11) DEFAULT NULL,
  `id_tujuan` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `tgl_berlaku` date DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tujuan` (`id_tujuan`),
  KEY `id_penerbit` (`id_penerbit`),
  KEY `id_jenis` (`id_jenis`),
  CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`id_tujuan`) REFERENCES `tujuan` (`id`),
  CONSTRAINT `surat_ibfk_2` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id`),
  CONSTRAINT `surat_ibfk_3` FOREIGN KEY (`id_jenis`) REFERENCES `klasifikasi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 2110010302visual3tugas.surat: ~7 rows (approximately)
INSERT INTO `surat` (`id`, `id_penerbit`, `id_tujuan`, `id_jenis`, `tgl_berlaku`, `detail`, `status`) VALUES
	(1, 1, 1, 1, '2023-01-01', 'Salam. Kami menyatakan telah menerima permintaan Anda untuk data penting yang berkaitan dengan upaya penelitian Anda tentang "Dampak Penggantian Asbes terhadap Perekonomian." Dengan senang hati kami memberi tahu Anda bahwa permintaan Anda telah disetujui.\r\n\r\nSesuai dengan protokol keamanan yang ketat, dengan menyesal kami sampaikan bahwa, karena alasan integritas dan kerahasiaan data, kami tidak dapat mengirimkan informasi yang diperlukan melalui saluran online. Oleh karena itu, kami dengan hormat meminta institusi Anda yang terhormat untuk mengatur perwakilan yang ditunjuk dari staf Anda untuk mengambil secara fisik data yang diperlukan dari tempat kami.\r\n\r\nTindakan pencegahan ini diterapkan untuk menjaga sifat sensitif informasi dan memastikan pertukaran yang lancar dengan mematuhi standar perlindungan data tertinggi.\r\n\r\nTerima kasih telah memilih untuk berkolaborasi dengan kami dalam inisiatif penelitian ini.', 'aktif'),
	(2, 2, 2, 2, '2022-02-01', 'Saya percaya pesan ini sampai pada Anda dengan baik. Mengingat tantangan yang masih ada akibat pandemi global Covid-19 saat ini, kami merasa penting untuk menyampaikan beberapa penyesuaian pada pengaturan kerja rutin kami.\r\n\r\nUntuk memastikan kesejahteraan dan keselamatan seluruh karyawan kami, kami telah memutuskan untuk menerapkan perubahan tertentu, yang berlaku segera dan hingga pemberitahuan lebih lanjut.\r\n\r\nUntuk staf produksi kami yang terhormat, akan ada pengurangan jam kerja untuk sementara. Kami memahami pentingnya menyeimbangkan kebutuhan operasional dengan kesehatan dan keselamatan tenaga kerja kami, dan penyesuaian ini merupakan upaya untuk mencapai keseimbangan tersebut.\r\n\r\nPada saat yang sama, anggota staf administrasi dan teknis kami akan dialihkan ke pengaturan bekerja dari rumah. Keputusan ini didorong oleh komitmen kami untuk menyediakan lingkungan kerja yang aman dan kondusif, selaras dengan pedoman kesehatan dan keselamatan yang berlaku.\r\n\r\nKami menyadari potensi tantangan yang mungkin ditimbulkan oleh penyesuaian ini dan meyakinkan Anda bahwa kami secara aktif berupaya mendukung kelancaran transisi selama periode ini.', 'nonaktif'),
	(3, 3, 3, 3, '2023-03-01', 'Saya harap pesan ini sampai kepada Anda dengan baik. Kami sedang dalam proses mempertimbangkan mitra potensial untuk audit keamanan informasi dan integritas sistem kami yang akan datang. Setelah melakukan penelitian menyeluruh, perusahaan Anda yang terhormat telah muncul sebagai kandidat kuat untuk upaya penting ini.\r\n\r\nUntuk memfasilitasi proses pengambilan keputusan kami, kami dengan hormat meminta katalog harga terperinci yang disesuaikan untuk memenuhi kebutuhan spesifik organisasi kami. Informasi harga Anda yang komprehensif akan memungkinkan kami membuat keputusan yang tepat mengenai aspek keuangan dalam menggunakan layanan Anda.\r\n\r\nSelain itu, kami ingin mendapatkan wawasan tentang kemampuan dan keahlian perusahaan Anda dalam melakukan audit semacam ini. Selain rincian harga, kami sangat menghargai informasi tambahan mengenai kualifikasi tim Anda, pengalaman yang relevan, dan metodologi yang digunakan untuk memastikan proses audit yang menyeluruh dan efektif.\r\n\r\nMengingat sensitivitas dan pentingnya audit keamanan informasi dan integritas sistem, kami mencari jaminan atas kemampuan perusahaan Anda untuk memenuhi persyaratan kami dan menjunjung standar tertinggi dalam domain ini. Oleh karena itu, tanggapan Anda akan memainkan peran penting dalam menentukan keyakinan kami dalam mempercayakan audit penting ini kepada organisasi Anda.', 'aktif'),
	(4, 4, 4, 4, '2023-04-01', 'Setelah melihat anggaran dan kebutuhan Anda, kami ingin memberi tahu Anda bahwa kami memiliki produk yang tepat. Oleh karena itu, kami ingin merekomendasikan Anda daftar produk untuk pertimbangan Anda. Kami menghargai transparansi, dan oleh karena itu kami ingin memilikinya pelanggan kami dapat mengambil keputusan sebelum melakukan pembelian. Dengan ini kami juga melampirkan daftar produk yang kami rekomendasikan. Harap pastikan untuk merahasiakan rekomendasi kami, karena spesifikasi produk dilindungi rahasia dagang.', 'aktif'),
	(5, 7, 5, 5, '2023-05-01', 'Kepada yang bersangkutan. Dengan berbahagia kami memutuskan untuk menerima pengajuan Anda untuk bergabung bersama kami dalam program magang. Setelah memeriksa rekam jejak dan nilai Anda, kami percaya bahwa Anda memiliki kemampuan dan disiplin yang di perlukan untuk belajar bersama di perusahaan kami. Belajar dan bekerja di perusahaan kami tidaklah mudah, akan tetapi kami percaya bahwa Anda memiliki kemampuan yang mumpuni untuk menghadapi segala macam kesempatan dan tantangan yang ada di perusahaan kami.', 'nonaktif'),
	(6, 1, 5, 5, '2023-01-05', 'test1', 'aktif'),
	(9, 1, 7, 4, '0000-00-00', '\r\n', 'aktif');

-- Dumping structure for table 2110010302visual3tugas.tujuan
CREATE TABLE IF NOT EXISTS `tujuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(100) DEFAULT NULL,
  `orang` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `institusi` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 2110010302visual3tugas.tujuan: ~5 rows (approximately)
INSERT INTO `tujuan` (`id`, `alamat`, `orang`, `jabatan`, `institusi`, `status`) VALUES
	(1, 'Jalan Pahlawan No. 123, Kelurahan Maju Sejahtera, Kecamatan Sentosa, Kota Kembang, 12345', 'Budi Santoso', 'Kabid Humas', 'Badan Penelitian Daerah', 'aktif'),
	(2, 'Kompleks Cendana Blok A2, RT 05 RW 08, Desa Damai Indah, Kecamatan Sejahtera, Kota Bahagia, 67890', '', 'Internal Perusahaan', '', 'nonaktif'),
	(3, 'Perumahan Citra Asri Blok B3 , RT 12 RW 03 , Kelurahan Asri Jaya , Kecamatan Cerah Makmur, Kota Dama', 'Iwan Setiawan', 'Kepala Pemasaran', 'CV Audit Siber Utama', 'aktif'),
	(4, 'Jalan Anggrek No. 56, RT 09 RW 15, Kelurahan Mawar Indah, Kecamatan Sejati Makmur, Kota Indah, 23456', 'Anisa Putri', 'Direktur Keuangan', 'PT. Makmur Bersama', 'aktif'),
	(5, 'Apartemen Harmoni Tower C-45, Jalan Raya Harmoni, Kelurahan Damai Abadi, Kecamatan Sentosa, Kota Har', 'Alex Maharani', 'Staff Magang', NULL, 'nonaktif'),
	(7, 'PPJ', 'me', 'no', 'no', 'aktif');

-- Dumping structure for table 2110010302visual3tugas.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 2110010302visual3tugas.user: ~7 rows (approximately)
INSERT INTO `user` (`id`, `user_name`, `password`, `status`, `level`) VALUES
	(1, 'HamdaniAdmin', 'passwordnya rumit', 'aktif', 'admin'),
	(2, 'FitriTamvan', 'sangat diragukan', 'nonaktif', 'user'),
	(3, 'DimasSakti', 'sangat sakit', 'aktif', 'user'),
	(4, 'NovriyanSuci', 'mahaSuci', 'aktif', 'user'),
	(5, 'RifkiNormal', 'sangatRamah', 'aktif', 'user'),
	(6, 'dummy1', '1', 'aktif', 'admin'),
	(10, 'dummy2', '2', 'nonaktif', 'user'),
	(11, 'dummy3', '3', 'aktif', 'admin'),
	(12, 'enkripsi', '묮?7?a??\'?M', 'aktif', 'admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
