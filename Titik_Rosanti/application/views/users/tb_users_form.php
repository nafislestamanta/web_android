
<div class="content-wrapper">
        <section class="content-header">
            <h1>Halaman User </h1>
           
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-info">


                        <div class="box-header with-border">
                            <h3 class="box-title">Form User</h3>
                        </div>
                        
                        <div class="box-body">
                            
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
	    <div class="form-group">
            <label for="varchar">USERNAME <?php echo form_error('USERNAME') ?></label>
            <input type="text" class="form-control" name="USERNAME" id="USERNAME" placeholder="USERNAME" value="<?php echo $USERNAME; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">NAME <?php echo form_error('NAME') ?></label>
            <input type="text" class="form-control" name="NAME" id="NAME" placeholder="NAME" value="<?php echo $NAME; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">EMAIL <?php echo form_error('EMAIL') ?></label>
            <input type="email" class="form-control" name="EMAIL" id="EMAIL" placeholder="EMAIL" value="<?php echo $EMAIL; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">NO TELP <?php echo form_error('NO_TELP') ?></label>
            <input type="number" class="form-control" name="NO_TELP" id="NO_TELP" placeholder="NO TELP" value="<?php echo $NO_TELP; ?>" />
        </div>
	    
        <div class="form-group">
                                <label for="int">JENIS KELAMIN <?php echo form_error('JENIS_KELAMIN') ?></label>
                                <select class="form-control" name="JENIS_KELAMIN" id="JENIS_KELAMIN">
                                     <option>--Pilih Jenis Kelamin--</option>
                                    <option value="L" <?php if ($JENIS_KELAMIN=="L") echo "selected" ?> >Laki-Laki</option>
                                    <option value="P" <?php if ($JENIS_KELAMIN=="P") echo "selected" ?> >Perempuan</option> 
                                </select>
                            </div>
	    <div class="form-group">
            <label for="ALAMAT">ALAMAT <?php echo form_error('ALAMAT') ?></label>
            <textarea class="form-control" rows="3" name="ALAMAT" id="ALAMAT" placeholder="ALAMAT"><?php echo $ALAMAT; ?></textarea>
        </div>
        <div class="form-group">
            <label for="varchar">PASSWORD <?php echo form_error('PASSWORD') ?></label>
            <input type="password" class="form-control" name="PASSWORD" id="PASSWORD" placeholder="PASSWORD" value="<?php echo $PASSWORD; ?>" />
        </div>
	    <!-- <div class="form-group">
            <label for="PHOTO">PHOTO <?php echo form_error('PHOTO') ?></label>
            <textarea class="form-control" rows="3" name="PHOTO" id="PHOTO" placeholder="PHOTO"><?php echo $PHOTO; ?></textarea>
        </div> -->
	    <!-- <div class="form-group">
            <label for="int">ACTIVATED <?php echo form_error('ACTIVATED') ?></label>
            <input type="text" class="form-control" name="ACTIVATED" id="ACTIVATED" placeholder="ACTIVATED" value="<?php echo $ACTIVATED; ?>" />
        </div> -->
	    <!-- <div class="form-group">
            <label for="datetime">CREATED <?php echo form_error('CREATED') ?></label>
            <input type="text" class="form-control" name="CREATED" id="CREATED" placeholder="CREATED" value="<?php echo $CREATED; ?>" />
        </div> -->
        <div class="form-group">
                                <label for="int">GROUP USER <?php echo form_error('GROUP_USER') ?></label>
                                <select class="form-control" name="GROUP_USER" id="GROUP_USER">
                                    <option value="1" <?php if ($GROUP_USER==1) echo "selected" ?> >Admin</option>
                                    <option value="2" <?php if ($GROUP_USER==2) echo "selected" ?> >User</option> 
                                </select>
                            </div>
	    <!-- <div class="form-group">
	    <div class="form-group">
            <label for="int">GROUP USER <?php echo form_error('GROUP_USER') ?></label>
            <input type="text" class="form-control" name="GROUP_USER" id="GROUP_USER" placeholder="GROUP USER" value="<?php echo $GROUP_USER; ?>" />
        </div> -->
	    <!-- <div class="form-group">
            <label for="datetime">LAST LOGIN <?php echo form_error('LAST_LOGIN') ?></label>
            <input type="text" class="form-control" name="LAST_LOGIN" id="LAST_LOGIN" placeholder="LAST LOGIN" value="<?php echo $LAST_LOGIN; ?>" />
        </div> -->
	    <!-- <div class="form-group">
            <label for="datetime">LAST UPDATE <?php echo form_error('LAST_UPDATE') ?></label>
            <input type="text" class="form-control" name="LAST_UPDATE" id="LAST_UPDATE" placeholder="LAST UPDATE" value="<?php echo $LAST_UPDATE; ?>" />
        </div> -->
	    <input type="hidden" name="ID_USER" value="<?php echo $ID_USER; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('users') ?>" class="btn btn-default">Cancel</a>
	</form>
                        </div>                        
                    </div>
                </div><!--/.col (right) -->
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->



