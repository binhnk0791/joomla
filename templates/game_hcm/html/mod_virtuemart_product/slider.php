<?php // no direct access
defined ('_JEXEC') or die('Restricted access');
// add javascript for price and cart, need even for quantity buttons, so we need it almost anywhere
vmJsApi::jPrice();


$col = 1;
$pwidth = floor (12 / $products_per_row);
if ($products_per_row > 1) {
	$float = "";
} else {
	$float = "";
}
?>

<div class="container">
<div class="vmgroup<?php echo $params->get ('moduleclass_sfx') ?> ds-product-slider">

	<?php if ($headerText) { ?>
	<div class="vmheader"><?php echo $headerText ?></div>
	<?php
}
	if ($display_style == "div") {
		?>
			<?php foreach ($products as $product) { ?>
			
				<div class="spacer">

					<a href="<?php echo $url ?>" class="prod-title"><?php echo $product->product_name ?></a>        
					<?php
					if (!empty($product->images[0])) {
						$image = $product->images[0]->displayMediaThumb ('class="featuredProductImage" border="0"', FALSE);
					} else {
						$image = '';
					}
					echo JHTML::_ ('link', JRoute::_ ('index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' . $product->virtuemart_category_id), $image, array('title' => $product->product_name));
					echo '<div class="clear"></div>';
					$url = JRoute::_ ('index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' .
						$product->virtuemart_category_id); ?>
					<div class="spacer-rating">
						<?php 
	             if (!empty($product->rating)):
	                $ratingwidth = ( $product->rating->rating * 100 ) / $maxrating; ?>
	                <span class="rating">
	                   <span title=" <?php echo (JText::_("COM_VIRTUEMART_RATING_TITLE") . $product->rating->rating . '/' . $maxrating) ?>" class="vmicon ratingbox" style="display:inline-block;">
	                      <span class="stars-orange" style="width:<?php echo $ratingwidth.'%'; ?>"></span>
	                   </span>
	                </span>
	             <?php else:?>
	                <span class="vm-module-rate-score">
	                	<i class="fa fa-star"></i>
	                	<i class="fa fa-star"></i>
	                	<i class="fa fa-star"></i>
	                	<i class="fa fa-star"></i>
	                	<i class="fa fa-star"></i>
	                </span>
							<?php endif ?>
		    	</div>
					<?php    echo '<div class="clear"></div>';

					if ($show_price) {
						// 		echo $currency->priceDisplay($product->prices['salesPrice']);
						if (!empty($product->prices['salesPrice'])) {
							echo $currency->createPriceDiv ('salesPrice', '', $product->prices, FALSE, FALSE, 1.0, TRUE);
						}
						// 		if ($product->prices['salesPriceWithDiscount']>0) echo $currency->priceDisplay($product->prices['salesPriceWithDiscount']);
						if (!empty($product->prices['salesPriceWithDiscount'])) {
							echo $currency->createPriceDiv ('salesPriceWithDiscount', '', $product->prices, FALSE, FALSE, 1.0, TRUE);
						}
					}
					if ($show_addtocart) {
						echo shopFunctionsF::renderVmSubLayout('addtocart',array('product'=>$product));
					}
					?>
			</div>
			<?php
			if ($col == $products_per_row && $products_per_row && $col < $totalProd) {
				echo "";
				$col = 1;
			} else {
				$col++;
			}
		} ?>
		</div>
		<?php
	} else {
		$last = count ($products) - 1;
		?>

		<ul class="vmproduct<?php echo $params->get ('moduleclass_sfx'); ?> productdetails">
			<?php foreach ($products as $product) : ?>
			<li class="<?php echo $pwidth ?> <?php echo $float ?>">
				<?php
				if (!empty($product->images[0])) {
					$image = $product->images[0]->displayMediaThumb ('class="featuredProductImage" border="0"', FALSE);
				} else {
					$image = '';
				}
				echo JHTML::_ ('link', JRoute::_ ('index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' . $product->virtuemart_category_id), $image, array('title' => $product->product_name));
				echo '<div class="clear"></div>';
				$url = JRoute::_ ('index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' .
					$product->virtuemart_category_id); ?>
				<a href="<?php echo $url ?>"><?php echo $product->product_name ?></a>        <?php    echo '<div class="clear"></div>';
				// $product->prices is not set when show_prices in config is unchecked
				if ($show_price and  isset($product->prices)) {
					echo '<div class="product-price">'.$currency->createPriceDiv ('salesPrice', '', $product->prices, FALSE, FALSE, 1.0, TRUE);
					if ($product->prices['salesPriceWithDiscount'] > 0) {
						echo $currency->createPriceDiv ('salesPriceWithDiscount', '', $product->prices, FALSE, FALSE, 1.0, TRUE);
					}
					echo '</div>';
				}
				if ($show_addtocart) {
					echo shopFunctionsF::renderVmSubLayout('addtocart',array('product'=>$product));
				}
				?>
			</li>
			<?php
			if ($col == $products_per_row && $products_per_row && $last) {
				echo '
		</ul><div class="clear"></div>
		<ul  class="vmproduct' . $params->get ('moduleclass_sfx') . ' productdetails">';
				$col = 1;
			} else {
				$col++;
			}
			$last--;
		endforeach; ?>
		</ul>
		<div class="clear"></div>

		<?php
	}
	if ($footerText) : ?>
		<div class="vmfooter<?php echo $params->get ('moduleclass_sfx') ?>">
			<?php echo $footerText ?>
		</div>
		<?php endif; ?>
</div>

<script type="text/javascript">
	
(function($){
  $(document).ready(function(){
    
    $('.ds-product-slider').slick({
		autoplay: false,
		arrows: true,
		pauseOnHover: true,
		slidesToShow: <?php echo $products_per_row; ?>,
  	slidesToScroll: 1,
		nextArrow: '<button type="button" class="slick-next"><i class="fa fa-chevron-right"></i></button>',
		prevArrow: '<button type="button" class="slick-back"><i class="fa fa-chevron-left"></i></button>',
		appendArrows: '.ds-product-slider-control',
		centerMode: true,
		responsive: [
  	{
      breakpoint: 767,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        centerMode: false
      }
    },{
      breakpoint: 1199,
      settings: {
        slidesToShow:  4,
        slidesToScroll: 1
      }
    }

    ],

	});
  });
})(jQuery);
</script>