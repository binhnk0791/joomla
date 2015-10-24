<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php if ($this->countModules('masthead')) : ?>
	<!-- MASTHEAD -->
	<div class="wrap t3-masthead <?php $this->_c('masthead') ?>">
		<div class="container">
			<jdoc:include type="modules" name="<?php $this->_p('masthead') ?>" style="raw" />
		</div>
	</div>
	<!-- //MASTHEAD -->
<?php endif ?>
