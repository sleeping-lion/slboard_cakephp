<section id="sl_question_comment_index">	
	<?php if(count($question['QuestionComment'])): ?>
	<?php foreach ($question['QuestionComment'] as $questionComment): ?>
	<article class="media">
		<?php if(isset($questionComment['photo'])): ?>
		<?php echo $this -> Html -> link($this->Html->image('/files/blog/photo/'.$questionComment['id'].'/thumb_'.$questionComment['photo'], array('alt' =>$questionComment['title'])), array('action' => 'index','?'=>array('id'=>$questionComment['id'])),array('escape'=>false,'class'=>'pull-left')) ?>
		<?php endif ?>
		<div class="media-body">
			<h4 class="media-heading" itemprop="name"><?php echo $this -> Html -> link($questionComment['title'], array('controller' => 'blogs', 'action' => 'view', $questionComment['id'])); ?></h4>
			<p itemprop="description"><?php echo $this -> Html -> link($questionComment['description'], array('controller' => 'blogs', 'action' => 'view', $questionComment['id'])); ?></p>
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
