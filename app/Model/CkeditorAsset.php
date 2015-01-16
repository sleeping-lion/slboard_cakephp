<?php
App::uses('AppModel', 'Model');
/**
 * Notices Model
 *
 */
class CkeditorAsset extends AppModel {
	public $actsAs = array('Upload.Upload' => array('data_file_name' =>
	 array('path' => '{ROOT}{DS}webroot{DS}files{DS}{model}{DS}photo{DS}','fields' => array('dir' => 'id','type' => 'data_content_type','size' => 'data_file_size'), 'thumbnailSizes' => array('xvga' => '1024x768','small'=>'400x300','thumb' => '100x100'))));

/**
 * Display field
 *
 * @var string
 */
//	public $displayField = 'photo';
/**
 * Validation rules
 *
 * @var array
 */

	
/**
 * belongsTo associations
 *
 * @var array
 */	

}
