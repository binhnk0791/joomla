<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$class = ' first';
JHtml::_('bootstrap.tooltip');
$lang	= JFactory::getLanguage();

$numberColumn = 3;

if (count($this->items[$this->parent->id]) > 0 && $this->maxLevelcat != 0) :
?>
<div class="row">
	<?php $count=0; foreach($this->items[$this->parent->id] as $id => $item) : ?>
		<?php if($count==$numberColumn):  ?>
		</div><div class="row">		
		<?php endif; $count++; ?>
		<?php
		if ($this->params->get('show_empty_categories_cat') || $item->numitems || count($item->getChildren())) :
		if (!isset($this->items[$this->parent->id][$id + 1]))
		{
			$class = ' last';
		}
		?>
		<div class="col-xs-12 col-md-<?php echo 12/$numberColumn; ?> category-item<?php echo $class; ?>">
		<?php $class = ''; ?>
			
			<?php if ($this->params->get('show_description_image') && $item->getParams()->get('image')) : ?>
			<div class="category-img">
				<a title="<?php echo $this->escape($item->title); ?>" href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id));?>"><img src="<?php echo $item->getParams()->get('image'); ?>"/></a>
			</div>
			<?php endif; ?>
			
			<h3 class="page-header item-title">
				<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id));?>">
				<?php echo $this->escape($item->title); ?></a>
				<?php if ($this->params->get('show_cat_num_articles_cat') == 1) :?>
					<span class="" title="<?php echo T3J::tooltipText('COM_CONTENT_NUM_ITEMS'); ?>">
						<?php echo '('.$item->numitems.')'; ?>
					</span>
				<?php endif; ?>
				<?php if (count($item->getChildren()) > 0) : ?>
					<a href="#category-<?php echo $item->id;?>" data-toggle="collapse" data-toggle="button" class="btn btn-mini pull-right">
						<i class="fa fa-plus"></i>
					</a>
				<?php endif;?>
			</h3>
			
			<?php if ($this->params->get('show_subcat_desc_cat') == 1) :?>
				<?php if ($item->description) : ?>
					<div class="category-desc">
						<?php echo JHtml::_('content.prepare', $item->description, '', 'com_content.categories'); ?>
					</div>
				<?php endif; ?>
			<?php endif; ?>
			
			<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id));?>" class="btn btn-border">View More</a>

			<?php if (count($item->getChildren()) > 0) :?>
				<div class="collapse fade" id="category-<?php echo $item->id;?>">
				<?php
				$this->items[$item->id] = $item->getChildren();
				$this->parent = $item;
				$this->maxLevelcat--;
				echo $this->loadTemplate('items');
				$this->parent = $item->getParent();
				$this->maxLevelcat++;
				?>
				</div>
			<?php endif; ?>
		</div>
		<?php endif; ?>
	<?php endforeach; ?>
</div>
<?php endif; ?>