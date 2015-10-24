<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_popular
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;


?>
<ul class="mostread<?php echo $moduleclass_sfx; ?>">
<?php $count=1; foreach ($list as $item) : ?>
	<li>
		<div class="mask mask-background-<?php echo $count; ?>"></div>
		<div class="article-img">
			<?php  
			//Get images 
			$images = "";
			if (isset($item->images)) {
				$images = json_decode($item->images);
			}
			$imgexists = (isset($images->image_intro) and !empty($images->image_intro)) || (isset($images->image_fulltext) and !empty($images->image_fulltext));
			
			if ($imgexists) {			
			$images->image_intro = $images->image_intro?$images->image_intro:$images->image_fulltext;
			?>
				<div class="img-intro">
					<img
						<?php if ($images->image_intro_caption):
							echo 'class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'"';
						endif; ?>
						src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
				</div>
			<?php }else{ ?>
				<img src="<?php echo JURI::root(true);?>/images/joomlart/demo/default.jpg" alt="Default Image"/>
			<?php } ?>
		</div>
		<a class="article-title" href="<?php echo $item->link; ?>">
			<?php echo $item->title; ?></a>
		<div class="article-intro"><?php echo $item->introtext; ?></div>
	</li>
<?php $count++; if ($count >= 5): $count=0; endif; endforeach; ?>
</ul>
