<?php $this -> Html -> addCrumb(__('Guest Books'), array('controller' => 'guest_books', 'action' => 'index')); ?>
<?php $this -> Html -> addCrumb(__('Add Guest Books'), array('controller' => 'guest_books', 'action' => 'add')); ?>
<?php $this -> assign('title', __('Add Guest Book')); ?>
<?php echo $this -> Form -> create('GuestBook'); ?>
<?php if(!$this->Session->check('Auth.User')): ?>
<?php 
echo $this -> Form -> input('name', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
echo $this -> Form -> input('password', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
?>
<?php endif ?>
<?php
echo $this -> Form -> input('title', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
echo $this -> Form -> input('GuestBookContent.content', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
?>
<?php echo $this -> Form -> end(array('label' => __('Save GuestBook'), 'div' => array('class' => 'form-group'), 'class' => 'btn btn-primary')); ?>