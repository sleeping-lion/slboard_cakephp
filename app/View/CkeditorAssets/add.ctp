<?php $this->Html->addCrumb(__('Ckeditor Assets'), array('controller' => 'ckeditor_assets', 'action' => 'index')); ?>
<?php $this->Html->addCrumb(__('Add Ckeditor Asset'), array('controller' => 'ckeditor_assets', 'action' => 'add')); ?>
<?php $this -> assign('title', __('Add Ckeditor Asset')); ?>
<?php echo $this->Form->create('CkeditorAsset',array('type'=>'file')); ?>
<?php
echo $this->Form->input('CKEditorFuncNum', array('type' => 'hidden','div'=>array('class'=>'form-group'),'value'=>'1'));
echo $this->Form->input('data_file_name', array('type' => 'file','div'=>array('class'=>'form-group')));
echo $this->Form->input('data_file_name_dir', array('type' => 'hidden','div'=>array('class'=>'form-group'),'class'=>'form-control'));
echo $this->Form->end(array('label'=>__('Save Ckeditor Asset'),'div'=>array('class'=>'form-group'),'class'=>'btn btn-primary'));
?>
