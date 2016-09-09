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
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

use Cake\Core\Plugin;
use Cake\Routing\RouteBuilder;
use Cake\Routing\Router;
use Cake\Routing\Route\DashedRoute;

/**
 * The default class to use for all routes
 *
 * The following route classes are supplied with CakePHP and are appropriate
 * to set as the default:
 *
 * - Route
 * - InflectedRoute
 * - DashedRoute
 *
 * If no call is made to `Router::defaultRouteClass()`, the class used is
 * `Route` (`Cake\Routing\Route\Route`)
 *
 * Note that `Route` does not do any inflections on URLs which will result in
 * inconsistently cased URLs when used with `:plugin`, `:controller` and
 * `:action` markers.
 *Router::connect('/', array('controller' => 'home'));
Router::connect('/admin', array('controller' => 'home', 'action' => 'index', 'admin' => true));
Router::connect('/admin/:controller/:action/:id', array('admin' => true),array('pass' => array('id'), 'id' => '[0-9]+'));
Router::connect('/admin/login', array('controller' => 'users', 'action' => 'admin_login', 'admin' => true));
Router::connect('/admin/logout', array('controller' => 'users', 'action' => 'admin_logout', 'admin' => true));


Router::connect('/logout', array('controller' => 'users', 'action' => 'logout'));
Router::connect('/login', array('controller' => 'users', 'action' => 'login'));
Router::connect('/tags/:tag',array('controller'=>'blogs','action'=>'index'));
Router::connect('/theme_select/:theme',array('controller'=>'theme_select','action'=>'view'),array('pass' => array('theme')));
Router::connect('/language_select/:language',array('controller'=>'language_select','action'=>'view'),array('pass' => array('language')));

Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));


Router::connect('/:controller/check_password/:id', array('action' => 'check_password'),array('pass' => array('id'), 'id' => '[0-9]+'));
Router::connect('/:controller/confirm_delete/:id', array('action' => 'confirm_delete'),array('pass' => array('id'), 'id' => '[0-9]+'));
Router::connect('/:controller/change_status/:id', array('action' => 'change_status'),array('pass' => array('id'), 'id' => '[0-9]+'));
 */
Router::defaultRouteClass(DashedRoute::class);

Router::scope('/', function (RouteBuilder $routes) {
    /**
     * Here, we are connecting '/' (base path) to a controller called 'Pages',
     * its action called 'display', and we pass a param to select the view file
     * to use (in this case, src/Template/Pages/home.ctp)...
     */
    $routes->connect('/', ['controller' => 'home', 'action' => 'index', 'home']);
	
	$routes->connect('/notices',['controller' => 'Notices', 'action' => 'index']);
	$routes->connect('/galleries',['controller' => 'Galleries', 'action' => 'index']);
	$routes->connect('/questions',['controller' => 'Questions', 'action' => 'index']);	
	
	$routes->connect('/login',['controller' => 'Users', 'action' => 'login'],['_name' => 'login']);
    /**
     * ...and connect the rest of 'Pages' controller's URLs.
     */
    $routes->connect('/pages/*', ['controller' => 'Pages', 'action' => 'display']);

    /**
     * Connect catchall routes for all controllers.
     *
     * Using the argument `DashedRoute`, the `fallbacks` method is a shortcut for
     *    `$routes->connect('/:controller', ['action' => 'index'], ['routeClass' => 'DashedRoute']);`
     *    `$routes->connect('/:controller/:action/*', [], ['routeClass' => 'DashedRoute']);`
     *
     * Any route class can be used with this method, such as:
     * - DashedRoute
     * - InflectedRoute
     * - Route
     * - Or your own route class
     *
     * You can remove these routes once you've connected the
     * routes you want in your application.
     */
    $routes->fallbacks('DashedRoute');
});

/**
 * Load all plugin routes.  See the Plugin documentation on
 * how to customize the loading of plugin routes.
 */
Plugin::routes();
