
<div class="content-wrapper">
        <section class="content-header">
            <h1>Halaman User</h1>
           
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-info">


                        <div class="box-header with-border">
                            <h3 class="box-title">Detail User</h3>
                        </div>
                        
                        <div class="box-body">

        <table class="table">
	    <tr><td>USERNAME</td><td><?php echo $USERNAME; ?></td></tr>
	    <tr><td>NAME</td><td><?php echo $NAME; ?></td></tr>
	    <tr><td>EMAIL</td><td><?php echo $EMAIL; ?></td></tr>
	    <tr><td>NO TELP</td><td><?php echo $NO_TELP; ?></td></tr>
        <tr><td>JENIS KELAMIN</td><td><?php if ($JENIS_KELAMIN=="L") echo "Laki-Laki"; else echo "Perempuan"; ?></td></tr>
	    <tr><td>ALAMAT</td><td><?php echo $ALAMAT; ?></td></tr>
	    <tr><td>PASSWORD</td><td><?php echo $PASSWORD; ?></td></tr>
	    <!-- <tr><td>PHOTO</td><td><?php echo $PHOTO; ?></td></tr> -->
	    <!-- <tr><td>ACTIVATED</td><td><?php echo $ACTIVATED; ?></td></tr>
	    <tr><td>CREATED</td><td><?php echo $CREATED; ?></td></tr> -->
        <tr><td>GROUP USER</td><td><?php if ($GROUP_USER==1) echo "Admin"; else echo "User"; ?></td></tr>
	    <!-- <tr><td>LAST LOGIN</td><td><?php echo $LAST_LOGIN; ?></td></tr>
	    <tr><td>LAST UPDATE</td><td><?php echo $LAST_UPDATE; ?></td></tr> -->
	    <tr><td></td><td><a href="<?php echo site_url('users') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>
                        </div>                        
                    </div>
                </div><!--/.col (right) -->
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->



