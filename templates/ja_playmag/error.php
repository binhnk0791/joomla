<?php
/**
 * $JA#COPYRIGHT$
 */

defined('_JEXEC') or die;
if (!isset($this->error)) {
	$this->error = JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
	$this->debug = false;
}
//get language and direction
$doc = JFactory::getDocument();
$this->language = $doc->language;
$this->direction = $doc->direction;
$theme = JFactory::getApplication()->getTemplate(true)->params->get('theme', '');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<title><?php echo $this->error->getCode(); ?> - <?php echo $this->title; ?></title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/error.css" type="text/css" />
	<?php if($theme && is_file(T3_TEMPLATE_PATH . '/css/themes/' . $theme . '/error.css')):?>
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/themes/<?php echo $theme ?>/error.css" type="text/css" />
	<?php endif; ?>
	<?php 
	if ($this->direction == 'rtl') : ?>
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/error_rtl.css" type="text/css" />
	<?php endif; ?>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script> 

</head>
<body class="page-error">
	<div class="main">
		<div class="error">
			<div id="outline">
				<div id="errorboxoutline">
					<div class="error-code"><?php 
						$errcode = str_split($this->error->getCode());
						$i = 0;
						$lastclass='';
						foreach($errcode as $c){
	                        $firstclass = ($i==0)?'first':'';
							if($i==(count($errcode)-1)){
								$lastclass='last';
							}
							echo '<span class="'.$lastclass.$firstclass.'">'.$c.'</span>';
							$i++;
						}
						?></div>
					
					<div class="error-message"><h2><?php echo $this->error->getMessage(); ?></h2></div>
					
					<div id="errorboxbody">
						<p><?php echo JText::_('JERROR_LAYOUT_PLEASE_TRY_ONE_OF_THE_FOLLOWING_PAGES'); ?></p>
	          			<a class="button-home" href="<?php echo $this->baseurl; ?>/index.php" title="<?php echo JText::_('JERROR_LAYOUT_GO_TO_THE_HOME_PAGE'); ?>"><?php echo JText::_('JERROR_LAYOUT_HOME_PAGE'); ?></a>
					</div>
					
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		(function($){
			$(document).ready(function() {
				$('.main').css('height',$(window).height());
				$(window).resize(function() {
					$('.main').css('height',$(window).height());
				})
			});
		})(jQuery);		
	</script>
</body>
</html>
