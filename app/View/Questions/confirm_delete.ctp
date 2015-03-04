<?php $this -> Html -> addCrumb(__('Question'), array('controller' => 'guest_books', 'action' => 'index')); ?>
<?php $this -> Html -> addCrumb(__('Check Password'), array('controller' => 'guest_books', 'action' => 'add')); ?>
<?php $this -> assign('title', __('Check Password')); ?>
<?php echo $this -> Form -> create('Question'); ?>
<?php echo __('Are you sure you wish to delete this article?') ?>
<?php echo $this -> Form -> end(array('label' => __('Delete Article'), 'div' => array('class' => 'form-group'), 'class' => 'btn btn-danger')); ?>
<?php echo $this->Html->link(__('Cancel'),array('action'=>'view',$this->request->params['id']),array('class' => 'btn btn-default')) ?>