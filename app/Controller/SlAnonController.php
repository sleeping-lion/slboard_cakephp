<?php
App::uses('SlController', 'Controller');
/**
 * Blogs Controller
 *
 * @property Blog $Blog
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class SlAnonController extends SlController {

	public $components = array('Recaptcha.Recaptcha');

	public function beforeFilter() {
		parent::beforeFilter();
		$this -> Auth -> allow('index', 'view', 'add', 'edit');
	}

	protected function searchUserCondition($modelAilas=null,$modelUserAlias='User') {
		return array('conditions' => array('OR'=>array($modelUserAlias.'.name'=>$search_text),array($modelAilas.'.name'=>$search_text)));
	}
}
