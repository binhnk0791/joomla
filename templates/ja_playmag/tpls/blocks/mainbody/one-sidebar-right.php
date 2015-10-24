<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Mainbody 2 columns: content - sidebar
 */
?>
<div id="t3-mainbody" class="container t3-mainbody one-sidebar-right">
	<div class="row">

		<!-- MAIN CONTENT -->
		<div id="t3-content" class="t3-content col-xs-12 col-sm-12  col-md-9">
			<!-- MAST TOP 1-->
			<?php if ($this->countModules('mast-top-1')) : ?>
			<div class="t3-mast-top-1 <?php $this->_c('mast-top-1') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('mast-top-1') ?>" style="T3Xhtml" />
			</div>
			<?php endif; ?>
			<!-- //MAST TOP 1-->
		
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
		<!-- //MAIN CONTENT -->

		<!-- SIDEBAR RIGHT -->
		<div class="t3-sidebar t3-sidebar-right col-xs-12 col-sm-4  col-md-3 <?php $this->_c($vars['sidebar']) ?>">
			<jdoc:include type="modules" name="<?php $this->_p($vars['sidebar']) ?>" style="T3Xhtml" />
		</div>
		<!-- //SIDEBAR RIGHT -->

	</div>
</div> 
