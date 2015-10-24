<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Mainbody 1 columns, content only
 */
?>

<div id="t3-mainbody" class="container t3-mainbody no-sidebar">
	<div class="row">

		<!-- MAIN CONTENT -->
		<div id="t3-content" class="t3-content col-xs-12">
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

	</div>
</div> 