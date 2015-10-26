<?php
/**
 * $JA#COPYRIGHT$
 */

// no direct access
defined('_JEXEC') or die('Restricted access');
// Include the syndicate functions only once
require_once (dirname(__FILE__) . '/helper.php');

JHTML::_('behavior.tooltip');
include_once(dirname(__FILE__).'/assets/asset.php');

$params->def('greeting', 1);
$type = modJALoginHelper::getType();
$return = modJALoginHelper::getReturnURL($params, $type);

$user = JFactory::getUser();

$captchatext = "";
$option = $app->input->get('option', '');
if(!$user->id && ($option !== "com_users") && ($option !== "com_contact" )){
	JForm::addFormPath(JPATH_SITE."/components/com_users/models/forms");
	$form = JForm::getInstance('com_users.registration',"registration", array('control' => 'jform'), false, false);
	$captcha = $form->getField("captcha");
	$captchatext = $captcha->input;

}

//Secret Key: only apply in Joomla 3
$tfa  = null;
if(version_compare(JVERSION, '3.0', '>=')){
	$tfa = JPluginHelper::getPlugin('twofactorauth'); 
}

//DISPLAYING
require JModuleHelper::getLayoutPath($module->module, $params->get('layout', 'default'));