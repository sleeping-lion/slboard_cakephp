<?php
App::uses('AppModel', 'Model');
/**
 * Notices Model
 *
 */
class SlAnonModel extends AppModel {
	public function save($data = null, $validate = true, $fieldList = array()) {
		$now = date('Y-m-d H:i:s');
	// set created_at field before creation
		if (!isset($this->data[$this->name]) || !$this->data[$this->name]['id']) {
			$data[$this->name]['created_at'] = $now;
		}
		// set updated_at field value before each save
		$data[$this->name]['updated_at'] = $now;
		return parent::save($data, $validate, $fieldList);
	}
}
	