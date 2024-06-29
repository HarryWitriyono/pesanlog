<!DOCTYPE html>
<html lang="en">
<head>
  <title>Daftar Pesan Log</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>Daftar Pesan Log</h2>
  <p>Pesan yang ada adalah berikut ini:</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Id Pesan</th>
        <th>Waktu Pesan</th>
        <th>Catatan Pesan</th>
      </tr>
    </thead>
    <tbody>
	<?php include_once('koneksi.db.php');
	$sql="SELECT * FROM `pesan`";
	$q=mysqli_query($koneksi,$sql);
	$r=mysqli_fetch_array($q);
	if (!empty($r)) {
		do {
			?>
      <tr>
        <td><?php echo $r['idpesan'];?></td>
        <td><?php echo $r['waktupesan'];?></td>
        <td><?php echo $r['pesan'];?></td>
      </tr>
	  <?php 
		}while($r=mysqli_fetch_array($q));
	} else {
		echo '<tr><td colspan="3">Record tabel tidak ada !</td></tr>';
	}
	?>
    </tbody>
  </table>
</div>
</body>
</html>
