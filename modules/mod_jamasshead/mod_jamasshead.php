<?php
/**
 * $JA#COPYRIGHT$
 */

defined( '_JEXEC' ) or die( 'Restricted access' );
require_once (dirname(__FILE__).'/helper.php');
$helper = ModJAMassheadHelper::getInstance();
// Get masshead information
$masshead = $helper->getMasshead($params);

// Display
require JModuleHelper::getLayoutPath($module->module, $params->get('layout', 'default'));