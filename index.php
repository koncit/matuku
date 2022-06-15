<?php
	session_start();
	if(!isset($_SESSION['login'])){
		header("location: login.php");
	}

	include("konek.php");
	$query_user = mysqli_query($koneksi, "SELECT * FROM pemakai WHERE username='".$_SESSION['login']."';") or die(mysqli_error($koneksi));
	$pemakai = mysqli_fetch_array($query_user);
	
?>
<!DOCTYPE html>
<html lang="id">
<head>
	<title>Manajemen Tugas Kuliah</title>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<link href='aset/css/bootstrap.css' rel='stylesheet' type='text/css' />
</head>

<body>

<div class="container">
	<header>
	<h1>Manajemen Tugas Kuliah</h1>
	
	<hr>
	</header>
	
	<div class="row">
		<div class="col-md-8">
			<nav>
			<a href='#tambah' class='btn btn-primary' data-toggle="modal" data-target="#tambah"><span class='glyphicon glyphicon-plus'></span> Tambah Tugas</a>
			
			
			<!-- drop down untuk sortir data -->
			<div class="btn-group">
			<button type="button" class="btn btn-default">Tampilkan</button>
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			<span class="caret"></span>
			<span class="sr-only">Toggle Dropdown</span>
			</button>
			<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a role="menuitem" tabindex="-1" href="index.php">Semua</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1" href="?sortir=selesai">Sudah Selesai</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1" href="?sortir=belum">Belum Selesai</a></li>
			</ul>
			</div>
			
			
			<!-- tombol untuk logout user -->
			<div class="btn-group">
			<a class="btn btn-default" href="logout.php">Logout(<?php echo $_SESSION['login'] ?>)</a>
			</div>
			
			</nav>
		</div>
		<div class="col-md-4" style="padding-top: 10px">
		<b class="glyphicon glyphicon-calendar"></b> <?php echo date("l, j F Y"); ?>
		</div>
	</div> <!-- end row -->
	<br>
	
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover">
			<tr><th>Mata Kuliah</th><th>Tugas</th><th>Deadline</th><th>Waktu tersisa</th><th>Operasi</th></tr>	
			<?php include("tampil.php"); ?>
			</table>
		</div>
	</div><!-- end row -->
	
	<div class="row">
	<!-- di sini berisi modal form inputan -->

	<!-- Begin Modal #tambah -->
<div class="modal fade" id="tambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    
	  <form action="" method="POST" role="form">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Tugas</h4>
      </div>
	  
      <div class="modal-body">
        
		  <div class="form-group">
			  <label for="matakul">Mata Kuliah</label>
			  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nama mata kuliah" name="matakul">
		  </div>
		  <div class="form-group">
			  <label for="judul">Judul</label>
			  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Judul tugas" name="judul">
		  </div>
		  <div class="form-group">
		  	<label for="deskripsi">Deskripsi</label>
		  	<textarea class="form-control" rows="3" name="deskripsi" placeholder="deskripsi tugas"></textarea>
		  </div>
		  <div class="form-group">
		  	<fieldset>
		  	<legend>Jenis Tugas</legend>
		  	<label><input type="radio" name="jenis" value="Individu" checked="cheked"/> Individu </label>
		  	<label><input type="radio" name="jenis" value="Kelompok" /> Kelompok</label>
		  	</fieldset>
		  </div>
		  <div class="form-group">
		  	<label for="deadline">Deadline</label>
		  	<input class="form-control" type="date" name="deadline" />
		  </div>      
	  </div>
        
		<div class="modal-footer">
		  <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
          <input type="submit" class="btn btn-primary" value="Simpan" name="simpan"/>
      </div>
	  </form>
	  
    </div> <!-- end modal content -->
  </div>
</div>
<!-- End Modal #tambah -->
		<div class="col-md-12">
			<?php include("simpan.php"); ?>
		</div>
	</div> <!-- end row -->
</div>


<script src="aset/js/jquery.min.js"></script>
<script src="aset/js/bootstrap.js"></script>

</body>
</html>
