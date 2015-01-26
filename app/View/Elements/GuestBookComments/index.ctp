
<section id="sl_guest_book_comment_index">	
	<?php if(count($guestBook['GuestBookComment'])): ?>
	<?php foreach ($guestBook['GuestBookComment'] as $guestBookComment): ?>
	<article class="media" itemscope itemprop="blogPost" itemtype="http://schema.org/Blog">
		<?php if(isset($guestBookComment['photo'])): ?>
		<?php echo $this -> Html -> link($this->Html->image('/files/blog/photo/'.$guestBookComment['id'].'/thumb_'.$guestBookComment['photo'], array('alt' =>$guestBookComment['title'])), array('action' => 'index','?'=>array('id'=>$guestBookComment['id'])),array('escape'=>false,'class'=>'pull-left')) ?>
		<?php endif ?>
		<div class="media-body">
			<h4 class="media-heading" itemprop="name"><?php echo $this -> Html -> link($guestBookComment['title'], array('controller' => 'blogs', 'action' => 'view', $guestBookComment['id'])); ?></h4>
			<p itemprop="description"><?php echo $this -> Html -> link($guestBookComment['description'], array('controller' => 'blogs', 'action' => 'view', $guestBookComment['id'])); ?></p>
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
