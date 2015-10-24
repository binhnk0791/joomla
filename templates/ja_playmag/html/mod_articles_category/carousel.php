<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_category
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
if(isset($item_heading) || $item_heading=='') $item_heading = 4;
?>
<div class="category-module<?php echo $moduleclass_sfx; ?>">
<div id="article-carousel" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
  <?php $count=0; foreach ($list as $item) : ?>
    
  		<div class="item <?php if($count==0): echo 'active'; endif; ?>">
  			<div class="mask"></div>
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
			
   		<h<?php echo $item_heading; ?>>
   		<?php if ($item->displayDate) : ?>
				<span class="mod-articles-category-date"><i class="fa fa-clock-o"></i><?php echo $item->displayDate; ?></span>
			<?php endif; ?>
   		<?php if ($params->get('link_titles') == 1) : ?>
				<a class="mod-articles-category-title <?php echo $item->active; ?>" href="<?php echo $item->link; ?>">
			<?php echo $item->title; ?>
      <?php if ($item->displayHits) :?>
		<span class="mod-articles-category-hits">
          (<?php echo $item->displayHits; ?>)  </span>
      <?php endif; ?></a>
      <?php else :?>
      <?php echo $item->title; ?>
      	<?php if ($item->displayHits) :?>
		<span class="mod-articles-category-hits">
          (<?php echo $item->displayHits; ?>)  </span>
      <?php endif; ?></a>
          <?php endif; ?>
      </h<?php echo $item_heading; ?>>

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
	<?php if ($params->get('show_introtext')) :?>
		<p class="mod-articles-category-introtext">
		<?php echo $item->displayIntrotext; ?>
		</p>
	<?php endif; ?>

	<?php if ($params->get('show_readmore')) :?>
		<p class="mod-articles-category-readmore">
			<a class="mod-articles-category-title <?php echo $item->active; ?>" href="<?php echo $item->link; ?>">
	        <?php if ($item->params->get('access-view')== FALSE) :
					echo JText::_('MOD_ARTICLES_CATEGORY_REGISTER_TO_READ_MORE');
				elseif ($readmore = $item->alternative_readmore) :
					echo $readmore;
					echo JHtml::_('string.truncate', $item->title, $params->get('readmore_limit'));
				elseif ($params->get('show_readmore_title', 0) == 0) :
					echo JText::sprintf('MOD_ARTICLES_CATEGORY_READ_MORE_TITLE');
				else :
					echo JText::_('MOD_ARTICLES_CATEGORY_READ_MORE');
					echo JHtml::_('string.truncate', $item->title, $params->get('readmore_limit'));
				endif; ?>
        </a>
		</p>
	<?php endif; ?>

	</div>
	<?php $count++; endforeach; ?>
	</div>
  <!-- Controls -->
  <a class="left carousel-control" href="#article-carousel" data-slide="prev">
    <i class="fa fa-angle-left"></i>
  </a>
  <a class="right carousel-control" href="#article-carousel" data-slide="next">
    <i class="fa fa-angle-right"></i>
  </a>
</div>

	

</div>
