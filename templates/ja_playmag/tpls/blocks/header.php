<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// get params
$sitename  = $this->params->get('sitename');
$slogan    = $this->params->get('slogan', '');
$logotype  = $this->params->get('logotype', 'text');
$logoimage = $logotype == 'image' ? $this->params->get('logoimage', T3Path::getUrl('images/logo/logo.png', '', true)) : '';
$logoimgsm = ($logotype == 'image' && $this->params->get('enable_logoimage_sm', 0)) ? $this->params->get('logoimage_sm', T3Path::getUrl('images/logo-sm.png', '', true)) : false;

if (!$sitename) {
	$sitename = JFactory::getConfig()->get('sitename');
}

$mainnavsize = 'col-sm-10 col-md-11';
if ($headright = $this->countModules('search or followus or off-canvas')) {
	$mainnavsize = 'col-sm-12 col-md-8';
}

$logsize = 'col-xs-3 col-sm-2 col-md-2';
if ($headright = $this->countModules('search or followus or off-canvas')) {
	$logsize = 'col-xs-3 col-sm-6 col-md-1';
}

?>

<!-- HEADER -->
<header id="t3-header" class="t3-header">
	<div class="container">
	<div class="row">

		<!-- LOGO -->
		<div class="<?php echo $logsize; ?> logo">
			<div class="logo-<?php echo $logotype, ($logoimgsm ? ' logo-control' : '') ?>">
				<a href="<?php echo JURI::base(true) ?>" title="<?php echo strip_tags($sitename) ?>">
					<?php if($logotype == 'image'): ?>
						<img class="logo-img <?php if($logoimgsm) : ?> hidden-sm hidden-xs <?php endif ?>" src="<?php echo JURI::base(true) . '/' . $logoimage ?>" alt="<?php echo strip_tags($sitename) ?>" />
					<?php endif ?>
					<?php if($logoimgsm) : ?>
						<img class="logo-img-sm visible-sm visible-xs" src="<?php echo JURI::base(true) . '/' . $logoimgsm ?>" alt="<?php echo strip_tags($sitename) ?>" />
					<?php endif ?>
					<span><?php echo $sitename ?></span>
				</a>
				<small class="site-slogan"><?php echo $slogan ?></small>
			</div>
		</div>
		<!-- //LOGO -->
		
		<!-- RIGHT BUTTON -->
		<?php if ($headright): ?>
			<div class="t3-nav-btn pull-right <?php if ($this->getParam('navigation_collapse_enable')) : echo 'has-collapse'; endif; ?>">
			
				<!-- OFFCANVAS -->
				<?php if ($this->countModules('off-canvas')) : ?>
					<div class="pull-right">
					<?php if ($this->getParam('addon_offcanvas_enable')) : ?>
						<?php $this->loadBlock ('off-canvas') ?>
					<?php endif ?>
					</div>
				<?php endif ?>
				<!-- //OFFCANVAS -->
				
				<!-- HEAD SEARCH -->
				<?php if ($this->countModules('search')) : ?>
					<div class="dropdown nav-search pull-right <?php $this->_c('search') ?>">
						<a data-toggle="dropdown" href="#" class="dropdown-toggle">
							<i class="fa fa-search"></i>									
						</a>
						<div class="nav-child dropdown-menu">
							<div class="dropdown-menu-inner">
								<jdoc:include type="modules" name="<?php $this->_p('search') ?>" style="T3Xhtml" />
							</div>
						</div>
					</div>
				<?php endif ?>
				<!-- //HEAD SEARCH -->

				<!-- USER, FOLLOW US -->				
				<?php if ($this->countModules('followus')) : ?>
					<div class="dropdown nav-connect pull-right <?php $this->_c('followus') ?>">
						<a data-toggle="dropdown" href="#" class="dropdown-toggle">
							<i class="fa fa-share-square-o"></i>									
						</a>
						<div class="nav-child dropdown-menu">
							<div class="dropdown-menu-inner">
								<jdoc:include type="modules" name="<?php $this->_p('followus') ?>" style="T3Xhtml" />
							</div>
						</div>
					</div>
				<?php endif ?>
				<!-- //USER, FOLLOW US -->
				
			</div>
		<?php endif ?>
		<!-- //RIGHT BUTTON -->
		
		<!-- MAIN NAVIGATION -->
		<nav id="t3-mainnav" class="<?php echo $mainnavsize; ?>">
			<div class="navbar navbar-default t3-mainnav">
		
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				
					<?php if ($this->getParam('navigation_collapse_enable', 1) && $this->getParam('responsive', 1)) : ?>
						<?php $this->addScript(T3_URL.'/js/nav-collapse.js'); ?>
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".t3-navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					<?php endif ?>
		
				</div>
		
				<?php if ($this->getParam('navigation_collapse_enable')) : ?>
					<div class="t3-navbar-collapse navbar-collapse collapse"></div>
				<?php endif ?>
		
				<div class="t3-navbar navbar-collapse collapse">
					<jdoc:include type="<?php echo $this->getParam('navigation_type', 'megamenu') ?>" name="<?php echo $this->getParam('mm_type', 'mainmenu') ?>" />
				</div>
		
			</div>
		</nav>
		<!-- //MAIN NAVIGATION -->
	</div>
	</div>
</header>
<!-- //HEADER -->
