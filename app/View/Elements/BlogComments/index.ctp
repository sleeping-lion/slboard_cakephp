<section id="sl_blog_comment_index">	
	<?php if(count($blog['BlogComment'])): ?>
	<?php foreach ($blog['BlogComment'] as $blogComment): ?>
	<article class="media" itemscope itemprop="blogPost" itemtype="http://schema.org/Blog">
		<?php if(isset($blogComment['photo'])): ?>
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
	</div>
</section>
