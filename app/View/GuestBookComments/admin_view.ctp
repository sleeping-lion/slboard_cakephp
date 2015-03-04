<?php $this->Html->addCrumb(__('Blogs'), array('controller' => 'guest_book_comments', 'action' => 'index')); ?>
<?php $this->Html->addCrumb(__('Blog'), array('controller' => 'guest_book_comments', 'action' => 'view', $this -> params['id'])); ?>
<?php $this -> assign('title', __('Blog')); ?>
<h1><?php echo h($blog['Blog']['title']); ?></h1>
<div><?php echo nl2br($blog['BlogContent']['content']); ?></div>
<p><small>Created: <?php echo $blog['Blog']['created']; ?></small></p>
<p><?php echo $this->Html->link(__('List'), array('action' => 'index')); ?></p>
