<form method="POST"
      action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8") . "?" . htmlspecialchars(
              $_SERVER["QUERY_STRING"],
              ENT_QUOTES,
              "utf-8"
          ); ?>">
<table style="width:100%">
    <?
$command = "SELECT top FROM cms where 
cms_id='".addslashes($cms_id)."' AND top <>'' AND top IS NOT NULL;";
       $result = mysql_query($command);
       if (mysql_num_rows($result)>0) { ?>
           <tr style="display:visible;">
     <?php  }else{
?>
<tr style="display:none;">
       <?php } ?>
<td align=right>
Top:
</td>
<td align="left">
<textarea rows=20  cols=60 max=2000 name="top" width="800px">
<?php
 while ($data = mysql_fetch_object($result)) {
	   $textarea_in = strstr($data->top, '</textarea>');
	   if($textarea_in){
	   $code = str_replace("</textarea>", "</textareatag>", $data->top);
	   echo htmlspecialchars_decode(stripslashes($code));
	   }else{	   
          echo htmlspecialchars_decode(stripslashes($data->top));
		  }		  	  
		 }
                 ?>
</textarea>
</td>
</tr>
<?php
$command = "SELECT mid FROM cms where cms_id='".addslashes($cms_id)."' AND mid <>'' AND mid IS NOT NULL;";
       $result = mysql_query($command);
       if(mysql_num_rows($result) > 0){ ?>
           <tr style="display:visible;">
     <?php  }else{
?>
<tr style="display:none;">
       <?php } ?>
     
<td align=right>
Mid:
</td>
<td align=left>
<textarea rows=20 cols=60 max=2000 name="mid" width="800px"><?

       while ($data = mysql_fetch_object($result)) {
	   $textarea_in = strstr($data->mid, '</textarea>');
	   if($textarea_in){
	   $code = str_replace("</textarea>", "</textareatag>", $data->mid);
	   echo htmlspecialchars_decode(stripslashes($code));
	   }else{	   
          echo htmlspecialchars_decode(stripslashes($data->mid));
		  }		  	  
		 }
		  ?>
</textarea>

</td>
</tr>
<tr>
<td align=right valign=top>
footer:
</td>
<td align="left">
<textarea rows=1  cols=60 max=2000 name="footer" width="800px"><?
$command = "SELECT footer FROM cms where 
cms_id='".addslashes($cms_id)."';";
       $result = mysql_query($command);
       while ($data = mysql_fetch_object($result)) {
          echo htmlspecialchars_decode(stripslashes($data->footer));
		  		  	  
		  }?>
</textarea>

</td>
</tr>

<tr>
<td align=right valign=top>
title:
</td>
<td align="left">
<input type="text" size="50" max="50" name="title" value="<?
$command = "SELECT title FROM cms where 
cms_id='".addslashes($cms_id)."';";
       $result = mysql_query($command);
       while ($data = mysql_fetch_object($result)) {
          echo htmlspecialchars_decode(stripslashes($data->title));
		  		  	  
		  }?>">

</td>
</tr>

<tr>
<td align=right valign=top>
description:
</td>
<td align="left">
<input type="text" size="50" max="50" name="description" value="<?
$command = "SELECT description FROM cms where 
cms_id='".addslashes($cms_id)."';";
       $result = mysql_query($command);
       while ($data = mysql_fetch_object($result)) {
          echo htmlspecialchars_decode(stripslashes($data->description));
		  		  	  
		  }?>">

</td>
</tr>

<tr>
<td align=right valign=top>
keywords:
</td>
<td align="left">
<input type="text" size="50" max="50" name="keywords" value="<?
$command = "SELECT keywords FROM cms where 
cms_id='".addslashes($cms_id)."';";
       $result = mysql_query($command);
       while ($data = mysql_fetch_object($result)) {
          echo stripslashes($data->keywords);
		  		  	  
		  }?>">

</td>
</tr>

<tr>
<td align=right valign=top>
url:
</td>
<td align="left">
<input type="text" size="50" max="50" name="url" value="<?
$command = "SELECT url FROM cms where 
cms_id='".addslashes($cms_id)."';";
       $result = mysql_query($command);
       while ($data = mysql_fetch_object($result)) {
          echo stripslashes($data->url);
		  		  	  
		  }?>">

</td>
</tr>



