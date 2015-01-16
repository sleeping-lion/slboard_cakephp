<?php $this -> Html -> script(array('plugin/jquery.easing.1.3.pack.js','plugin/jquery.tools.min.js','plugin/jquery.uri.js','faqs/index.js'), array('inline' => false)); ?>
<?php $this -> Html -> addCrumb(__('Faqs'), array('controller' => 'faqs', 'action' => 'index')); ?>
<?php $this -> assign('title', __('Faqs')); ?>
<section id="sl_faq_index">
	<ol class="nav nav-tabs">
		<?php if(count($faqCategories)): ?>
			<?php foreach($faqCategories as $key=>$value): ?>
			<li <?php if($faqCategoryId==$key): ?>class="active"<?php endif ?>>
  			<?php echo $this->Html->link($value,array('controller'=>'faqs','action'=>'index','?'=>array('faq_category_id'=>$key))) ?>
		  </li>
			<?php endforeach ?>
			<?php unset($value) ?>
		<?php else: ?>	
		<li><?php echo _('no_data') ?></li>
		<?php endif ?>
	</ol>
	<article>
		<?php if(count($faqs)): ?>			
		<?php foreach($faqs as $index=>$value): ?>		
		<div class="panel panel-default">
  		<h3 class="panel-heading<?php if(isset($this->request->query['id'])): ?><?php if(!strcmp($this->request->query['id'],$value['Faq']['id'])): ?><?php echo ' on' ?><?php endif ?><?php endif ?>">
  			<?php echo $this->Html->link($value['Faq']['title'],array('controller'=>'faqs','action'=>'index','?'=>array('id'=>$value['Faq']['id']))) ?>
  		</h3>
  		<?php if(isset($this->request->query['id'])): ?>
			<?php if(strcmp($this->request->query['id'],$value['Faq']['id'])): ?>
			<div class="panel-body" style="display:none"></div>
			<?php else: ?>
			<div class="panel-body"><?php echo nl2br($faq['FaqContent']['content']) ?></div>
			<?php endif ?>
			<?php else:?>
			<div class="panel-body" style="display:none"></div>
			<?php endif ?>
  	</div>
  	<?php endforeach ?>
		<?php else: ?>
		<dt><?php echo _('No Article') ?></dt>
		<?php endif ?>
		<?php unset($value) ?>		 	
  </article>	
	<div id="sl_index_bottom_menu">
		<?php echo $this -> App -> pagination($this -> Paginator); ?>
		<?php echo $this -> Html -> link(__('New Faq'), array('action' => 'add','?'=>array('faq_category_id'=>$faqCategoryId)),array('class'=>"btn btn-default btn btn-default col-xs-12 col-md-2")); ?>		
		<?php echo $this -> App -> pagination($this -> Paginator); ?>
	</div>
</section>