<?php
/**
 * ------------------------------------------------------------------------
 * JA Decor Template
 * ------------------------------------------------------------------------
 * Copyright (C) 2004-2011 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
 * @license - Copyrighted Commercial Software
 * Author: J.O.O.M Solutions Co., Ltd
 * Websites:  http://www.joomlart.com -  http://www.joomlancers.com
 * This file may not be redistributed in whole or significant part.
 * ------------------------------------------------------------------------
 */

// no direct access
defined('_JEXEC') or die;

if ($grouped) {
	// flat the group list
	foreach ($list as $group_name => $group) {
		foreach ($group as $item) {
			$_list[] = $item;
		}
	}
} else {
	$_list = $list;
}
$catids = $params->get('catid');
if(isset($catids) && $catids['0'] != ''){
	$catid = $catids[0];	
	$jacategoriesModel = JCategories::getInstance('content');
	$jacategory = $jacategoriesModel->get($catid);
}
if(isset($item_heading) || $item_heading=='') $item_heading = 3;
?>

<div class="category-module gallery-module <?php echo $moduleclass_sfx; ?>"><div class="row">
	<?php 
	//Get category info
	if(isset($jacategory)) : ?>
	<div class="category-info col-md-3 background-secondary pull-right">
		<div class="item-inner">
			<h3 class="category-title">
			<?php 
				$cat_title = $jacategory->title;
				$cat_titles = explode(" ",$cat_title);
				echo '<span class="first-letter">'.$cat_titles[0].'</span>';
				unset($cat_titles[0]);
				echo ' '.implode(" ",$cat_titles);
			?>
			</h3>
			
			<div class="category-des">
				<?php echo $jacategory->description;?>
			</div>
			<a class="btn btn-border" href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($jacategory->id));?>"><?php echo JText::_('VIEW_ALL'); ?></a>
		</div>
	</div>
	<?php endif;
	//End add
	?>
	
	<div class="col-md-9 category-module-inner">
	<div class="row">
	<?php 
		$numberColumn = $params->get('article_column',3);
		$count = 1;
	?>
	<?php foreach ($_list as $item) : ?>
	<div class="item col-xs-12 col-sm-<?php echo 12/$numberColumn; ?> <?php if($count == $numberColumn): echo 'latest'; endif; ?>"><div class="item-inner">
		<div class="item-image">
			<?php  
			//Get images 
			$images = "";
			if (isset($item->images)) {
				$images = json_decode($item->images);
			}
			$imgexists = (isset($images->image_intro) and !empty($images->image_intro)) || (isset($images->image_fulltext) and !empty($images->image_fulltext));
			
			if ($imgexists) {			
			$images->image_intro = $images->image_intro?$images->image_intro:$images->image_fulltext;
			$images->image_intro_caption = $images->image_intro_caption?$images->image_intro_caption:$images->image_fulltext_caption;
			$images->image_intro_alt = $images->image_intro_alt?$images->image_intro_alt:$images->image_fulltext_alt;
			?>
				<div class="img-intro">
					<img
						<?php if ($images->image_intro_caption):
							echo 'class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'"';
						endif; ?>
						src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
				</div>
			<?php } ?>
			
			<?php if ($params->get('show_readmore')) :?>
				<a class="btn btn-default <?php echo $item->active; ?>" href="<?php echo $item->link; ?>"><?php echo JText::_('TPL_VIEW'); ?></a>
			<?php endif; ?>
		</div>
		
		<div class="article-content">
					<?php if ($params->get('show_author')) :?>
						<span class="mod-articles-category-writtenby">
						<?php echo $item->displayAuthorName; ?>
						</span>
					<?php endif;?>
	
					<?php if ($item->displayCategoryTitle) :?>
						<span class="mod-articles-category-category">
						(<?php echo $item->displayCategoryTitle; ?>)
						</span>
					<?php endif; ?>
					<?php if ($item->displayDate) : ?>
						<span class="mod-articles-category-date"><?php echo $item->displayDate; ?></span>
					<?php endif; ?>
					
					<?php if ($params->get('show_introtext')) :?>
					<p class="mod-articles-category-introtext">
						<?php echo $item->displayIntrotext; ?>
					</p>
			<?php endif; ?>
		</div>
	</div></div>
	<?php endforeach; ?>
	</div></div>
</div></div>