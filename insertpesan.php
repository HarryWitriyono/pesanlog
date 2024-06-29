<?php
if (isset($_GET['pesan'])) {
	include_once('koneksi.db.php');
	$pesan=$_GET['pesan'];
	$sql="INSERT INTO `pesan`(`pesan`) VALUES ('".$pesan."')";
	$q=mysqli_query($koneksi,$sql);
	if ($q) {
		echo 'Rekord berhasil disimpan !';
	} else {
		echo 'Rekord gagal disimpan !';
	}
} else {
	echo 'Pesannya tidak ada !';
}
?>