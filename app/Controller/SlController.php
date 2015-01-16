<?php
App::uses('AppController', 'Controller');
/**
 * Blogs Controller
 *
 * @property Blog $Blog
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class SlController extends AppController {
	public $layout = 'sl';

	public function beforeFilter() {
		parent::beforeFilter();

		$this -> loadModel('BlogCategory');
		$this -> set('asideBlogCategories', $this -> BlogCategory -> find('all', array('conditions'=>array('enable'=>true),'recursive' => -1)));

		$this -> loadModel('Tag');
		$this -> set('asideTags', $this -> Tag -> find('all'));

		$this -> Auth -> allow('index', 'show');
	}

	protected function getImpressionCount($id) {
		$this->loadModel('Impression');
		return $this->Impression->find('count',array('conditions'=>array('impressionable_type'=>$this->modelClass,'controller_name'=>$this->params['controller'],'action_name'=>$this->params['action'],'ip_address'=>$this->request->clientIp(),'impressionable_id'=>$id)));
	}

	protected function addImpression($id) {
		if($this->getImpressionCount($id)) {
		//	if($this->Impression->
			return false;
		} else {
			if(!$this->Impression->save(array('impressionable_type'=>$this->modelClass,'controller_name'=>$this->params['controller'],'action_name'=>$this->params['action'],'ip_address'=>$this->request->clientIp(),'impressionable_id'=>$id,'referrer'=>$this->request->referer()))) {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'),'error');
			}
			return true;
		}
	}
}
