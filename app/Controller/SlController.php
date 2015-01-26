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
	
	protected function getModelContentAlias($modelAilas) {
		return $modelAilas . 'Content';
	}
	
	protected function searchTitleCondition($modelAilas,$search_text) {
		 return array($modelAilas . '.title LIKE' => '%' . $search_text . '%');
	}
	
	protected function searchContentCondition($modelAilas,$search_text) {
		return array($modelAilas . '.content LIKE' => '%' . $search_text . '%');
	}	
	
	protected function searchTitleOrContentCondition($modelAilas,$search_text,$modelContentAlias) {
		return array('OR'=>array($this->searchTitleCondition($modelAilas,$search_text),$this->searchContentCondition($modelContentAlias,$search_text)));
	}	
	
	protected function searchUserCondition($modelAilas,$search_text,$modelUserAlias='User') {
		return array($modelUserAlias.'.name Like'=>'%'.$search_text.'%');
	}

	protected function setSearch($modelAilas, $modleContentAlias = null, $hasCategory = false, $modleCategoryAlias = null) {
		$conditions = array();
		$search_type = null;
		$search_text = null;

		if (empty($modleContentAlias)) {
			$modleContentAlias=$this->getModelContentAlias($modelAilas);
		}

		if ($hasCategory) {
			$search_model_condition = array($modleCategoryAlias.'.enable'=>true,$modelAilas . '.enable' => true);
		} else {
			$search_model_condition = array($modelAilas . '.enable' => true);
		}

		if (isset($this -> request -> query['search_type']) AND isset($this -> request -> query['search_text'])) {
			$search_type = $this -> request -> query['search_type'];
			$search_text = $this -> request -> query['search_text'];

			switch($search_type) {
				case 'title' :
					$this -> Paginator -> settings = array('conditions' =>  array_merge($search_model_condition,$this->searchTitleCondition($modelAilas,$search_text)),'paramType' => 'querystring','limit'=>10,'order'=>array('id' => 'desc'));
					break;
				case 'content' :
					$this -> Paginator -> settings = array('conditions' => array_merge($search_model_condition,$this->searchContentCondition($modleContentAlias,$search_text)) ,'paramType' => 'querystring','limit'=>10,'order'=>array('id' => 'desc'));
					break;
				case 'title+content' :
					$this -> Paginator -> settings = array('conditions'=> array_merge($search_model_condition,$this->searchTitleOrContentCondition($modelAilas,$search_text,$modleContentAlias)),'paramType' => 'querystring','limit'=>10,'order'=>array('id' => 'desc'));
					break;
				case 'username' :
					$this -> Paginator -> settings = array('conditions'=> array_merge($search_model_condition,$this->searchUserCondition($modelAilas,$search_text)),'paramType' => 'querystring','limit'=>10,'order'=>array('id' => 'desc'));
					break;
			}
		} else {
			$this -> Paginator -> settings = array('conditions' => $search_model_condition,'paramType' => 'querystring','limit'=>10,'order'=>array('id' => 'desc'));
		}

		$this -> set('searchTypeOption', array('title' => __('title'), 'content' => __('content'), 'title+content' => __('title+content'), 'username' => __('writer')));
		$this -> set('searchType', $search_type);
		$this -> set('searchText', $search_text);
	}

	public function beforeFilter() {
		parent::beforeFilter();

		$this -> loadModel('BlogCategory');
		$this -> set('asideBlogCategories', $this -> BlogCategory -> find('all', array('conditions' => array('enable' => true), 'recursive' => -1)));

		$this -> loadModel('Tag');
		$this -> set('asideTags', $this -> Tag -> find('all'));

		$this -> Auth -> allow('index', 'view');
	}

	protected function getImpressionCount($id) {
		$this -> loadModel('Impression');
		return $this -> Impression -> find('count', array('conditions' => array('impressionable_type' => $this -> modelClass, 'controller_name' => $this -> params['controller'], 'action_name' => $this -> params['action'], 'ip_address' => $this -> request -> clientIp(), 'impressionable_id' => $id)));
	}

	protected function addImpression($id) {
		if ($this -> getImpressionCount($id)) {
			//	if($this->Impression->
			return false;
		} else {
			if (!$this -> Impression -> save(array('impressionable_type' => $this -> modelClass, 'controller_name' => $this -> params['controller'], 'action_name' => $this -> params['action'], 'ip_address' => $this -> request -> clientIp(), 'impressionable_id' => $id, 'referrer' => $this -> request -> referer()))) {
				$this -> Session -> setFlash(__('The post could not be saved. Please, try again.'), 'error');
			}
			return true;
		}
	}

	public function admin_index() {
		$this -> layout = 'admin';
		$this -> index();
	}

	public function admin_view($id = null) {
		$this -> layout = 'admin';
		$this -> view($id);
	}

	public function admin_add() {
		$this -> layout = 'admin';
		$this -> add();
	}

	public function admin_edit($id = null) {
		$this -> layout = 'admin';
		$this -> edit($id);
	}

	public function admin_delete($id) {
		$this -> layout = 'admin';
		$this -> delete($id);
	}
}
