<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Mainbody 3 columns, content in center: content - sidebar1 - sidebar2
 */
?>

<div id="t3-mainbody" class="container t3-mainbody two-sidebar-right">
	<div class="row">

		<!-- MAIN CONTENT -->
		<div id="t3-content-wrap" class="t3-content-wrap col-xs-12 col-sm-12 col-md-8 col-lg-9">
		
			<!-- MAST TOP 1-->
			<?php if ($this->countModules('mast-top-1')) : ?>
			<div class="t3-mast-top-1 <?php $this->_c('mast-top-1') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('mast-top-1') ?>" style="T3Xhtml" />
			</div>
			<?php endif; ?>
			<!-- //MAST TOP 1-->
			
			<!-- MAST TOP 2-->
			<?php if ($this->countModules('mast-top-2')) : ?>
			<div class="t3-mast-top-2 <?php $this->_c('mast-top-2') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('mast-top-2') ?>" style="T3Xhtml" />
			</div>
			<?php endif; ?>
			<!-- //MAST TOP 2-->
			
			<div class="row">
				<div id="t3-content" class="t3-content col-xs-12 col-sm-12 col-md-12 col-lg-8 <?php if ($this->countModules('content-mast-top')) : echo 'has-content-mast-top'; endif; ?>">
					<!-- CONTENT MAST TOP -->
					<?php if ($this->countModules('content-mast-top')) : ?>
					<div class="t3-content-mast-top <?php $this->_c('content-mast-top') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('content-mast-top') ?>" style="T3Xhtml" />
					</div>
					<?php endif; ?>
					<!-- //CONTENT MAST TOP -->
					<?php if($this->hasMessage()) : ?>
					<jdoc:include type="message" />
					<?php endif ?>
					<jdoc:include type="component" />
				</div>
				
				<!-- SIDEBAR 1 -->
				<div class="t3-sidebar t3-sidebar-1 col-xs-6 col-sm-12 col-md-4 col-lg-4 <?php $this->_c($vars['sidebar1']) ?>">
					<jdoc:include type="modules" name="<?php $this->_p($vars['sidebar1']) ?>" style="T3Xhtml" />
				</div>
				<!-- //SIDEBAR 1 -->
			</div>
		</div>
		<!-- //MAIN CONTENT -->

		<div class="t3-sidebar col-xs-12 col-sm-3 col-md-4 col-lg-3">
			<!-- SIDEBAR 2 -->
			<div class="t3-sidebar t3-sidebar-2 col-xs-12 <?php $this->_c($vars['sidebar2']) ?>">
				<jdoc:include type="modules" name="<?php $this->_p($vars['sidebar2']) ?>" style="T3Xhtml" />
			</div>
			<!-- //SIDEBAR 2 -->
		</div>

	</div>
</div> 