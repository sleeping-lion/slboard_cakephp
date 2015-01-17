<?php $this -> Html -> addCrumb(__('Questions'), array('controller' => 'questions', 'action' => 'index')); ?>
<?php $this -> assign('title', __('Questions')); ?>
<section id="sl_question_index" class="table-responsive">
  <table width="100%" cellpadding="0" cellspacing="0" class="table table-striped">
    <colgroup>
      <col width="100px" />
      <col />
      <col width="70px" />
      <col width="130px" />
    </colgroup>
    <thead>
    	<tr>
				<th><?php echo $this -> App -> getOrderLink($this -> Paginator,'id') ?></th>
       <th><?php echo $this -> App -> getOrderLink($this -> Paginator,'title') ?></th>
       <th><?php echo $this -> App -> getOrderLink($this -> Paginator,'count') ?></th>       
       <th><?php echo $this -> App -> getOrderLink($this -> Paginator,'created_at') ?></th>
			</tr>
		</thead>
		<tbody>
			<?php if(count($questions)): ?>
    	<?php foreach ($questions as $question): ?>
    		<tr>
        		<td><?php echo $question['Question']['id']; ?></td>
        		<td>
        			<?php echo $this -> Html -> link($question['Question']['title'], array('controller' => 'questions', 'action' => 'view', $question['Question']['id'])); ?>
        		</td>
        		<td><?php echo $question['Question']['count'] ?></td>
        		<td><p class="sl_registered_date"><?php echo $this -> App -> getFormatDate($question['Question']['created_at'], 3); ?></p></td>
    		</tr>
    		<?php endforeach; ?>
    		<?php unset($questions); ?>
    		<?php else: ?>
    		<tr>
    			<td colspan="4"><?php echo __('No Article') ?></td>
    		</tr>
    		<?php endif ?>
		</tbody>
	</table>
	<div id="sl_index_bottom_menu">
		<?php echo $this -> App -> pagination($this -> Paginator) ?>
		<?php echo $this -> Html -> link(__('New Question'), array('action' => 'add'),array('class'=>"btn btn-default btn btn-default col-xs-12 col-md-2")) ?>		
		<?php echo $this-> element ('search') ?>
	</div>
</section>


