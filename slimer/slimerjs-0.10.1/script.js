
// var useragent = [];
// useragent.push('Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14');
// useragent.push('Opera/9.80 (X11; Linux x86_64; U; fr) Presto/2.9.168 Version/11.50');
// useragent.push('Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25');
// useragent.push('Opera/12.02 (Android 4.1; Linux; Opera Mobi/ADR-1111101157; U; en-US) Presto/2.9.201 Version/12.02');
// useragent.push('Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20130406 Firefox/23.0');
//
// casper.settings.userAgent = useragent[Math.floor(Math.random() * useragent.length)];



var url = 'https://www.facebook.com/profile.php?id=100001846927279';
var username = 'manov.aleks2016@yandex.ru', password = '258258w';

var casper = require('casper').create();
casper.userAgent( 'Mozilla / 5.0 (Macintosh; Intel Mac OS X)' );
casper.start('https://www.facebook.com', function () {
    this.fill('form#login_form', {
        'email': username,
        'pass': password
    }, true); // submit

});

casper.thenOpen(url, function() {
    var res = this.getHTML('div#content');
    var fs = require('fs');
    fs.write("/../../basic/web/www.html",res, 'a');
});

if (url.indexOf('profile.php?id') == -1){
    url = url + '/about?section=education&pnref=about';
}
else {
    url = url + '&sk=about&section=education&pnref=about';
}

casper.thenOpen(url,function () {
    var res = this.getHTML('div#content');
    var fs = require('fs');
    fs.write("/../../basic/web/www2.html",res, 'a');
});
casper.thenOpen('http://localhost/basic/web/index.php');

casper.run();