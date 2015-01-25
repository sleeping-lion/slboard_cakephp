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
	
	protected function searchUserCondition($modelAilas=null,$modelUserAlias='User') {
		return array('conditions' => array($modelUserAlias.'.name'=>$search_text));
	}

	protected function setSearch($modelAilas, $modleContentAlias = null, $hasCategory = false, $modleCategoryAlias = null) {
		$conditions = array();
		$search_type = null;
		$search_text = null;

		if (empty($modleContentAlias)) {
			$modleContentAlias = $modelAilas . 'Content';
		}

		if ($hasCategory) {
			$search_model_condition = array($modleCategoryAlias.'.enable'=>true,$modelAilas . '.enable' => true);
		} else {
			$search_model_condition = array($modelAilas . '.enable' => true);
		}

		if (isset($this -> request -> query['search_type']) AND isset($this -> request -> query['search_text'])) {
			$search_type = $this -> request -> query['search_type'];
			$search_text = $this -> request -> query['search_text'];

			$search_model_condition = array_merge($search_model_condition, array($modelAilas . '.title LIKE' => '%' . $search_text . '%'));
			$search_modelContent_condition = array_merge($search_model_condition, array($modleContentAlias . '.content LIKE' => '%' . $search_text . '%'));

			switch($search_type) {
				case 'title' :
					$this -> Paginator -> settings = array('conditions' => $search_model_condition);
					break;
				case 'content' :
					$this -> Paginator -> settings = array('conditions' => $search_modelContent_condition);
					break;
				case 'username' :
					$this -> Paginator -> settings = $this->searchUserCondition($modelAilas);
					break;
			}
		} else {
			$this -> Paginator -> settings = array('conditions' => $search_model_condition);
		}

		$this -> set('searchTypeOption', array('title' => __('title'), 'content' => __('content'), 'username' => __('writer')));
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

}
