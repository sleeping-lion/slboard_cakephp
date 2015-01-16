<?php
App::uses('SlController', 'Controller');
/**
 * QuestionComments Controller
 *
 * @property QuestionComment $QuestionComment
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class QuestionCommentsController extends SlController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->QuestionComment->recursive = 0;
		$this->set('questionComments', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->QuestionComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		$options = array('conditions' => array('QuestionComment.' . $this->QuestionComment->primaryKey => $id));
		$this->set('questionComment', $this->QuestionComment->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->QuestionComment->create();
			if ($this->QuestionComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		}
		$questions = $this->QuestionComment->Question->find('list');
		$users = $this->QuestionComment->User->find('list');
		$this->set(compact('questions', 'users'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->QuestionComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->QuestionComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('QuestionComment.' . $this->QuestionComment->primaryKey => $id));
			$this->request->data = $this->QuestionComment->find('first', $options);
		}
		$questions = $this->QuestionComment->Question->find('list');
		$users = $this->QuestionComment->User->find('list');
		$this->set(compact('questions', 'users'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->QuestionComment->id = $id;
		if (!$this->QuestionComment->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->QuestionComment->delete()) {
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
		$this->QuestionComment->recursive = 0;
		$this->set('questionComments', $this->Paginator->paginate());
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->QuestionComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		$options = array('conditions' => array('QuestionComment.' . $this->QuestionComment->primaryKey => $id));
		$this->set('questionComment', $this->QuestionComment->find('first', $options));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->QuestionComment->create();
			if ($this->QuestionComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		}
		$questions = $this->QuestionComment->Question->find('list');
		$users = $this->QuestionComment->User->find('list');
		$this->set(compact('questions', 'users'));
	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->QuestionComment->exists($id)) {
			throw new NotFoundException(__('Invalid post'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->QuestionComment->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('QuestionComment.' . $this->QuestionComment->primaryKey => $id));
			$this->request->data = $this->QuestionComment->find('first', $options);
		}
		$questions = $this->QuestionComment->Question->find('list');
		$users = $this->QuestionComment->User->find('list');
		$this->set(compact('questions', 'users'));
	}

/**
 * admin_delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->QuestionComment->id = $id;
		if (!$this->QuestionComment->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->QuestionComment->delete()) {
			$this->Session->setFlash(__('The post has been deleted.'));
		} else {
			$this->Session->setFlash(__('The post could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
