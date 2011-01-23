    <footer>
	<a href="http://www.vboxadm.net/?version=[% version %]" target="_blank">VBoxAdm [% version %]</a>
	&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	[% "Logged in as [_1]" | l10n(username) %]
	&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="http://www.vboxadm.net/?versioncheck=[% version %]">[% "Check for updates" | l10n %]</a>
	&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="http://[% system_domain %]/">[% "Return to [_1]" | l10n(system_domain) %]</a>
    </footer>
    [% IF debug_msg %]
    <div id="debug">
    	[% debug_msg %]
    </div>
    [% END %]
  </div> <!--! end of #container -->

  <!-- Javascript at the bottom for fast page loading -->

  <!-- Grab Google CDN's jQuery. fall back to local if necessary -->
  <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.js"></script> -->
  <!-- <script>!window.jQuery && document.write(unescape('%3Cscript src="/js/libs/jquery-1.4.2.js"%3E%3C/script%3E'))</script> -->
  
  <!-- scripts concatenated and minified via ant build script-->
  <!-- <script src="/js/plugins.js"></script> -->
  <!-- <script src="/js/script.js"></script> -->
  <script src="/js/sorttable.js"></script>
  <!-- end concatenated and minified scripts-->
  
  
  <!--[if lt IE 7 ]>
    <script src="/js/libs/dd_belatedpng.js"></script>
    <script> DD_belatedPNG.fix('img, .png_bg'); //fix any <img> or .png_bg background-images </script>
  <![endif]-->
  
</body>
</html>
