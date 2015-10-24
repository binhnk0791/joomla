<?php
/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */


defined('_JEXEC') or die;

$hasSlideshow = '';

if ($this->countModules('slideshow')) :

$hasSlideshow = 'has-slideshow ';

endif;

$noneResponsive = ""; 

if (!($this->getParam('responsive', 1))): 
 
 $noneResponsive = " none-responsive";

endif;

$tplParams = JFactory::getApplication()->getTemplate(true)->params;
$background = array();

$background1 = $tplParams->get('background1','');
if($background1) array_push($background,$background1);

$background2 = $tplParams->get('background2','');
if($background2) array_push($background,$background2);

$background3 = $tplParams->get('background3','');
if($background3) array_push($background,$background3);

$stylebody = '';
if(count($background) > 0){
	$stylebody = 'style="background: url("'.$background[rand(0, count($background)-1)].'") no-repeat fixed 0 0 / 100% 100% transparent;"';
}
?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>"
	  class='<jdoc:include type="pageclass" /> <?php echo $noneResponsive; ?>'>

<head>
	<jdoc:include type="head" />
	<?php $this->loadBlock('head') ?>
</head>

<body class="<?php echo $hasSlideshow; ?>">

<div class="t3-wrapper" <?php echo $stylebody;?>> <!-- Need this wrapper for off-canvas menu. Remove if you don't use of-canvas -->

	<?php $this->loadBlock('topbar') ?>

  <?php $this->loadBlock('header') ?>

  <?php $this->loadBlock('top-banner') ?>
  
  <?php $this->loadBlock('masthead') ?>
  
  <?php $this->loadBlock('slideshow') ?>

  <?php $this->loadBlock('mainbody') ?>

  <?php $this->loadBlock('bottom-slider') ?>
  
  <?php $this->loadBlock('bottom-banner') ?>

  <?php $this->loadBlock('navhelper') ?>

  <?php $this->loadBlock('footer') ?>

</div>

</body>

</html>