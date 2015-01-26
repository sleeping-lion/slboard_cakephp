<?php
echo $this->Form->create('GuestBookComment'); 
echo $this->Form->input('name',array('div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->input('email',array('div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->input('password',array('type'=>'password','div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->input('title',array('div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->input('content',array('div'=>array('class'=>'form-group'),'class'=>'form-control','id'=>'sl_content'));
echo $this->Form->end(array('label'=>__('Save GuestBookComment'),'div'=>array('class'=>'form-group'),'class'=>'btn btn-primary'));
?>