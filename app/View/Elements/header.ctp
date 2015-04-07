<header>
	<ul id="top_menu">
		<?php if($this->Session->check('Auth.User')): ?>
		<li><?php echo $this -> Html -> link($this->Session->Read('Auth.User.name'),array('controller'=>'users','action'=>'edit',$this->Session->Read('Auth.User.id'))) ?><?php echo __('Welcome') ?></li>
		<li><?php echo $this -> Html -> link(__('Logout'),array('controller'=>'users','action'=>'logout')) ?></li>
		<?php else: ?>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users','action'=>'add')) ?></li>
		<li><?php echo $this->Html->link(__('Login'), array('controller' => 'users','action'=>'login')) ?></li>
		<?php endif ?>
	</ul>
	<nav class="container">
	<h1><a href="/" title="홈으로"><?php echo __('Home Title'); ?></a></h1>
		<ul class="nav nav-pills">
  <li role="presentation" class="dropdown <?php if(!strcmp($this->params['controller'],'intro') OR !strcmp($this->params['controller'],'histories') OR (!strcmp($this->params['controller'],'pages'))): ?><?php echo " active" ?><?php endif ?>">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
      <?php echo __('Intro') ?> <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" role="menu">  	
			<li><?php echo $this->Html->link(__('Intro'), array('controller' => 'intro','action'=>'index'))?></li>
			<li><?php echo $this->Html->link(__('History'), array('controller' => 'histories','action'=>'index'))?></li>			
    </ul>
  </li>

			<li <?php if(!strcmp($this->params['controller'],'contacts')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Contact').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'contacts','action'=>'add'),array('escape'=>false))?></li>
			<li <?php if(!strcmp($this->params['controller'],'blogs')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Blog').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'blogs','action'=>'index'),array('escape'=>false)); ?></li>			
			<li <?php if(!strcmp($this->params['controller'],'galleries')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo $this->Html->link(__('Gallery').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'galleries','action'=>'index'),array('escape'=>false))?></li>
			<li <?php if(!strcmp($this->params['controller'],'questions')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Question').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'questions','action'=>'index'),array('escape'=>false))?></li>
			<li <?php if(!strcmp($this->params['controller'],'faqs')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Faq').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'faqs','action'=>'index'),array('escape'=>false))?></li>
			<li <?php if(!strcmp($this->params['controller'],'notices')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Notice').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'notices','action'=>'index'),array('escape'=>false))?></li>
			<li <?php if(!strcmp($this->params['controller'],'guest_books')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Guest Book').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'guest_books','action'=>'index'),array('escape'=>false))?></li>
			<li <?php if(!strcmp($this->params['controller'],'portfolios')): ?><?php echo 'class="active"' ?><?php endif ?>><?php echo$this->Html->link(__('Portfolio').'<span class="visible-xs glyphicon glyphicon-chevron-right pull-right"></span>', array('controller' => 'portfolios','action'=>'index'),array('escape'=>false))?></li>
		</ul>
	</nav>
</header>
