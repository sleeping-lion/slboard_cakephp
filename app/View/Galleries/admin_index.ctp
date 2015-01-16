<?php $this -> Html -> addCrumb(__('Galleries'), array('controller' => 'galleries', 'action' => 'index')); ?>
<?php $this -> assign('title', __('Galleries')); ?>
	<?php if(isset($galleryCategories)): ?>
	<ol class="nav nav-tabs sl_categories">
		<?php if(count($galleryCategories)): ?>			
		<?php foreach($galleryCategories as $index=>$value): ?>
		<li><a href=""><?=$value['GalleryCategory']['title'] ?></a></li>
		<?php endforeach ?>
  	<?php else: ?>	
		<li>분류가 없습니다.</li>
		<?php endif ?>
	</ol>
	<?php endif ?>	
	<div id="sl_gallery">
		<?php if(isset($gallery)): ?>
		<div id="sl_gallery_left">
			
		</div>
		<div id="sl_gallery_right">
			<div><?=nl2br($gallery['content']) ?></div>
		</div>
		<?php endif ?>
		
		<div id="sl_gallery_slide">
		<a class="prev browse left"></a>
			<div class="scrollable">
				<?php if(count($galleries)): ?>	
				<div class="items">
					
					<ul class="item">
						<?php foreach($galleries as $gallery): ?>
							<?php print_r($gallery['Gallery']) ?>
						<li><a href=""><img src="/files/gallery/photo/'.<?php echo $gallery['Gallery']['id']; ?>/<?php echo $gallery['Gallery']['photo'] ?>" /></a></li>
						<?php endforeach ?>
					</ul>
									
				</div>
			<?php else: ?>
			<ul>
				<li>글이 없습니다</li>
			</ul>
			<?php endif ?>
			</div>
			<a class="next browse right"></a>			
		</div>
	</div>
	<div id="sl_bottom_menu">
		<?php echo $this -> Html -> link(__('New Gallery'), array('action' => 'add')); ?>
		<?php echo $this -> App -> pagination($this -> Paginator); ?>
	</div>
</section>