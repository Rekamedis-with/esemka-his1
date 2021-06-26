-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jun 2021 pada 15.05
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esemka-his`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'esemka-his', '2deb2be2578d34c02511eeb568da1bb2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesialis` varchar(80) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('033a0fbe-93e9-492f-b2be-1951138cadad', 'dd', 'dd', 'dd', '1234567'),
('1c3c54c3-7e3e-495e-996a-29a7b3bb2c25', 'dd', 'dd', 'dd', 'dd'),
('38444ece-d241-11eb-8564-705ab6b38cd1', 'Dr. Bambang Sulaksono', 'penyakit dalam', 'Karangan', '09736728t71'),
('38446b58-d241-11eb-8564-705ab6b38cd1', 'Dr. Indro', 'Penyakit Kulit', 'Trenggalek', '0987654312'),
('384481a2-d241-11eb-8564-705ab6b38cd1', 'Dr. Bambang Isni', 'Penyakit Hati', 'Lampung', '123456789'),
('3df4c0c3-9a49-4ee3-9b0a-f369debd83fe', 'wesd', 'werd', 'ers', '3'),
('5989883c-fa50-430a-a79d-92478b38c2b5', 'Dr. Indra', 'Penyakit Dalam', 'Karangan', '1234567'),
('6121bba3-2073-4f25-825c-daf0475e7d19', 'dd', 'dd', 'd', 'dd'),
('7813792e-2a05-4620-a3ce-1d55d19527f9', 'wer', 'ewrw', 'wer\r\nwewer', '324'),
('829f9bce-1a0d-479d-9fee-2497af271c36', 'qsa', 'asa', 'asas', 'asas'),
('d851279e-f4ab-402f-8a76-3d1df9426651', 'qq', 'qq', 'qq', 'qqq');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `harga_obat` text NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga_obat`, `ket_obat`) VALUES
('0136770c-4f4b-4690-848c-b57de350c384', 'sadad', 'asa', 'sas'),
('8dc14565-c99f-11eb-af30-705ab6b38cd1', 'promagh', '12500', 'meredakan sakit lambung/perut'),
('8dc16bcf-c99f-11eb-af30-705ab6b38cd1', 'kaditic', '10500', 'meredakan sakit gigi'),
('8dc17d9f-c99f-11eb-af30-705ab6b38cd1', 'paramex', '3500', 'meredakan sakit kepala'),
('8dc18f72-c99f-11eb-af30-705ab6b38cd1', 'paracetamol', '15.000', 'Penurun Panas'),
('8dc1a1a0-c99f-11eb-af30-705ab6b38cd1', 'flu dan batuk', '4500', 'meredakan batuk dan pilek'),
('98743719-dc1f-4ad4-8b86-728c9ccf3e5b', 'spasminal', '5000', 'meredakan nyeri haid'),
('9bd0af15-c99f-11eb-af30-705ab6b38cd1', 'komix', '2500', 'meredakan batuk'),
('aa07ef5a-6f48-4d7a-86d0-e620ef07e120', 'medicline', '15000', 'mengobati sakit tenggorokan dan sariawan'),
('b9d494f5-6cc0-4507-9314-dc997a0565ae', 'ambroxol syr', '29.000', 'mengobati batuk'),
('ce6ed1ad-d76e-4216-9a36-ea1f90e75fcc', 'sdfs', '5000', 'asas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `no_identitas` varchar(30) NOT NULL,
  `nama_pasien` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` text NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `tgl_daftar`, `no_identitas`, `nama_pasien`, `tgl_lahir`, `jk`, `alamat`, `no_hp`, `status`) VALUES
