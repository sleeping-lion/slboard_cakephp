

<section id="sl_blog_index">	
	<?php if(count($blogs)): ?>
	<?php foreach ($blogs as $blog): ?>
	<article class="media" itemscope itemprop="blogPost" itemtype="http://schema.org/Blog">
		<?php if(isset($blog['Blog']['photo'])): ?>
		<?php echo $this -> Html -> link($this->Html->image('/files/blog/photo/'.$blog['Blog']['id'].'/thumb_'.$blog['Blog']['photo'], array('alt' =>$blog['Blog']['title'])), array('action' => 'index','?'=>array('id'=>$blog['Blog']['id'])),array('escape'=>false,'class'=>'pull-left')) ?>
		<?php endif ?>
		<div class="media-body">
			<h4 class="media-heading" itemprop="name"><?php echo $this -> Html -> link($blog['Blog']['title'], array('controller' => 'blogs', 'action' => 'view', $blog['Blog']['id'])); ?></h4>
			<p itemprop="description"><?php echo $this -> Html -> link($blog['Blog']['description'], array('controller' => 'blogs', 'action' => 'view', $blog['Blog']['id'])); ?></p>
		</div>
	</article>
	<?php endforeach; ?>
	<?php unset($blogs); ?>	
	<?php else: ?>
	<p><?php echo __('No Article') ?></p>				
	<?php endif ?>
	<div id="sl_index_bottom_menu">
		<?php echo $this -> App -> pagination($this -> Paginator); ?>
		<?php echo $this -> Html -> link(__('New Blog'), array('action' => 'add'),array('class'=>"btn btn-default btn btn-default col-xs-12 col-md-2")); ?>
		<?php echo $this-> element ('search');?>		
	</div>
</section>
