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
	
	protected function setSearch($modelAilas,$modleContentAlias=null) {
		$conditions=array();
		$search_type=null;
		$search_text=null;
		
		if(empty($modleContentAlias)) {
			$modleContentAlias=$modelAilas.'Content';
		}
		
		if(isset($this->request->query['search_type']) AND isset($this->request->query['search_text'])) {
			$search_type=$this->request->query['search_type'];
			$search_text=$this->request->query['search_text'];

			$search_model_condition=array($modelAilas.'.title LIKE' => '%'.$search_text.'%');
			$search_modelContent_condition=array($modleContentAlias.'.content LIKE' => '%'.$search_text.'%');

			switch($search_type) {
				case 'title' :
   			 $this->Paginator->settings = array('conditions' => $search_model_condition);
					break;
				case 'content' :
   			 $this->Paginator->settings = array('conditions' => $search_modelContent_condition);
					break;
				case 'title+content':
   			 $this->Paginator->settings = array('conditions' => array('OR'=>$search_model_condition,$search_modelContent_condition));
					break;
			}
		}
		
		$this->set('searchTypeOption',array('title'=>__('title'),'content'=>__('content'),'title+content'=>__('title+content')));
		$this->set('searchType',$search_type);
		$this->set('searchText',$search_text);
	}	

	public function beforeFilter() {
		parent::beforeFilter();
		
		$this -> loadModel('BlogCategory');
		$this -> set('asideBlogCategories', $this -> BlogCategory -> find('all', array('conditions'=>array('enable'=>true),'recursive' => -1)));

		$this -> loadModel('Tag');
		$this -> set('asideTags', $this -> Tag -> find('all'));

		$this -> Auth -> allow('index', 'view');
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
