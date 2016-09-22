<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Notices Controller
 *
 * @property \App\Model\Table\NoticesTable $Notices
 */
class HomeController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
     /*
	public function beforeFilter() {
		parent::beforeFilter();
		$this -> Auth -> allow('index');
		
		if($this->Session->Read('Auth.User.group_id')==1) {
			$this->Auth->allow('admin_index');	
		} 
	}
*/
	public function index() {
		$this -> loadModel('Notice');
		$this -> set('notices', $this -> Notice -> find('all', array('order'=>'id desc','limit' => 5, 'recursive' => -1)));

		$this -> loadModel('Question');
		$this -> set('questions', $this -> Question -> find('all', array('order'=>'id desc','limit' => 5, 'recursive' => -1)));

		$this -> loadModel('GuestBook');
		$this -> set('guest_books', $this -> GuestBook -> find('all', array('order'=>'id desc','limit' => 5, 'recursive' => -1)));

		$this -> loadModel('Gallery');
		$galleries=$this -> Gallery -> find('all', array('order'=>'id desc','limit' => 5, 'recursive' => -1));
		$this -> set('galleries',array_chunk($galleries,5));

		$this -> loadModel('Blog');
		$this -> set('blogs', $this -> Blog -> find('all', array('conditions'=>array('photo is not null'),'order'=>'id desc','limit' => 5, 'recursive' => -1)));
	}
}
