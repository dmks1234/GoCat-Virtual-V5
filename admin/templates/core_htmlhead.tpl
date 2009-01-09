<?php

$files = array(	'jquery.min.js', 
				'jqModal.js',
				'jquery.form.js', 
				'jquery.bigiframe.js',
				'jquery.sparklines.js',
				'jquery.tablesorter.pack.js',
				'jquery.tablesorter.pager.js', 
				'jquery.metadata.js', 
				'jquery.impromptu.js',
				'jquery.listen-min.js', 
				'jquery-ui.js',
				'jquery.dimensions.pack.js',
				'nicEdit.js');
				
# Build a condensed version of the above files
#	Suck 'em all into one file, reduce the number of HTTP requests
#	May also be cached
$condenser = new CodonCondenser();
$condenser->SetOptions(SITE_ROOT.'/lib/js', SITE_URL.'/lib/js', 'js', '');
$cache_url = $condenser->GetCondensedFile($files, 'jquery-admin.js');

/*
<script type="text/javascript" src="<?php echo SITE_URL ?>/lib/js/jquery-ui.js"></script>
<script type="text/javascript" src="<?php echo SITE_URL ?>/lib/js/jquery.dimensions.pack.js"></script>
*/
?>
<script type="text/javascript" src="<?php echo $cache_url?>"></script>
<script type="text/javascript" src="<?php echo SITE_URL?>/admin/lib/phpvmsadmin.js"></script>

<link rel="alternate" type="application/rss+xml" title="RSS" href="<?php echo SITE_URL?>/lib/rss/latestpireps.rss">

<?php echo $MODULE_HEAD_INC;?>