
<div class="content-wrapper">
        <section class="content-header">
            <h1>Halaman Fasilitas Mobil <small>Detail Data</small></h1>
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
                            <h3 class="box-title">Fasilitas Mobil</h3>
                        </div>
                        
                        <div class="box-body">
                            
        <form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="varchar">NAMA <?php echo form_error('Nama') ?></label>
            <input type="text" class="form-control" name="Nama" id="Nama" placeholder="Nama" value="<?php echo $Nama; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">TELP <?php echo form_error('Telp') ?></label>
            <input type="number" class="form-control" name="Telp" id="Telp" placeholder="Telp" value="<?php echo $Telp; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">ALAMAT <?php echo form_error('Alamat') ?></label>
            <input type="text" class="form-control" name="Alamat" id="Alamat" placeholder="Alamat" value="<?php echo $Alamat; ?>" />
        </div>
	    <div class="form-group">
            <label for="int">STATUS <?php echo form_error('Status') ?></label>
            <select class="form-control" name="Status" id"Status">
                <option value="0" <?php if ($Status==0) echo "selected" ?> >Tersedia</option>
                <option value="1" <?php if ($Status==1) echo "selected" ?> >Tidak Tersedia</option>
            </select>
        </div>
	    <input type="hidden" name="ID_supir" value="<?php echo $ID_supir; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('supir') ?>" class="btn btn-default">Cancel</a>
	</form>
                        </div>                        
                    </div>
                </div><!--/.col (right) -->
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->



