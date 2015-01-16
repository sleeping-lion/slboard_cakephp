<?php
App::uses('SlController', 'Controller');
/**
 * GuestBookComments Controller
 *
 * @property GuestBookComment $GuestBookComment
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class GuestBookCommentsController extends SlController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->GuestBookComment->recursive = 0;
		$this->set('guestBookComments', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->GuestBookComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		$options = array('conditions' => array('GuestBookComment.' . $this->GuestBookComment->primaryKey => $id));
		$this->set('guestBookComment', $this->GuestBookComment->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->GuestBookComment->create();
			if ($this->GuestBookComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		}
		$guestBooks = $this->GuestBookComment->GuestBook->find('list');
		$users = $this->GuestBookComment->User->find('list');
		$this->set(compact('guestBooks', 'users'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->GuestBookComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->GuestBookComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('GuestBookComment.' . $this->GuestBookComment->primaryKey => $id));
			$this->request->data = $this->GuestBookComment->find('first', $options);
		}
		$guestBooks = $this->GuestBookComment->GuestBook->find('list');
		$users = $this->GuestBookComment->User->find('list');
		$this->set(compact('guestBooks', 'users'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->GuestBookComment->id = $id;
		if (!$this->GuestBookComment->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->GuestBookComment->delete()) {
			$this->Session->setFlash(__('The post has been deleted.'));
		} else {
			$this->Session->setFlash(__('The post could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}

/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$this->GuestBookComment->recursive = 0;
		$this->set('guestBookComments', $this->Paginator->paginate());
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->GuestBookComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		$options = array('conditions' => array('GuestBookComment.' . $this->GuestBookComment->primaryKey => $id));
		$this->set('guestBookComment', $this->GuestBookComment->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->GuestBookComment->create();
			if ($this->GuestBookComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		}
		$guestBooks = $this->GuestBookComment->GuestBook->find('list');
		$users = $this->GuestBookComment->User->find('list');
		$this->set(compact('guestBooks', 'users'));
	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->GuestBookComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->GuestBookComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('GuestBookComment.' . $this->GuestBookComment->primaryKey => $id));
			$this->request->data = $this->GuestBookComment->find('first', $options);
		}
		$guestBooks = $this->GuestBookComment->GuestBook->find('list');
		$users = $this->GuestBookComment->User->find('list');
		$this->set(compact('guestBooks', 'users'));
	}

/**
 * admin_delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->GuestBookComment->id = $id;
		if (!$this->GuestBookComment->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->GuestBookComment->delete()) {
			$this->Session->setFlash(__('The post has been deleted.'));
		} else {
			$this->Session->setFlash(__('The post could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
