<?php
App::uses('SlController', 'Controller');
/**
 * Faqs Controller
 *
 * @property Faq $Faq
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class CkeditorAssetsController extends SlController {

	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this -> CkeditorAsset -> recursive = 0;
		$this -> set('ckeditorAssets', $this -> Paginator -> paginate());
	}

	/**
	 * add method
	 *
	 * @return void
	 */
	public function add() {
		if ($this -> request -> is('post')) {
			$this -> CkeditorAsset -> create();
			if ($this -> CkeditorAsset -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The post has been saved.'), 'success');
				//return $this->redirect(array('action' => 'index'));
				$url='/files/cheditor_assets/photo/'.$this -> CkeditorAsset->getLastInsertID();

				echo '<script type="text/javascript">window.parent.CKEDITOR.tools.callFunction(' . $this->request->data['CkeditorAsset']['CKEditorFuncNum'] . ',"' . $url . '","' . $this->request->data['CkeditorAsset']['CKEditorFuncNum']. '")</script>';
				exit;
			} else {
				$this -> Session -> setFlash(__('The post could not be saved. Please, try again.'), 'error');
			}
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->CkeditorAsset->id = $id;
		if (!$this->CkeditorAsset->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
		$this->CkeditorAsset->allowMethod('post', 'delete');
		if ($this->CkeditorAsset->delete()) {
			$this->Session->setFlash(__('The post has been deleted.'),'success');
		} else {
			$this->Session->setFlash(__('The post could not be deleted. Please, try again.'),'error');
		}
		return $this->redirect(array('action' => 'index'));
	}
}
