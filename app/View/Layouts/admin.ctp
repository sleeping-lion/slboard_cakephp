<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       Cake.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css(array('bootstrap.min.css','index'));
	?>
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
<section id="slboard_main" class="slboard_main">
	<div class="jumbotron hero-unit">
		<h1>최신의 PHP 게시판 시스템 SLBoard</h1>
		<p class="lead">PHP 5.3.0버전 부터 사용가능합니다.</p>
		<p>2015년 1월 1일 오픈 예정입니다.</p>
		<a class="modal_link btn btn-large btn-success" data-target="#myModal" data-toggle="modal" href="/popup.php">깨끗한 웹을 꿈꾸고 있습니다</a>
		<a class="btn btn-large btn-primary" href="https://github.com/sleeping-lion/slboard/archive/master.zip"><?php echo _('download') ?></a>
	</div>
</section>		
		<?php endif ?>
		<section class="sub_main">
			<?php echo $this->Session->flash('auth'); ?>			
			<?php echo $this->Session->flash(); ?>
			<?php echo $this->element('ad') ?>
			<?php echo $this->fetch('content'); ?>
		</section>
		<?php echo $this->element('aside'); ?>		
	</section>
</section>
<?php echo $this-> element ('Admin/footer');?>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"></div>
<?php echo $this->Html->script(array('jquery.tools.min.js','bootstrap.min.js','common.js')); ?>
<?php echo $this -> fetch('script'); ?>
</body>
</html>
