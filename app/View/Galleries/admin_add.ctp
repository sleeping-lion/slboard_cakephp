<?php $this->Html->addCrumb(__('Galleries'), array('controller' => 'galleries', 'action' => 'index')) ?>
<?php $this->Html->addCrumb(__('Add Gallery'), array('controller' => 'galleries', 'action' => 'add')) ?>
<?php $this -> assign('title', __('Add Gallery')) ?>
<?php
echo $this->Form->create('Gallery');
echo $this->Form->input('gallery_category_id',array('type'=>'select','div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->input('title',array('div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->input('Gallery.photo', array('type' => 'file','div'=>array('class'=>'form-group')));
echo $this->Form->input('Gallery.photo_dir', array('type' => 'hidden','div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->end(array('label'=>__('Save Article'),'div'=>array('class'=>'form-group'),'class'=>'btn btn-primary'));
?>
