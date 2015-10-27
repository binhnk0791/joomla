<?php
/**
 * $JA#COPYRIGHT$
 */

$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$basepath = JURI::root(true).'/modules/' . $module->module . '/assets/';

$doc->addStyleSheet($basepath.'css/style.css');
//load override css
$templatepath = 'templates/'.$app->getTemplate().'/css/'.$module->module.'.css';
if(file_exists(JPATH_SITE . '/' . $templatepath)) {
	$doc->addStyleSheet(JURI::root(true).'/'.$templatepath);
}

//script
$doc->addScript($basepath.'js/yoxview-init.js');
$doc->addScript($basepath.'js/jquery.iscroll.js');
$doc->addScript($basepath.'js/script.js');