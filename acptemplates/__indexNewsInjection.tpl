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

        // move containerPadding class so other news tabs don't have to have a padding
        $newsContainer.removeClass('containerPadding');
        $('#news-twitter-timeline').addClass('containerPadding');

        // move tab menu and tab contents
        $('#newsTabMenu').prependTo($newsContainer).show();
        $('#newsTabMenuContents').children('div').detach().appendTo($newsContainer);

        // reload tab menu to initialize new submenu
        WCF.TabMenu.reload();
    });
    //]]>
</script>
