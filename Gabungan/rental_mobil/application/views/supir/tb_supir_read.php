
<div class="content-wrapper">
        <section class="content-header">
            <h1>Detail Supir</h1>
            <ol class="breadcrumb">
                <li>
                    <a href="#"><i class="fa fa-dashboard"></i> Level</a>
                </li>
                <li class="active">Here</li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-info">


                        <div class="box-header with-border">
                            <h3 class="box-title">Data Supir</h3>
                        </div>
                        
                        <div class="box-body">

        <table class="table">
	    <tr><td>NAMA</td><td><?php echo $Nama; ?></td></tr>
	    <tr><td>TELP</td><td><?php echo $Telp; ?></td></tr>
	    <tr><td>ALAMAT</td><td><?php echo $Alamat; ?></td></tr>
	    <tr><td>STATUS</td><td><?php if ($Status==1) echo "Tidak Tersedia"; else echo "Tersedia"; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('supir') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>
                        </div>                        
                    </div>
                </div><!--/.col (right) -->
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->



