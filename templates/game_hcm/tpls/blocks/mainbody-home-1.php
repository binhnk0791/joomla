<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<div class="home">

	<?php if ($this->countModules('home-1')) : ?>
		<!-- HOME SL 1 -->
		<div class="wrap t3-sl t3-sl-1 <?php $this->_c('home-1') ?>">
			<div class="container">
				<jdoc:include type="modules" name="<?php $this->_p('home-1') ?>" style="raw" />
			</div>
		</div>
		<!-- //HOME SL 1 -->
	<?php endif ?>

	<?php if ($this->countModules('home-side-1') || $this->countModules('home-side-2')) : ?>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 <?php $this->_c('home-side-1') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('home-side-1') ?>" style="raw" />
			</div>
			<div class="col-sm-9 <?php $this->_c('home-side-2') ?>">
				<jdoc:include type="modules" name="<?php $this->_p('home-side-2') ?>" style="raw" />
			</div>
		</div>
	</div>
	<?php endif ?>

		<?php if ($this->countModules('home-2')) : ?>
		<!-- HOME SL 2 -->
		<div class="wrap t3-sl t3-sl-2 <?php $this->_c('home-2') ?>">
			<div class="container">
				<jdoc:include type="modules" name="<?php $this->_p('home-2') ?>" style="raw" />
			</div>
		</div>
		<!-- //HOME SL 2 -->
	<?php endif ?>
</div>
