<header>		
	<ul id="top_menu">	
		<li></li>
		<li></li>
	</ul>
	<nav class="container">
	<h1><a href="/" title="홈으로"><?php echo _('Home Title'); ?></a></h1>
		<ul class="nav nav-pills">
			<li <?php if($this->params['controller']=='intro'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Intro'), array('controller' => 'intro', 'action' => 'index')); ?></li>
			<li <?php if($this->params['controller']=='faqCategories'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Faq Category'), array('controller' => 'faqCategories', 'action' => 'index')); ?></li>										
			<li <?php if($this->params['controller']=='faqs'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('FAQ'), array('controller' => 'faqs', 'action' => 'index')); ?></li>
			<li <?php if($this->params['controller']=='contacts'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Contact'), array('controller' => 'contacts', 'action' => 'add')); ?></li>
			<li <?php if($this->params['controller']=='questions'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Question'), array('controller' => 'questions', 'action' => 'index')); ?></li>	
			<li <?php if($this->params['controller']=='galleryCategories'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Gallery Category'), array('controller' => 'galleryCategories', 'action' => 'index')); ?></li>
			<li <?php if($this->params['controller']=='galleries'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Gallery'), array('controller' => 'galleries', 'action' => 'index')); ?></li>
			<li <?php if($this->params['controller']=='blogCategories'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Blog Category'), array('controller' => 'blogCategories', 'action' => 'index')); ?></li>				
			<li <?php if($this->params['controller']=='blogs'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Blog'), array('controller' => 'blogs', 'action' => 'index')); ?></li>
			<li <?php if($this->params['controller']=='notices'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('Notice'), array('controller' => 'notices', 'action' => 'index')); ?></li>
			<li <?php if($this->params['controller']=='guest_books'): ?>class="active"<?php endif ?>><?=$this -> Html -> link(_('GuestBook'), array('controller' => 'guest_books', 'action' => 'index')); ?></li>
		</ul>
	</nav>
</header>
