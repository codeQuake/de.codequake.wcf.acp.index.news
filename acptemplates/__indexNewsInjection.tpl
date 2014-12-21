<nav id="newsTabMenu" class="menu" style="display: none">
	<ul>
		<li><a href="{@$__wcf->getAnchor('news-twitter-timeline')}">WoltLab</a></li>

		{event name='newsTabMenuTabs'}
	</ul>
</nav>

<div id="newsTabMenuContents" style="display: none">
	{event name='newsTabMenuContents'}
</div>

<script data-relocate="true">
	//<![CDATA[
	$(function() {
		var $newsContainer = $('#news').addClass('tabMenuContainer');

		$('#newsTabMenu').prependTo($newsContainer).show();
		$('#newsTabMenuContents > div').detach().appendTo($newsContainer);

		WCF.TabMenu.reload();
	});
	//]]>
</script>
