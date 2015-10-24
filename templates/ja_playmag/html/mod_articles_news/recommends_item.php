<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_news
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
$item_heading = $params->get('item_heading', 'h4');

?>
<div class="newsflash-item">
<?php if($params->get('image')): ?>
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
		<div class="item-image-border"></div>
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
<?php endif; ?>

<?php if ($params->get('item_title')) : ?>

	<<?php echo $item_heading; ?> class="newsflash-title<?php echo $params->get('moduleclass_sfx'); ?>">
	<?php if ($params->get('link_titles') && $item->link != '') : ?>
		<a href="<?php echo $item->link;?>">
			<?php echo $item->title;?></a>
	<?php else : ?>
		<?php echo $item->title; ?>
	<?php endif; ?>
	</<?php echo $item_heading; ?>>

<?php endif; ?>

<?php if (!$params->get('intro_only')) :
	echo $item->afterDisplayTitle;
endif; ?>

<?php echo $item->beforeDisplayContent; ?>

<?php echo $item->introtext; ?>

<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) :
	echo '<a class="readmore" href="'.$item->link.'">'.$item->linkText.'</a>';
endif; ?>
</div>