('0245aa0e-e1c3-46e2-b17a-e9a7797f0039', '2021-06-22', '87654', 'Agin', '2021-06-05', 'Perempuan', 'ewsc', '324233', 'Daftar'),
('22dfb1be-eff9-4843-b4bd-35d549e5936c', '2021-06-22', '09857', 'Andrin', '2012-02-01', 'Perempuan', 'Sukolilo, Surabaya', '7623163421', 'Daftar'),
('3265b66c-1204-4424-845b-3c6168dd205c', '2021-06-25', '09876', 'akuuu', '2002-01-20', 'Laki-laki', 'jatiprahu', '085803428035', 'Daftar'),
('43be7902-f31f-47ef-97c5-03a2f07063fb', '2021-06-24', '0978765', 'ppppppppppppppppppppp', '2021-06-04', 'Laki-laki', 'jhbn', '98345678', 'Daftar'),
('6d520210-c82f-45b4-8378-09be35aaad6e', '2021-06-22', '4321243', 'ika', '1994-12-27', 'Perempuan', 'keputih', '829166343', 'Daftar'),
('7dc5c8cc-4979-4326-ba8e-c23f5862b4d5', '2021-06-22', '123456', 'Andri', '2021-06-22', 'Laki-laki', 'Kampak Trenggalek', '972138', 'Daftar'),
('9006d0a6-c5f3-44bd-90c8-ccd445ea9e47', '2021-06-24', '', '', '2021-06-04', 'Laki-laki', 'sdfgs', '3452', 'Daftar'),
('93d99ca5-6bab-4949-b167-d8e471cad30b', '2021-06-23', '23512', 'aku', '2021-06-11', 'Laki-laki', 'wenrfsk', '21347129', 'Daftar'),
('d5c3aa3d-6354-4761-af1b-a6bba0ef73cf', '2021-06-20', '234512', 'Indah', '1999-12-28', 'Perempuan', 'Karangan Trengalek', '0986527', 'Daftar'),
('e52191a0-1a22-48b0-b8d2-c3df5b816ef5', '2021-06-23', '2342', 'wdas', '2021-06-11', 'Laki-laki', 'asdax', '234234', 'Daftar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelayanan`
--

CREATE TABLE `pelayanan` (
  `id_pelayanan` int(11) NOT NULL,
  `tgl_pelayanan` text NOT NULL,
  `id_dokter` text NOT NULL,
  `nama_pasien` text NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `suhu` int(11) NOT NULL,
  `penyakit` text NOT NULL,
  `tindakan` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelayanan`
--

INSERT INTO `pelayanan` (`id_pelayanan`, `tgl_pelayanan`, `id_dokter`, `nama_pasien`, `tinggi_badan`, `berat_badan`, `suhu`, `penyakit`, `tindakan`, `status`) VALUES
(1, '0', 'Dr. Bambang', 'indah', 8, 8, 9, 'fliu', 'aaaaaaa', 'Daftar'),
(12, '2011', 'Dr. Bambang', 'Ano', 2, 2, 2, 'hhhh', 'jjj', 'Pulang'),
(15, '2010', 'hoi9', 'wdsa', 178, 50, 40, 'demam', 'anunuun', 'Daftar'),
(20, '0000-00-00', 'Dr. Bambang ', 'Andri', 134, 45, 40, 'Sakit Gigi', 'Pelepasan gigi', 'Daftar'),
(25, '0', 'Dr. Bambang', ' indahhhhh', 134, 65, 40, 'hhhh', 'jjj', 'Pulang'),
(33, '1988', '.Array', 'Indah ', 90, 65, 67, 'yugyuj', 'bvh', 'Pulang'),
(39, '2021-05-27', '', 'Agin', 155, 45, 38, 'Meriang', 'Suntik', 'Daftar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_daftar` int(11) NOT NULL,
  `tgl_daftar` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`id_poli`, `nama_poli`, `gedung`) VALUES
('ac3b314f-8f25-4d01-b3aa-d47597f36cf9', 'Poli Gigi', 'Gedung Mawar L.3'),
('8c629b2f-a624-4459-a451-691b916202ee', 'Poli THT', 'R. Mawar Lt. 5'),
('edcfe075-6406-4775-817f-889ce578edf2', 'Poli Umum', 'R. Melati Lt. 3'),
('ed93491f-ad6b-4102-b782-acf3ea601d00', 'Poli Mata', 'R. Kamboja Lt. 5'),
('ea110120-808b-43de-bcb8-2121c604100c', 'Poli Hati', 'R. Mawar Lt. 1'),
('2eafd521-c4c5-4b57-9b46-c0b78bfccb35', 'Poli Hidung', 'R. Kenanga Lt. 7'),
('1e2ac243-6003-429a-a602-f274e5067d2b', 'Poli Ginjal', 'R. Mawar Lt. 1'),
('0f8e33ea-4c9b-4f99-babf-bc6617894d0b', 'poli poli anak', 'keputih'),
('a0f989a1-7d69-4d88-98e5-598bfc133120', 'dasds', 'R. Kamboja Lt. 5'),
('af3a6e21-b2e7-4e72-9e9d-daab6ba3eeb8', 'asdsz', 'R. Melati Lt. 3'),
('a5985242-3eb4-4d8f-aa26-7e9ebb03e547', 'Poli Hidun', 'R. Kenanga Lt. 7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekammedis`
--

CREATE TABLE `rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_pelayanan` date NOT NULL,
  `tinggi_badan` varchar(50) NOT NULL,
  `berat_badan` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `diagnosa` text NOT NULL,
  `tindakan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekammedis`
--

INSERT INTO `rekammedis` (`id_rm`, `id_pasien`, `id_dokter`, `id_poli`, `tgl_pelayanan`, `tinggi_badan`, `berat_badan`, `keluhan`, `diagnosa`, `tindakan`) VALUES
('addfa35a-d4c3-11eb-a830-705ab6b38cd1', 'Andri', 'Dr. Bambang Sulaksono', 'tht', '2021-04-05', '8', '8', 'jkv', 'nmbk', 'hjv');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indeks untuk tabel `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_poli` (`id_poli`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
