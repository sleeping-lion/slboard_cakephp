<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different URLs to chosen controllers and their actions (functions).
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
 * @package       app.Config
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
/**
 * Here, we are connecting '/' (base path) to controller called 'Pages',
 * its action called 'display', and we pass a param to select the view file
 * to use (in this case, /app/View/Pages/home.ctp)...
 */

Router::connect('/', array('controller' => 'home'));
Router::connect('/admin', array('controller' => 'home', 'action' => 'index', 'admin' => true));
Router::connect('/admin/login', array('controller' => 'users', 'action' => 'admin_login', 'admin' => true));
Router::connect('/admin/logout', array('controller' => 'users', 'action' => 'admin_logout', 'admin' => true));


Router::connect('/logout', array('controller' => 'users', 'action' => 'logout'));
Router::connect('/login', array('controller' => 'users', 'action' => 'login'));
Router::connect('/tags/:tag',array('controller'=>'blogs','action'=>'index'));
/**
 * ...and connect the rest of 'Pages' controller's URLs.
 */
Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));


Router::connect('/:controller/check_password/:id', array('action' => 'check_password'),array('pass' => array('id'), 'id' => '[0-9]+'));
Router::connect('/:controller/confirm_delete/:id', array('action' => 'confirm_delete'),array('pass' => array('id'), 'id' => '[0-9]+'));
Router::connect('/:controller/change_status/:id', array('action' => 'change_status'),array('pass' => array('id'), 'id' => '[0-9]+'));
/**
 * Load all plugin routes. See the CakePlugin documentation on
 * how to customize the loading of plugin routes.
 */
CakePlugin::routes();

Router::parseExtensions('json','xml');
/**
 * Load the CakePHP default routes. Only remove this if you do not want to use
 * the built-in default routes.
 */
require CAKE . 'Config' . DS . 'routes.php';
