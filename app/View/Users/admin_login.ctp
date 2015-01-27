<section class="sl_login_form">
	<div class="col-lg-3 col-md-6 col-xs-12">&nbsp;</div>
	<div class="login_box sl_login_form col-lg-6 col-md-6 col-xs-12">
		<?php echo $this->Session->flash(); ?>
		<div class="box-content">
			<h2><?php echo __('Login'); ?></h2>			
			<?php echo $this -> Form -> create('User'); ?>
			<fieldset>
        		<?php
				echo $this -> Form -> input('username', array('type' => 'text', 'label' => array('text' => '', 'class' => 'input-group-addon glyphicon glyphicon-user'), 'div' => array('class' => 'input-group'), 'class' => 'form-control', 'placeHolder' => 'username'));
				echo $this -> Form -> input('password', array('type' => 'password', 'label' => array('text' => '', 'class' => 'input-group-addon glyphicon glyphicon-flash'), 'div' => array('class' => 'input-group'), 'class' => 'form-control', 'placeHolder' => 'password'));
        		?>
    		</fieldset>
			<?php echo $this -> Form -> end(array('label' => __('Login'), 'div' => array('class' => 'form-group'), 'class' => 'btn btn-primary')); ?>
		</div>
	</div>
	<div class="col-lg-3 col-md-6 col-xs-12">&nbsp;</div>
</section>