<tr>
<td colspan=2 align=center>
<input type="hidden" name="cms_id" value="<? echo htmlentities($cms_id); ?>">
<input type=submit value="SUBMIT">
</td></tr>
</TABLE><br>
</form></div></div>
<!--Beginning of style-->
<?php //include("footer.php");?>
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <?php
/**
* @version		$Id: router.php 10711 2008-08-21 10:09:03Z eddieajau $
* @package		Joomla
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

function ContentBuildRoute(&$query)
{
	$segments = array();

	// get a menu item based on Itemid or currently active
	$menu = &JSite::getMenu();
	if (empty($query['Itemid'])) {
		$menuItem = &$menu->getActive();
	} else {
		$menuItem = &$menu->getItem($query['Itemid']);
	}
	$mView	= (empty($menuItem->query['view'])) ? null : $menuItem->query['view'];
	$mCatid	= (empty($menuItem->query['catid'])) ? null : $menuItem->query['catid'];
	$mId	= (empty($menuItem->query['id'])) ? null : $menuItem->query['id'];

	if(isset($query['view']))
	{
		$view = $query['view'];
		if(empty($query['Itemid'])) {
			$segments[] = $query['view'];
		}
		unset($query['view']);
	};

	// are we dealing with an article that is attached to a menu item?
	if (($mView == 'article') and (isset($query['id'])) and ($mId == intval($query['id']))) {
		unset($query['view']);
		unset($query['catid']);
		unset($query['id']);
	}

	if (isset($view) and ($view == 'section' && !empty($query['Itemid']))) {
		if (($mView != 'section') or ($mView == 'section' and $mId != intval($query['id']))) {
			$segments[] = 'section';
			unset($query['Itemid']);
		}
	}

	if (isset($view) and $view == 'category') {
		if ($mId != intval($query['id']) || $mView != $view) {
			$segments[] = $query['id'];
		}
		unset($query['id']);
	}

	if (isset($query['catid'])) {
		// if we are routing an article or category where the category id matches the menu catid, don't include the category segment
		if ((($view == 'article') and ($mView != 'category') and ($mView != 'article') and ($mCatid != intval($query['catid'])))) {
			$segments[] = $query['catid'];
		}
		unset($query['catid']);
	};

	if(isset($query['id'])) {
		if (empty($query['Itemid'])) {
			$segments[] = $query['id'];
		} else {
			if (isset($menuItem->query['id'])) {
				if($query['id'] != $mId) {
					$segments[] = $query['id'];
				}
			} else {
				$segments[] = $query['id'];
			}
		}
		unset($query['id']);
	};

	if(isset($query['year'])) {

		if(!empty($query['Itemid'])) {
			$segments[] = $query['year'];
			unset($query['year']);
		}
	};

	if(isset($query['month'])) {

		if(!empty($query['Itemid'])) {
			$segments[] = $query['month'];
			unset($query['month']);
		}
	};

	if(isset($query['layout']))
	{
		if(!empty($query['Itemid']) && isset($menuItem->query['layout'])) {
			if ($query['layout'] == $menuItem->query['layout']) {

				unset($query['layout']);
			}
		} else {
			if($query['layout'] == 'default') {
				unset($query['layout']);
			}
		}
	};

	return $segments;
}

function ContentParseRoute($segments)
{
	$vars = array();

	//Get the active menu item
	$menu =& JSite::getMenu();
	$item =& $menu->getActive();

	// Count route segments
	$count = count($segments);

	//Standard routing for articles
	if(!isset($item))
	{
		$vars['view']  = $segments[0];
		$vars['id']    = $segments[$count - 1];
		return $vars;
	}

	//Handle View and Identifier
	switch($item->query['view'])
	{
		case 'section' :
		{
			if($count == 1) {
				$vars['view'] = 'category';

				if(isset($item->query['layout']) && $item->query['layout'] == 'blog') {
					$vars['layout'] = 'blog';
				}
			}

			if($count == 2) {
				$vars['view']  = 'article';
				$vars['catid'] = $segments[$count-2];
			}

			$vars['id']    = $segments[$count-1];

		} break;

		case 'category'   :
		{
			$vars['id']   = $segments[$count-1];
			$vars['view'] = 'article';

		} break;

		case 'frontpage'   :
		{
			$vars['id']   = $segments[$count-1];
			$vars['view'] = 'article';

		} break;

		case 'article' :
		{
			$vars['id']	  = $segments[$count-1];
			$vars['view'] = 'article';
		} break;

		case 'archive' :
		{
			if($count != 1)
			{
				$vars['year']  = $count >= 2 ? $segments[$count-2] : null;
				$vars['month'] = $segments[$count-1];
				$vars['view']  = 'archive';
			} else {
				$vars['id']	  = $segments[$count-1];
				$vars['view'] = 'article';
			}
		}
	}

	return $vars;
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             E?ɤ�>3�H?'{�>47K?~��>�N?>�>�>Q?΍�>�%T?�>��V?Aؤ>��Y?�E�>�"\?�U�>�O^?�?�>;f`?Ը>~�b?T��>ibd?~L�>	�e?\-�>�|g?���>��h?M�>�oj?�W�>��k?���>Sum?���>��n?9��>^^p?Ց�>g�q?���>��r?��?u!t?�W?v�u?�i?'�v?��?��w?*�?�4y?_?Wiz?*N?�{?C�#?.�|?��)?��}?r�/?��~?M�6?�?��=?�0?M.E??R?~�M?t?��W?>�?�b?˸?{�o?��?  �?  �?Copyright 2008 Adobe Systems, Inc.    '    '  �   '    '  �  '  ���'     '  ����'  k   '    '    '  �   '    '  �  '  ���'     '  ����'  k   '  $               �?  �?KczA��k?$>|?���@k;�?�;�?�@D��?{,�?��=��?�?@;��;f�?^�?e�?���?���?��@�%�?p��?�3@���?s��? �@�!�?�R�?]��@��?�B�?}��@緄?�ղ?���@�o?���?���@Bu|?���?��Arv?�?`A��h?�%�?      �?  �?��A\Ti?,�{?6�@ɋ?��~?���@〓?'�?t�P?(�?*��?
���A�?��?�O�W��?��? 	v<��?���?z�j�g��?�ӕ?��H����?Rd�?pT��~�?���?|�[�(�?�t�?�eD��~?*�?`�>|?�߱?�S�<�zs?���?d���]�h?&�?      �?  �?$�A��e?��z?z�A�s�?o�}?���@	��?`�?~��?3��?(�?T������?DP�?�ۿq�?���?�uſ c�?jz�?´5���?��?��a��Y�?z�?J'Q��*�?$��?Y�i�&ǁ?�ڙ?����N;|?7͝?�գ�q�v? ˣ?x���@p?q0�?������d?,��?      �?  �?�AL�b?�*z?��A?�?�&|?��@ ��?��}?��@�u�?���?8?�ۊ?��?
u ��p�?�_�?����?�>�?J�b��g�?Qd�?0Q����?wR�?����苂?���?!#����?a��?�c���Xx?���?���7�q?0��?���Z�k?��?��%���`?ι�?      �?  �?�͹Abl?fz?pf%A���?��z?�@=�?��{?+�<@��?�v~?@bU>"�?&(�?JO��aЉ?|�?�����?�[�?|@Y��ˆ?��?�+�����?]��?�#���I�?A��?���:�}?Q؏?�c��w#u?lԒ?��Dn?��?��g?��? /'�f�\?W��?      �?  �?��A�͌?�,}?��<Aae�?��z?�/�@�e�?G
z?}F@���?9�{?�8�?R)�?��~?د���o�?��?�-ſH�?/��?=�����?�t�?R�J�oY�?fT�?��w���?�R�?bx���{{?E��?�����q?]��?<���dj?���?]��s�a?!�?���w�W?�7�?      �?  �?0��A��?=�?)32A���?E!�?W�@�a�?�"�?0��@Tߍ?�"�?��)@�֌?�#�?�O�?�?�%�?���=���?9�??���?��?���#G?�T�?M|��~?0�?1��by?�ņ?�g7��n?��?R�]�`f?1�?�k�Q�\?���?�ل��R?)l�?      �?  �?�l�A�,�?@�?�>-AӁ�?� �?���@
��?�R�?@�@P]�?���?DI�@�I�?qS�?�/F@�č?ͻ�?� @��?���?h@p��?��? @}��?)W�?�T�?�?�
�?@��?�Jz?�τ?�޾?��n?B?N�?\�d?6�?Dݰ?��[?ݕ�?&�?��P?
~�?      �?  �?p{�A��?�&�?��"A��?KW�?@�@�V�?.��?�h�@���?GO�?�@�א?b'�?��@7��?�Ԃ?iˎ@S7�?�L�?�	�@�h�?��?�U�@�j�?��?K��@�w�?�ۅ??�@Y�}?f�?y/�@6wq?t4�?�_�@��f?���?7D�@M�]?k��?��A�vR?ߑ?      �?  �?EDnA]¤?JK�?h�A�?՟�?_��@WT�?��?^S�@?��?Tԁ?��@���?�ӂ?��@_�?�ă?j۪@{��?��?o��@��?�?0-�@Ͷ�?�8�??��@"e�?~��?�	�@RJ�?�?��A�s?ы?|�,A��h?w�?l8A��_?���?r�IA[{S?�A�?      �?  �?|^RA8��?\p�?��
A/�?��?���@�`�?�?$�@�?i�?^��@�?�Ӄ?���@w4�?^I�?�-�@%�?ޔ�?���@�m�?��?$�@��?�ŉ?��@D�?�Ջ?��@`��?bN�?44A`�u?��?H'A�Mj?�l�?(�5A��`?�j�?�9>AKfT?֌�?      �?  �?�8A��?���?��@Hܡ?9�?N��@�מ?��?�)�@���?pD�?q��@lt�?
�?��@��?�Ά?��@^q�?
}�?9r�@���?���?d\�@Hԅ?T0�?��@(��?7&�?�(�@m��?�Ւ?v9�@
�v?ޕ?�l�@Qk?w��?@{�@��`?�۠?=��@ԗV?Vc�?      �?  �?��Au�?���?P�@`�?퐁?"l�@I۬?K��?ܠ/@��?�g�?`�%@Ϝ?/Y�?0&@Ѵ�?�C�?�ٌ?`�?���?иn?!
�?x��?�g�?�މ?l�?��w�YQ�?���?����s�?ᕘ?l�����z?���?���$	o?mt�?�;;��Tc?iگ?X��W?@��?      �?  �?8��@���?t��?�qn@��?̛�?�:)@˜�?B��?�?�ş?�8�?@�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  