<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

?>

<!-- HEADER -->
<div class="toolbar">
	<div class="container">
		<div class="row">
			<?php if ($this->countModules('head-search')) : ?>
				<div class="col-sm-4">
					<div class="head-search <?php $this->_c('head-search') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('head-search') ?>" style="raw" />
					</div>
				</div>
			<?php endif ?>
			<?php if ($this->countModules('languageswitcherload')) : ?>
				<div class="col-sm-8">
					<!-- LANGUAGE SWITCHER -->
					<div class="languageswitcherload">
						<jdoc:include type="modules" name="<?php $this->_p('languageswitcherload') ?>" style="raw" />
					</div>
					<!-- //LANGUAGE SWITCHER -->
				</div>
			<?php endif ?>
		</div>
	</div>
</div>

