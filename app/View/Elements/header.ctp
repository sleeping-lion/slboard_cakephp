<header>
	<ul id="top_menu">
		<?php if($this->Session->check('Auth.User')): ?>		
			
		<li><?php echo $this -> Html -> link(__('Edit User'),array('controller'=>'users','action'=>'edit',$this->Session->Read('Auth.User.id'))) ?></li>
		<li><?php echo $this -> Html -> link(__('logout'),'/logout') ?></li>
		<?php else: ?>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users','action'=>'add')) ?></li>
		<li><?php echo $this->Html->link(__('Login'), array('controller' => 'users','action'=>'login')) ?></li>
		<?php endif ?>
	</ul>
	<nav class="container">
	<h1><a href="/" title="홈으로"><?php echo __('Home Title'); ?></a></h1>
		<ul class="nav nav-pills">
			<li <?php if(!strcmp($this->params['controller'],'intro')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Intro'), array('controller' => 'intro','action'=>'index'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'contacts')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Contact'), array('controller' => 'contacts','action'=>'add'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'blogs')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Blog'), array('controller' => 'blogs','action'=>'index')); ?></li>			
			<li <?php if(!strcmp($this->params['controller'],'galleries')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Gallery'), array('controller' => 'galleries','action'=>'index'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'questions')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Question'), array('controller' => 'questions','action'=>'index'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'faqs')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Faq'), array('controller' => 'faqs','action'=>'index'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'notices')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Notice'), array('controller' => 'notices','action'=>'index'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'guest_books')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Guest Book'), array('controller' => 'guest_books','action'=>'index'))?></li>
			<li <?php if(!strcmp($this->params['controller'],'portfolios')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Portfolio'), array('controller' => 'portfolios','action'=>'index'))?></li>
		</ul>
	</nav>
</header>
