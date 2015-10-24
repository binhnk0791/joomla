<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_latest
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
JLoader::register('PlaymagHelper',T3_TEMPLATE_PATH.'/templateHelper.php');
?>
<div class="featured-lastestnews latestvideo<?php echo $moduleclass_sfx; ?>">
<?php foreach ($list as $item) :
	//Get images 
	$images = "";
	if (isset($item->images)) {
		$images = json_decode($item->images);
	}
	$imgexists = (isset($images->image_intro) and !empty($images->image_intro)) || (isset($images->image_fulltext) and !empty($images->image_fulltext));
	?>
	<div class="featured-lastestnews-item">
		<div class="featured-lastestnews-ct">
			<?php  
				$introtext = PlaymagHelper::parseVideo($item->introtext);
			?>
			<div class="video-desc">
			<a class="title" href="<?php echo $item->link; ?>"><?php echo $item->title; ?></a>
			<?php 
			if(isset($introtext->iframe)) { ?>
				<div class="innerText"><?php echo $introtext->introtext;?></div>
			<?php }?>
			</div>
			<div class="introtext">
			<?php 
			if(isset($introtext->iframe)) { ?>
				<div class="iframe"><?php echo $introtext->iframe;?></div>
			<?php } else {
				echo $item->introtext;
			}?>
			</div>
		</div>
		<!-- Images -->
		<?php if ($imgexists) {			
		$images->image_intro = $images->image_intro?$images->image_intro:$images->image_fulltext;
		?>
		<div class="img-intro">
			<img
				<?php if ($images->image_intro_caption):
					echo 'class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'"';
				endif; ?>
				src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
		</div>
		<?php } ?>
		<!-- End images -->
	</div>
<?php endforeach; ?>
</div>
