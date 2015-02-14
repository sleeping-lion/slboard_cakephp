<?php $this -> Html -> addCrumb(__('Questions'), array('controller' => 'guest_books', 'action' => 'index')); ?>
<?php $this -> Html -> addCrumb(__('Check Password'), array('controller' => 'guest_books', 'action' => 'add')); ?>
<?php $this -> assign('title', __('Check Password')); ?>
<?php echo $this -> Form -> create('Question'); ?>
<?php if(!$this->Session->check('Auth.User')): ?>
<?php
echo $this -> Form -> input('password', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
?>
<?php endif ?>
<?php echo $this -> Form -> end(array('label' => __('Save Article'), 'div' => array('class' => 'form-group'), 'class' => 'btn btn-primary')); ?>