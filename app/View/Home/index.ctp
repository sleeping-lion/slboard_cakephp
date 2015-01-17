<?php $this -> Html -> script(array('index.js'), array('inline' => false)); ?>
<section id="main_main">
	<section class="row">	
		<?php echo $this->element('_notices') ?>
		<?php echo $this->element('_questions') ?>
		<?php echo $this->element('_guest_books') ?>
	</section>
	<section class="row">
		<?php echo $this->element('_galleries') ?>
		<?php echo $this->element('_blogs') ?>
	</section>
</section>