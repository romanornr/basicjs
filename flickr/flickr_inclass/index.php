<?php
require_once('includes/settings.php');
require_once('includes/classes/Flickr.php');
require_once('includes/db.php');

$flickr = new Flickr(FLICKR_KEY, FLICKR_SECRET);
$data = $flickr->search('mcdonald');


foreach ($data['photos']['photo'] as $photo) {
	echo '<a href="https://www.flickr.com/photos/' .$photo["owner"]. '/' .$photo["id"]. '" target="_blank"><img src="' . 'http://farm' . $photo["farm"] . '.static.flickr.com/' . $photo["server"] . '/' . $photo["id"] . '_' . $photo["secret"] . '_t.jpg"></a>';
}