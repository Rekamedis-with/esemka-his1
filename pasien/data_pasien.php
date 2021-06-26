<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Pendaftaran | esemka-his</title>
  	<link rel="stylesheet" href="../assets/css/style.css">
      <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <script src="js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css">

	  <!--link bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		  <!--/link bootstrap-->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
			<nav id="sidebar">
				<div class="sidebar-header">
					<a href="../index.php"><h3>Esemka-His</h3>
					<strong>EH</strong>
					</a>
				</div>
				<ul class="list-unstyled components">
					<li>
						<a href="../index.php">
							<i class="fas fa-home"></i>
							Dashboard
						</a>
					</li>
					<li>
						<a href="../pendaftaran.php">
							<i class="fas fa-american-sign-language-interpreting"></i>
							Data Pasien
						</a>
					</li>
					<li>
						<a href="../dokter/data_dokter.php">
							<i class="fas fa-diagnoses"></i>
							Data Dokter
						</a>
					</li>
					<li>
						<a href="../poliklinik/data_poli.php">
							<i class="fas fa-briefcase"></i>
							Data PoliKlinik
						</a>
					</li>
					<li>
						<a href="../obat/data_obat.php">
							<i class="fas fa-briefcase"></i>
							Data Obat
						</a>
					</li>
					<li>
						<a href="../pelayanan.php">
							<i class="fas fa-briefcase"></i>
							Rekam Medis
						</a>
					</li>
					<li>
						<a href="../logout.php">
							<i class="fas fa-sign-out-alt"></i>
							<font color="red">Logout</font><br>
						</a>
					</li>
				</ul>
				
					<button type="button" id="sidebarCollapse" class="btn btn-default">
							<i class="fas fa-angle-double-right"></i>
					</button>
			</nav>		
		<div id="content">
 			
		
			<nav class="navbar navbar-expand-lg ">
                <div class="container-fluid">

				<marquee>Selamat Datang Di Halaman Utama Aplikasi Rumah Sakit Sederhana Esemka-His Berbasis Web</marquee>
					
				
				</div>
			</nav>

			<div id="page-wrapper" >
				<div style="padding: 15px 20px;background-color: #fbf9f9; min-height: 600px; margin-right: 15px; margin-left: 5px; margin-bottom: 0px;" >
					<div id="page-inner">
                        <div class="box">
                            <h1>Pasien</h1>
                            <h4>
                                <div class="pull-right">
                                    <button type="button"><a href=""><i class="glyphicon glyphicon-refresh"></i></a></button>
                                    <a href="import.php" type="button" class="btn btn-primary" >Import Pasien</a>
                                    <a href="add_pasien.php" type="button" class="btn btn-primary" > Tambah Data</a>
                                    <button type="button" name="age" id="age" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-success"><i class="fa fa-plus"></i> Tambah Data</button>
                                </div>
                            </h4>   
                            </br></br></br> 
                            
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="pasien">
                                    <thead>
                                        <tr>
                                            <th>Tanggal Daftar</th>
                                            <th>No Identitas</th>
                                            <th>Nama Pasien</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Alamat</th>
                                            <th>Status</th>
                                            <th><i class="glyphicon glyphicon-cog"></i></th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <script>
                                $(document).ready(function() {
                                    $('#pasien').DataTable( {
                                        "processing": true,
                                        "serverSide": true,
                                        "ajax": "pasien_data.php",
                                        //scrollY : '250px',
                                        dom : 'Bfrtip',
                                        buttons : [
                                            {
                                                extend : 'pdf',
                                                oriented : 'potrait',
                                                pageSize : 'Legal',
                                                title : 'Data Pasien',
                                                download : 'open'
                                            },
                                            'csv','excel','print','copy'
                                        ],
                                        columnDefs : [
                                            {
                                                "searchable" : false,
                                                "orderable" : false,
                                                "targets" : 6,
                                                "render" : function(data, type, row) {
                                                    var btn = "<center><a href=\"edit_pasien.php?id="+row.pasien+"\" class=\"btn btn-warning btn-xs\"><i class=\"glyphicon glyphicon-edit\"></i></a> <a href=\"delete_pasien.php?id="+row.pasien+"\" onClick=\"return confirm('Apakah anda yakin menghapus data?')\" class=\"btn btn-danger btn-xs\"><i class=\"glyphicon glyphicon-trash\"></i></a></center>";
                                                    return btn;
                                                }
                                            }
                                        ]
                                    } );
                                } );
                            </script>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>

	

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    
    <script>
    $(document).ready(function() {
        $('.pasien').DataTable();
    } );
    </script>                      
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>



<div id="add_data_Modal" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
	<h4 class="modal-title">Tambah Data Pasien</h4>
   </div>
   <div class="modal-body">
   <form method="post" action="proses_pasien.php">
     <label>Tanggal Daftar</label>
     <input type="date" name="tgl_daftar" id="tgl_daftar" class="form-control" required/>
     <br />
     <label>No Identitas</label>
     <input type="number" name="no_identitas" id="no_identitas" class="form-control" required/>
     <br />
     <label>Nama Pasien</label>
     <input name="nama_pasien" id="nama_pasien" class="form-control" required/>
     <br />
	 <label>Tanggal Lahir</label>
     <input type="date" name="tgl_lahir" id="tgl_lahir" class="form-control" required/>
     <label>Jenis Kelamin</label>
     <select name="jk" id="jk" class="form-control">
      <option value="Laki-laki">Laki-laki</option>  
      <option value="Perempuan">Perempuan</option>
     </select>
	 <label>Alamat</label>
     <textarea name="alamat" id="alamat" class="form-control"></textarea>
	 <label>No HP</label>
     <input type="number" name="no_hp" id="no_hp" class="form-control" required/>
	 <label>Status</label>
	 <select name="status" id="status" class="form-control">
      <option value="Daftar">Daftar</option>  
      <option value="Pulang">Pulang</option>
     </select>
	 </br>
     <input type="submit" name="tambah_pasien" value="Simpan" class="btn btn-success" />
        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
    </form>
   </div>
  </div>
 </div>
</div>

