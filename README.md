Third-Party Newsfeeds
=====================

Allows third-parties to intigrate their newsfeeds into the front page of the admin control panel.

How to use?
-----------

1. Bind a template listener on `newsTabMenuTabs` (template `__indexNewsInjection`) to add a new tab to the news tab menu:
   ```xml
   <templatelistener name="newsTabMenuTabs">
           <environment>admin</environment>
           <templatename>__indexNewsInjection</templatename>
           <eventname>newsTabMenuTabs</eventname>
           <templatecode><![CDATA[<li><a href="{@$__wcf->getAnchor('codequake')}">codeQuake</a></li>]]></templatecode>
   </templatelistener>
   ```

2. Bind a template listener on `newsTabMenuContents` (template `__indexNewsInjection`) to add the tab content:
   ```xml
   <templatelistener name="newsTabMenuContents">
           <environment>admin</environment>
           <templatename>__indexNewsInjection</templatename>
           <eventname>newsTabMenuContents</eventname>
           <templatecode><![CDATA[{include file='__indexNews' application='cms'}]]></templatecode>
   </templatelistener>
   ```
   **Heads up!** The tab menu content must be wrapped into a `div` element with the same id as the anchor name specified in step one. Assuming that you want to integrate a twitter widget, an example content might look like this:
   ```html
   <div id="codequake" class="containerPadding">
           <a class="twitter-timeline" href="https://twitter.com/codeQuake" data-chrome="nofooter transparent" data-widget-id="546662296089821185">Tweets von @codeQuake </a>
   </div>
   ```

License
-------

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public License
as published by the Free Software Foundation; either version 2.1
of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA