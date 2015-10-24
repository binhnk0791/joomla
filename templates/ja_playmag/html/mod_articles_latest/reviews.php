<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_latest
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>
<div class="featured-lastestnews latestreview<?php echo $moduleclass_sfx; ?>">
<?php foreach ($list as $item) :
	//Get images 
	$images = "";
	if (isset($item->images)) {
		$images = json_decode($item->images);
	}
	$imgexists = (isset($images->image_intro) and !empty($images->image_intro)) || (isset($images->image_fulltext) and !empty($images->image_fulltext));
	
	$multiples=5; 
	?>
	<a class="rating-score rating-cell rating-score-lg rating-score-<?php echo $multiples; ?>" href="#">
		<div class="score score-<?php echo $item->rating?$item->rating*($multiples/5):0;?>">
			<div class="score-clip">
				<div class="score-pie score-spinner"></div>
			</div>
			<div class="score-clip score-clip2">
				<div class="score-pie score-filler"></div>
			</div>
			<div class="score-inner">
				<div class="score-table">
					<div class="score-cell">
              <?php echo $item->rating?$item->rating*($multiples/5):0;?>
        	</div>
				</div>
			</div>
		</div>
	</a>
	<div class="featured-lastestnews-item">
		<div class="featured-lastestnews-ct">
			<a class="title" href="<?php echo $item->link; ?>"><?php echo $item->title; ?></a>
		</div>
		<!-- Images -->
		<?php if ($imgexists) {			
		$images->image_intro = $images->image_intro?$images->image_intro:$images->image_fulltext;
		?>
		<div class="img-intro">
			<div class="mask"></div>
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
