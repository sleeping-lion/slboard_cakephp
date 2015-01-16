<?php
/**
 * Application level View Helper
 *
 * This file is application-wide helper file. You can put all
 * application-wide helper-related methods here.
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Helper
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Helper', 'View');

/**
 * Application helper
 *
 * Add your application-wide methods in the class below, your helpers
 * will inherit them.
 *
 * @package       app.View.Helper
 */
class AppHelper extends Helper {
	public function getOrderLink($paginator,$field,$label=null) {
		$icon='';

		if(isset($_GET['sort'])) {
			if($field==$_GET['sort']) {
				if($_GET['direction']=='desc') {
					$icon='<span class="glyphicon glyphicon-sort-by-attributes-alt"></span>';
				} else {
					$icon='<span class="glyphicon glyphicon-sort-by-attributes"></span>';
				}
			}
		}
		
		if(empty($label)) {
			$label=ucfirst($field);
		}
		
		return $paginator -> sort($field,$label.$icon,array('escape'=>false));
	}
	
	public function pagination($paginator) {
		return $paginator -> numbers(array('before' => '<div class="text-center"><ul class="pagination">', 'separator' => '', 'currentTag' => 'span', 'currentClass' => 'active', 'tag' => 'li', 'after' => '</ul></div>'));
	}	
	
	public function getFormatDate($date, $type = null, $noTodayTime = false) {
		$date1 = explode(' ', $date);
		$date2 = explode('-', $date1[0]);

		switch(intval($type)) {
			case 1 :
				return $date2[0] . '년 ' . $date2[1] . '월';
			case 2 :
				return $date2[0] . '.' . $date2[1];
			case 3 :
				return $date2[0] . '.' . $date2[1] . '.' . $date2[2];
			case 4 :
				return $date2[1] . '-' . $date2[2];
			case 5 :
				$week = date("w", mktime(0, 0, 0, $date2[1], $date2[2], $date2[0]));
				switch($week) {
					case 0 :
						$strWeek = '일';
						break;
					case 1 :
						$strWeek = '월';
						break;
					case 2 :
						$strWeek = '화';
						break;
					case 3 :
						$strWeek = '수';
						break;
					case 4 :
						$strWeek = '목';
						break;
					case 5 :
						$strWeek = '금';
						break;
					case 6 :
						$strWeek = '토';
						break;
				}
				return $date2[1] . '.' . $date2[2] . '(' . $strWeek . ')';
			case 6 :
				return substr($date2[0], 2, 2) . '.' . $date2[1] . '.' . $date2[2];

			default :
				if ($noTodayTime)
					return $date1[0];

				if (mktime(0, 0, 0, date("m"), date("d"), date("Y")) == mktime(0, 0, 0, $date2[1], $date2[2], $date2[0])) {
					return $date1[1];
				} else {
					return $date1[0];
				}
		}
	}	
}
