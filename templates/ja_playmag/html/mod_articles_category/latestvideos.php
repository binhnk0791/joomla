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
<div class="category-module<?php echo $moduleclass_sfx; ?> latest-reviews">
<?php if ($grouped) : ?>
	<?php foreach ($list as $group_name => $group) : ?>
	<div>
		<h<?php echo $item_heading; ?>><?php echo $group_name; ?></h<?php echo $item_heading; ?>>
		<div>
			<?php foreach ($group as $item) : ?>
				<li>
					<h<?php echo $item_heading+1; ?>>
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
			        </h<?php echo $item_heading+1; ?>>


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

		<?php if ($params->get('show_readmore')) :?>
			<p class="mod-articles-category-readmore">
				<a class="mod-articles-category-title <?php echo $item->active; ?>" href="<?php echo $item->link; ?>">
				<?php if ($item->params->get('access-view')== FALSE) :
						echo JText::_('MOD_ARTICLES_CATEGORY_REGISTER_TO_READ_MORE');
					elseif ($readmore = $item->alternative_readmore) :
						echo $readmore;
						echo JHtml::_('string.truncate', $item->title, $params->get('readmore_limit'));
						if ($params->get('show_readmore_title', 0) != 0) :
							echo JHtml::_('string.truncate', ($this->item->title), $params->get('readmore_limit'));
						endif;
					elseif ($params->get('show_readmore_title', 0) == 0) :
						echo JText::sprintf('MOD_ARTICLES_CATEGORY_READ_MORE_TITLE');
					else :

						echo JText::_('MOD_ARTICLES_CATEGORY_READ_MORE');
						echo JHtml::_('string.truncate', ($item->title), $params->get('readmore_limit'));
					endif; ?>
	        </a>
			</p>
			<?php endif; ?>
		</div>
			<?php endforeach; ?>
		</div>
	</div>
	<?php endforeach; ?>
<?php else : ?>
	<?php foreach ($list as $item) : ?>
	    <div class="col-xs-12 col-sm-4">
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
						<div class="img-intro video-thumbnail">
							<a href="<?php echo $item->link; ?>">
							<span class="item-image-border"></span>
								<img
									<?php if ($images->image_intro_caption):
										echo 'class="caption"'.' title="' .htmlspecialchars($images->image_intro_caption) .'"';
									endif; ?>
									src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
								</a>
							</div>
						<?php }else{ ?>
							<a href="<?php echo $item->link; ?>">
							<span class="item-image-border"></span>
								<img src="<?php echo JURI::root(true);?>/images/joomlart/demo/default.jpg" alt="Default Image"/>
							</a>
						<?php } ?>
					<?php $multiples=5;  if (isset($item->rating_count)): ?>
					<a class="rating-score rating-cell rating-score-<?php echo $multiples; ?>" href="<?php echo $item->link; ?>">
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
					<?php endif; ?>
				</div>
	   		<h<?php echo $item_heading; ?>>
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
        <?php if ($item->displayDate) : ?>
			<span class="mod-articles-category-date"><?php echo $item->displayDate; ?></span>
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
	<?php endforeach; ?>
<?php endif; ?>
</div>
