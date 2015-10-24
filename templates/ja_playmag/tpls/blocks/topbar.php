<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$headright = $this->countModules('languageswitcherload');
?>

<?php if ($this->countModules('topbar-2') || $this->countModules('topbar-1') || $headright ) : ?>
	<!-- Top Bar -->
	<nav class="wrap t3-topbar">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-8 text-left<?php $this->_c('topbar-1') ?>">
					<jdoc:include type="modules" name="<?php $this->_p('topbar-1') ?>" />
				</div>
				
				<?php if ($this->countModules('topbar-2') || $headright) : ?>
				<div class="col-xs-12 col-sm-4 text-right">
					<div class="pull-right<?php $this->_c('languageswitcherload') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('languageswitcherload') ?>" />
					</div>
					<div class="pull-right<?php $this->_c('topbar-2') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('topbar-2') ?>" />
					</div>
				</div>
				<?php endif; ?>
			</div>
		</div>
	</nav>
	<!-- //Top Bar -->
<?php endif ?>
