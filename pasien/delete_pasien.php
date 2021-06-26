<?php
//koneksi database
include '../../config.php';

$id = $_GET['id'];

mysqli_query($koneksi, "DELETE FROM pasien WHERE id_pasien='$_GET [id'")or die(mysqli_error($koneksi));

header("location:data_pasien.php?pe");

?> 