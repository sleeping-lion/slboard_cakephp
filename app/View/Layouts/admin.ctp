<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />	
	<title><?php echo __('Homepage Title') ?></title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css(array('bootstrap.min.css','admin/index'));
	?>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta name="author" content="Sleeping-Lion" />	
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<![endif]-->
</head>
<body>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<?php echo $this->element ('Admin/header');?>
<section id="mom">
	<section id="main" class="container">
		<?php if($this->params['controller']!='home'): ?>
		<div class="page-header">
			<h1 itemprop="mainContentOfPage" itemscope itemtype="http://schema.org/WebPageElement"><span itemprop="headline"><?php echo $this -> fetch('title'); ?></span></h1>
			<?php echo $this->Html->getCrumbList(array('class'=>'breadcrumb'),__('Home')); ?>
		</div>
		<?php else: ?>
				
		<?php endif ?>
		<section class="sub_main">		
			<?php echo $this->Session->flash('auth'); ?>			
			<?php echo $this->Session->flash(); ?>
			<?php //echo $this->element('ad') ?>
			<?php echo $this->element ('Admin/aside');?>			
			<?php echo $this->fetch('content'); ?>
		</section>
	</section>
</section>
<?php echo $this-> element ('Admin/footer');?>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"></div>
<?php echo $this->Html->script(array('jquery.tools.min.js','bootstrap.min.js','common.js')); ?>
<?php echo $this -> fetch('script'); ?>
</body>
</html>
