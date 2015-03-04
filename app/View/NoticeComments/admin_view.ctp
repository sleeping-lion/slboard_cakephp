<?php $this->Html->addCrumb(__('Notice Comments'), array('controller' => 'notice_comments', 'action' => 'index')); ?>
<?php $this->Html->addCrumb(__('Notice Comment'), array('controller' => 'notice_comments', 'action' => 'view', $this -> params['id'])); ?>
<?php $this -> assign('title', __('Notice Comment')); ?>
<h1><?php echo h($noticeComment['noticeComment']['title']); ?></h1>
<div><?php echo nl2br($blog['BlogContent']['content']); ?></div>
<p><small>Created: <?php echo $noticeComment['noticeComment']['created']; ?></small></p>
<p><?php echo $this->Html->link(__('List'), array('action' => 'index')); ?></p>
