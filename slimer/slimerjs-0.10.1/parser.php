<?php
require_once 'simple_html_dom.php';
$html = new simple_html_dom();
$html->load_file('www2.html');
echo  $html->find('div._4qm1',0)->plaintext;

