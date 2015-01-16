<?php $this -> Html -> addCrumb(__('Questions'), array('controller' => 'questions', 'action' => 'index')); ?>
<?php $this -> Html -> addCrumb(__('Add Question'), array('controller' => 'questions', 'action' => 'add')); ?>
<?php $this -> assign('title', __('Add Question')); ?>
<?php echo $this -> Form -> create('Question'); ?>
<?php if(!$this->Session->check('Auth.User')): ?>
<?php 
echo $this -> Form -> input('name', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
echo $this -> Form -> input('password', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
?>
<?php endif ?>
<?php
echo $this -> Form -> input('title', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
echo $this -> Form -> input('QuestionContent.content', array('div' => array('class' => 'form-group'), 'class' => 'form-control'));
echo $this -> Form -> end(array('label' => __('Save Question'), 'div' => array('class' => 'form-group'), 'class' => 'btn btn-primary'));
?>