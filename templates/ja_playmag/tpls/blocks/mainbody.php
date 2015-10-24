<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php
/**
 * Mainbody 3 columns, content in left, mast-col on top of 2 sidebars: content - sidebar1 - sidebar2
 */

// positions configuration

$sidebar1 = 'sidebar-1';
$sidebar2 = 'sidebar-2';

$sidebar1 = $this->countModules($sidebar1) ? $sidebar1 : false;
$sidebar2 = $this->countModules($sidebar2) ? $sidebar2 : false;

if ($sidebar1 && $sidebar2) {
	$this->loadBlock('mainbody/two-sidebar-right', array('sidebar1' => $sidebar1, 'sidebar2' => $sidebar2));
} elseif ($sidebar1 || $sidebar2) {
	$this->loadBlock('mainbody/one-sidebar-right', array('sidebar' => $sidebar1 ? $sidebar1 : $sidebar2));
} else {
	$this->loadBlock('mainbody/no-sidebar');
}

?>

