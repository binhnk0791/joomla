<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$params  = $displayData->params;
JLoader::register('PlaymagHelper',T3_TEMPLATE_PATH.'/templateHelper.php');
$images = json_decode($displayData->images);

if (empty ($displayData->catslug)) {
  $displayData->catslug = $displayData->category_alias ? ($displayData->catid.':'.$displayData->category_alias) : $displayData->catid;
}
$url = JRoute::_(ContentHelperRoute::getArticleRoute($displayData->slug, $displayData->catslug));
//Get Images from video
$videoinfo = PlaymagHelper::loadVideoInfo($displayData->introtext);
?>
<div class="item-image-wrap col-sm-4 col-xs-12">
	
<?php if (isset($images->image_intro) && !empty($images->image_intro)) { ?>
<!-- Link article -->

	<?php $imgfloat = (empty($images->float_intro)) ? $params->get('float_intro') : $images->float_intro; ?>
	<div class="pull-<?php echo htmlspecialchars($imgfloat); ?> item-image <?php if($videoinfo): echo ' video-thumbnail '; endif; ?>"> 
	<a href="<?php echo $url ?>" itemprop="url" title="<?php echo htmlentities($displayData->title,ENT_QUOTES, 'UTF-8'); ?>">
	<span class="item-image-border"></span>
	<img
	<?php if ($images->image_intro_caption):
		echo 'class="caption"' . ' title="' . htmlspecialchars($images->image_intro_caption) . '"';
	endif; ?>
	src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>" itemprop="thumbnailUrl"/> 
	</a>
	</div>

	<?php }else if($videoinfo){?>
    <div class="pull-left item-image video-thumbnail"> 
			<a href="<?php echo $url ?>" itemprop="url" title="<?php echo htmlentities($displayData->title,ENT_QUOTES, 'UTF-8'); ?>">
				<span class="item-image-border"></span>
				<img src="<?php echo htmlspecialchars($videoinfo['vimgsrc']); ?>" title="<?php echo $displayData->title;?>" alt="<?php echo $displayData->title;?>" itemprop="thumbnailUrl"/> 
			</a>
			</div>
<?php }?>

<?php $multiples=5; 
if ($params->get('show_vote') && isset($displayData->rating_count)): ?>
<a class="rating-score rating-cell rating-score-<?php echo $multiples; ?>" href="<?php echo $url ?>" itemprop="url" title="<?php echo htmlentities($displayData->title,ENT_QUOTES, 'UTF-8'); ?>">
    <div class="score score-<?php echo $displayData->rating?$displayData->rating*($multiples/5):0;?>">
        <div class="score-clip">
            <div class="score-pie score-spinner"></div>
        </div>
        <div class="score-clip score-clip2">
            <div class="score-pie score-filler"></div>
        </div>
        <div class="score-inner">
            <div class="score-table">
                <div class="score-cell">
                    <?php echo $displayData->rating?$displayData->rating*($multiples/5):0;?>
                </div>
            </div>
        </div>
    </div>
</a>
<?php endif;?>
</div>