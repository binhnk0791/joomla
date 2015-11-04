<div id = "jshop_module_cart">

<?php print $cart->count_product?></span> <?php print JText::_('PRODUCTS')?>
<!-- <?php print formatprice($cart->getSum(0,1))?> -->
<a href = "<?php print SEFLink('index.php?option=com_jshopping&controller=cart&task=view', 1)?>">
	<i class="fa fa-shopping-cart"></i>
	<?php print JText::_('GO_TO_CART')?>
</a>
</div>