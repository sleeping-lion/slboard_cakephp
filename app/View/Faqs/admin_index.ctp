<?php $this -> Html -> addCrumb(__('Guest Books'), array('controller' => 'guest_books', 'action' => 'index')); ?>
<?php $this -> assign('title', __('Guest Books')); ?>
<section id="sl_guest_book_index" class="table-responsive">
	<table width="100%" cellpadding="0" cellspacing="0" class="table slboard_list">
		<colgroup>
			<col width="50px" />
			<col />
			<col width="100px" />
		</colgroup>
		<thead>
			<tr>
				<th><?php echo $this -> Paginator -> sort('id', 'Id'); ?></th>
       <th><?php echo $this -> Paginator -> sort('title', 'title'); ?></th>
       <th><?php echo $this -> Paginator -> sort('created', 'created'); ?></th>
			</tr>
		</thead>
		<tbody>
			<?php if(count($guestBooks)): ?>
    	<?php foreach ($guestBooks as $guestBook): ?>
    		<tr>
        		<td><?php echo $guestBook['GuestBook']['id']; ?></td>
        		<td><?php echo $this -> Html -> link($guestBook['GuestBook']['title'], array('controller' => 'guest_books', 'action' => 'view', $guestBook['GuestBook']['id'])); ?></td>
        		<td><p class="sl_registered_date"><?=$this -> App -> getFormatDate($guestBook['GuestBook']['created'], 3); ?></p></td>
    		</tr>
    		<?php endforeach; ?>
    		<?php unset($guestBooks); ?>
    		<?php else: ?>
    		<tr>
    			<td colspan="3"><?php echo __('No Article') ?></td>
    		</tr>
    		<?php endif ?> 
		</tbody>
	</table>
	<div id="sl_bottom_menu">
		<?php echo $this -> Html -> link(__('New GuestBook'), array('action' => 'add')); ?>
		<?php echo $this -> App -> pagination($this -> Paginator); ?>
	</div>
</section>


