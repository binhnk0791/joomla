<?php
/**
 * $JA#COPYRIGHT$
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');
jimport('joomla.image.image');

class PlaymagHelper {

	public static function loadParamsContents($item, $pdata = 'attribs'){
		$data = $item->$pdata;
		if(is_string($pdata)){
			$data = new JRegistry;
			$data->loadString($item->$pdata);
		}

		if($data instanceof JRegistry){
			return array(
				'jdepartment_name' => $data->get('jdepartment_name', ''),
                'facebook_link'=>$data->get('facebook_link', ''),
                'flickr_link'=>$data->get('flickr_link', ''),
                'google_plus_link'=>$data->get('google_plus_link', ''),
                'twitter_link'=>$data->get('twitter_link', '')
			);
		}
		
		return array(
			'jdepartment_name' => '',
            'facebook_link'=> '',
            'flickr_link'=>'',
            'google_plus_link'=>'',
            'twitter_link'=>''
		);
	}
    public static function loadJSAjaxPaging(){
        //Load Ajax paginations
        $doc = jFactory::getDocument();
        $doc->addScriptDeclaration('
            var T3JSVars = {
               baseUrl: "'.JUri::base(true).'",
               tplUrl: "'.T3_TEMPLATE_URL.'",
               finishedMsg: "'.addslashes(JText::_('TPL_JSLANG_FINISHEDMSG')).'"
            };
        ');
        $doc->addScript(T3_TEMPLATE_URL.'/js/jainfinitesloaded.js');
        return;
    }
    public static function parseVideo($text){
		$obj = new stdClass;
		preg_match('#<iframe(.*?)></iframe>#is', $text, $matches);
		if(isset($matches[0])){
			$obj->iframe = $matches[0];
		}
		$obj->introtext = preg_replace('/<iframe.*?\/iframe>/i','', $text);
		return $obj;
    }
    // function to parse a video <entry>
    static function parseVideoEntry($entry) {
        $obj= new stdClass;
        // get nodes in media: namespace for media information
        //$media = $entry->children('http://search.yahoo.com/mrss/');
        $obj->title = $entry->title;
        $obj->description = $entry->description;
        // get video length
        //$yt = $media->children('http://gdata.youtube.com/schemas/2007');
        //$attrs = $yt->duration->attributes();
        $obj->length = $entry->duration;
        // return object to caller
        return $obj;
    }
    static function getYoutubeImage($vid){
        $result = array();
        $youtube_api_key = 'AIzaSyBvz_HaoSoB38ZM5vz3QvZcLHeM_58YnxA';
        
        // set video data feed URL use Youtube Data Api v3
        $feedURL = 'https://www.googleapis.com/youtube/v3/videos?id='.$vid.'&key='.$youtube_api_key.'&part=snippet,contentDetails';

        // read feed into object
        $data = json_decode(file_get_contents($feedURL));
        $entry = $data->items[0]->snippet;
        $entry->duration = $data->items[0]->contentDetails->duration;

        // parse video entry
        $video = PlaymagHelper::parseVideoEntry($entry);

        // display video image, title and duration
        $result['vimgsrc'] = 'https://i.ytimg.com/vi/'.$vid.'/default.jpg';
        $result['title'] = $video->title;
        $result['time']  = $video->length;

        return $result;
    }
    static function getVimeoImage($vid){
        // set video data feed URL
        $feedURL = 'http://vimeo.com/api/oembed.json?url=' . rawurlencode('http://vimeo.com/'.$vid);
        $video = file_get_contents($feedURL);
        $video = json_decode($video, TRUE);

        $result = array();
        $result['vimgsrc'] = $video['thumbnail_url'];
        $result['title'] = $video['title'];
        $result['time']  = $video['duration'];
        return $result;
    }
    //Gen images and time from youtube or vimeo video
    public static function loadVideoInfo($text){
        $vid = '';
        if(preg_match_all('@<iframe\s[^>]*src=[\"|\']([^\"\'\>]+)[^>].*?</iframe>@ms', $text, $iframesrc) > 0){
            if(isset($iframesrc[1])){

                if(strpos($iframesrc[1][0], 'vimeo.com') !== false ) {
                    $vid = str_replace(
                        array(
                            'http:',
                            'https:',
                            '//player.vimeo.com/video/'
                        ), '', $iframesrc[1][0]);
                    //remove any parameter
                    $vid = preg_replace('@(\/|\?).*@i', '', $vid);
                    if(!(empty($vid))){
                        return PlaymagHelper::getVimeoImage($vid);
                    }
                } else {
                    $vid = str_replace(
                        array(
                            'http:',
                            'https:',
                            '//youtu.be/',
                            '//www.youtube.com/embed/',
                            '//youtube.googleapis.com/v/'
                        ), '', $iframesrc[1][0]);
                    //remove any parameter
                    $vid = preg_replace('@(\/|\?).*@i', '', $vid);
                    if(!(empty($vid))){
                         return PlaymagHelper::getYoutubeImage($vid);
                    }
                }
            }
        }
        return;
    }
}