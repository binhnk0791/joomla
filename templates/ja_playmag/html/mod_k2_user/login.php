<?php
/**
 * @version		2.6.x
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die;

?>

<div id="k2ModuleBox<?php echo $module->id; ?>" class="k2LoginBlock<?php if($params->get('moduleclass_sfx')) echo ' '.$params->get('moduleclass_sfx'); ?>">
	<form action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post" name="login" id="form-login">
		<?php if($params->get('pretext')): ?>
		<p class="preText"><?php echo $params->get('pretext'); ?></p>
	  <?php endif; ?>

	  <fieldset class="input">
	    <p id="form-login-username">
		  <?php if (!$params->get('usetext')) : ?>
			<div class="k2-group">
			  <span class="input-group-addon">
				<i class="fa fa-user tip" title="<?php echo JText::_('K2_USERNAME') ?>"></i>
			  </span>
			  <input id="modlgn_username" type="text" name="username" class="inputbox" size="18" placeholder="<?php echo JText::_('K2_USERNAME') ?>" />
			</div>  
		  <?php else: ?>
			  <label for="modlgn_username"><?php echo JText::_('K2_USERNAME') ?></label>
			  <input id="modlgn_username" type="text" name="username" class="inputbox" size="18" placeholder="<?php echo JText::_('K2_USERNAME') ?>" />
		  <?php endif; ?>	  
	    </p>
	    <p id="form-login-password">
		  <?php if (!$params->get('usetext')) : ?>
			  <div class="k2-group">
				  <span class="input-group-addon">
					<i class="fa fa-lock tip" title="<?php echo JText::_('JGLOBAL_PASSWORD') ?>"></i>
				  </span>
				  <input id="modlgn_passwd" type="password" name="<?php echo $passwordFieldName; ?>" class="inputbox" size="18" placeholder="<?php echo JText::_('K2_PASSWORD') ?>" />
			  </div>
		  <?php else: ?>
			  <label for="modlgn_passwd"><?php echo JText::_('K2_PASSWORD') ?></label>
			  <input id="modlgn_passwd" type="password" name="<?php echo $passwordFieldName; ?>" class="inputbox" size="18" placeholder="<?php echo JText::_('K2_PASSWORD') ?>" />
		  <?php endif; ?>	
	    </p>
	    <?php if(JPluginHelper::isEnabled('system', 'remember')): ?>
	    <p id="form-login-remember">
		  <input id="modlgn_remember" type="checkbox" name="remember" class="inputbox" value="yes" />
		  <?php echo JText::_('K2_REMEMBER_ME') ?>
	    </p>
	    <?php endif; ?>

	    <input type="submit" name="Submit" class="btn btn-primary" value="<?php echo JText::_('K2_LOGIN') ?>" />
	  </fieldset>

	  <ul>
		<?php if ($usersConfig->get('allowUserRegistration')): ?>
	    <li><a href="<?php echo $registrationLink; ?>"><?php echo JText::_('K2_CREATE_AN_ACCOUNT'); ?></a></li>
	    <?php endif; ?>
	    <li><a href="<?php echo $resetLink; ?>"><?php echo JText::_('K2_FORGOT_YOUR_PASSWORD'); ?></a></li>
	    <li><a href="<?php echo $remindLink ?>"><?php echo JText::_('K2_FORGOT_YOUR_USERNAME'); ?></a></li>
	    
	  </ul>

	  <?php if($params->get('posttext')): ?>
	  <p class="postText"><?php echo $params->get('posttext'); ?></p>
	  <?php endif; ?>

	  <input type="hidden" name="option" value="<?php echo $option; ?>" />
	  <input type="hidden" name="task" value="<?php echo $task; ?>" />
	  <input type="hidden" name="return" value="<?php echo $return; ?>" />
	  <?php echo JHTML::_( 'form.token' ); ?>
	</form>
</div>
