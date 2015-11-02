<?php
/**
 * $JA#COPYRIGHT$
 */

defined('_JEXEC') or die('Restricted access');
?>
<div class="jamasshead" <?php if(isset($masshead['params']['background'])): ?> style="background-image: url(<?php echo $masshead['params']['background'] ?>)" <?php endif; ?>>
	<div class="container">
		<h3 class="jamasshead-title"><?php echo $masshead['title']; ?></h3>
		<div class="jamasshead-description"><?php echo $masshead['description']; ?></div>
	</div>
</div>	