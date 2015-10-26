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
			<?php if ($this->countModules('toolbar-1')) : ?>
				<div class="col-sm-4">
					<div class=" <?php $this->_c('toolbar-1') ?>">
						<jdoc:include type="modules" name="<?php $this->_p('toolbar-1') ?>" style="raw" />
					</div>
				</div>
			<?php endif ?>
			<?php if ($this->countModules('toolbar-2')) : ?>
				<div class="col-sm-8">
					<div class="toolbar-2">
						<jdoc:include type="modules" name="<?php $this->_p('toolbar-2') ?>" style="raw" />
					</div>
				</div>
			<?php endif ?>
		</div>
	</div>
</div>

