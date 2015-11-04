<?php
/**
 * $JA#COPYRIGHT$
 */

$app = JFactory::getApplication();

$basepath = JURI::root(true).'/modules/' . $module->module . '/assets/';

$doc = JFactory::getDocument();
$doc->addStyleSheet($basepath.'style.css');
//load override css
$templatepath = 'templates/'.$app->getTemplate().'/css/'.$module->module.'.css';
if(file_exists(JPATH_SITE . '/' . $templatepath)) {	
	$doc->addStyleSheet(JURI::root(true).'/'.$templatepath);
}

//script
$doc->addScript($basepath.'script.js');