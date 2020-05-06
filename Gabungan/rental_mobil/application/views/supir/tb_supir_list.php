
<div class="content-wrapper">
        <section class="content-header">
            <h1>Halaman Supir <small>form data Supir</small></h1>
         
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-info">


                        <div class="box-header with-border">
                            <h3 class="box-title">Supir</h3>
                        </div>
                        
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                        <div style="margin-top: 4px"  id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                                        </div>
                                </div>
                                <div class="col-md-12 text-right">
                <?php echo anchor(site_url('supir/create'),'+ Tambah Supir', 'class="btn btn-primary"'); ?>
                                </div>                  
                            </div>
                            <br><br>
        <table class='table table-bordered table-striped' id='mytable'>
        <thead>
            <tr>
                <th>No</th>
		<th>NAMA</th>
		<th>TELP</th>
		<th>ALAMAT</th>
        <th>STATUS</th>
        <th>ACTION</th>
        </tr></thead><tbody><?php
            $start=1;
            foreach ($supir_data as $supir)
            {
                ?>
                <tr>
			<td width="80px"><?php echo $start++ ?></td>
			<td><?php echo $supir->NAMA ?></td>
			<td><?php echo $supir->TELP ?></td>
			<td><?php echo $supir->ALAMAT ?></td>
			<td><?php if ($supir->STATUS==1) echo "Tidak Tersedia"; else echo "Tersedia"; ?></td>
			<td style="text-align:center" width="200px">
				<?php 
				echo anchor(site_url('supir/read/'.$supir->ID_SUPIR),'Read'); 
				echo ' | '; 
				echo anchor(site_url('supir/update/'.$supir->ID_SUPIR),'Update'); 
				echo ' | '; 
				echo anchor(site_url('supir/delete/'.$supir->ID_SUPIR),'Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
				?>
			</td>
		</tr>
                <?php
            }
            ?>
            </tbody>
        </table>
                        </div>                        
                    </div>
                </div><!--/.col (right) -->
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

        <script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
        <script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
        <script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                var t = $("#mytable").dataTable({
                    "scrollX": true
                });
            });
        </script>


