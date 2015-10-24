<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');
JHtml::addIncludePath(T3_PATH.'/html/com_content');
JHtml::addIncludePath(dirname(dirname(__FILE__)));
JHtml::_('behavior.caption');

// If the page class is defined, add to class as suffix.
// It will be a separate class if the user starts it with a space
$tplParams = JFactory::getApplication()->getTemplate(true)->params;
$feature_layout = $tplParams->get('feature_layout','')?$tplParams->get('feature_layout',''):array('grid');
$feature_layout_first = in_array($tplParams->get('feature_layout_first','grid'),$feature_layout)?$tplParams->get('feature_layout_first','grid'):$feature_layout['0'];
$columns = ceil(12/$this->columns);

//Load params info
JLoader::register('PlaymagHelper',T3_TEMPLATE_PATH.'/templateHelper.php');
PlaymagHelper::loadJSAjaxPaging();
?>
<div class="blog-featured multi-layout<?php echo $this->pageclass_sfx;?> <?php echo $feature_layout_first;?>"
     itemscope itemtype="http://schema.org/Blog" xmlns="http://www.w3.org/1999/html">
<?php if ($this->params->get('show_page_heading') != 0) : ?>
<div class="page-header">
	<h1>
	<?php echo $this->escape($this->params->get('page_heading')); ?>
	</h1>
    <!-- Button change grid -->
    <?php if(count($feature_layout) > 1) : ?>
        <!-- does not change class of div -->
        <div class="tpl_change_layout">
          <?php $i=0;
                foreach($feature_layout AS $f){
                    $sclass ='';
                    if($f == $feature_layout_first) $sclass.=' active ';
                    //You can change class but does not changed mockup and content html in mockup
                    switch($f){
                        case 'grid':
                            $sclass .= 'view-grid';
                            break;
                        case 'small-list':
                            $sclass .= 'view-small-list';
                            break;
                        case 'big-list':
                            $sclass .= 'view-big-list';
                            break;
                    }
              ?>
                    <span class="<?php echo $sclass;?>"><?php echo $f;?></span>
          <?php   } ?>
        </div>
    <?php endif;?>
</div>
<?php endif; ?>
<div class="items-wrap clearfix">

<?php $leadingcount = 0;
	$ovitems = 0;
 ?>
<?php if (!empty($this->lead_items)) : ?>
	<?php foreach ($this->lead_items as &$item) :
		$classend = '';
		  if($ovitems%$this->columns==0){
			$classend = 'clearboth ';
		  }
		  $ovitems ++;
	?>
		<div class="<?php echo $classend;?>items col-xs-12 col-sm-<?php echo $columns;?> items-leading leading-<?php echo $leadingcount; ?><?php echo $item->state == 0 ? ' system-unpublished' : null; ?>"
				itemprop="blogPost" itemscope itemtype="http://schema.org/BlogPosting">			
			<?php
				$this->item = &$item;
				echo $this->loadTemplate('item');
			?>
		</div>
		<?php
			$leadingcount++;
		?>
	<?php endforeach; ?>
<?php endif; ?>

<?php
	$introcount = (count($this->intro_items));
	$counter = 0;
?>
<?php if (!empty($this->intro_items)) : ?>
	<?php foreach ($this->intro_items as $key => &$item) :
		 $classend = '';
		  if($ovitems%$this->columns==0){
			$classend = 'clearboth ';
		  }
		  $ovitems ++;
	?>

		<?php
		$key = ($key - $leadingcount) + 1;
		//$rowcount = (((int) $key - 1) % (int) $this->columns) + 1;
		//$row = $counter / $this->columns;
		?>
			<div class="<?php echo $classend;?>items col-xs-12 col-sm-<?php echo $columns;?><?php echo $item->state == 0 ? ' system-unpublished' : null; ?>"
				itemprop="blogPost" itemscope itemtype="http://schema.org/BlogPosting">
			<?php
				$this->item = &$item;
				echo $this->loadTemplate('item');
			?>
			</div>

	<?php endforeach; ?>
<?php endif; ?>
</div>
<?php if (!empty($this->link_items)) : ?>
	<section class="items-more">
		<h3><?php echo JText::_('COM_CONTENT_MORE_ARTICLES'); ?></h3>
		<?php echo $this->loadTemplate('links'); ?>
	</section>
<?php endif; ?>
<!-- pagination ajax load -->

<?php if ($this->params->def('show_pagination', 2) == 1  || ($this->params->get('show_pagination') == 2 && $this->pagination->get('pages.total') > 1)) : ?>
    <nav id="page-nav" class="pagination">
        <?php
        $urlparams = '';
        if (!empty($this->pagination->_additionalUrlParams)){
            foreach ($this->pagination->_additionalUrlParams as $key => $value) {
                $urlparams .= '&' . $key . '=' . $value;
            }
        }

        $next = $this->pagination->limitstart + $this->pagination->limit;
        $nextlink = JRoute::_($urlparams . '&' . $this->pagination->prefix . 'limitstart=' . $next);
        ?>
        <a id="page-next-link" href="<?php echo $nextlink ?>" data-limit="<?php echo $this->pagination->limit; ?>" data-start="<?php echo $this->pagination->limitstart ?>" data-page-total="<?php echo ceil($this->pagination->total / $this->pagination->limit);?>" data-total="<?php echo $this->pagination->total;?>"></a>
    </nav>
    <?php if($this->pagination->get('pages.total') > 1) :?>
        <div id="infinity-next" class="btn btn-border btn-block"><?php echo JText::_('TPL_INFINITY_NEXT')?></div>
    <?php else:?>
        <div id="infinity-next" class="btn btn-border btn-block disabled"><?php echo JText::_('TPL_JSLANG_FINISHEDMSG');?></div>
    <?php endif;?>
<?php endif; ?>

</div>
