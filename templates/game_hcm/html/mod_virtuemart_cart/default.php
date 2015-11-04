<?php // no direct access
defined('_JEXEC') or die('Restricted access');

//dump ($cart,'mod cart');
// Ajax is displayed in vm_cart_products
// ALL THE DISPLAY IS Done by Ajax using "hiddencontainer" ?>

<!-- Virtuemart 2 Ajax Card -->
<div class="vmCartModule <?php echo $params->get('moduleclass_sfx'); ?>" id="vmCartModule<?php echo $params->get('moduleid_sfx'); ?>">
<?php
if ($show_product_list) {
	?>

<div class="total_products">
<?php echo  $data->totalProductTxt ?> 
<?php if ($data->totalProduct) echo  $data->cart_show; ?> <i class="fa fa-shopping-cart"></i> 
</div>
<noscript>
<?php echo vmText::_('MOD_VIRTUEMART_CART_AJAX_CART_PLZ_JAVASCRIPT') ?>
</noscript>
</div>

