[{block name="dd_widget_breadcrumb"}]
    [{strip}]
        [{block name="dd_widget_breadcrumb_list_inner"}]
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-3">
                [{block name="dd_widget_breadcrumb_list"}]
                    <li class="text-muted pr-3">[{oxmultilang ident="YOU_ARE_HERE"}]:</li>

                    [{foreach from=$oView->getBreadCrumb() item="sCrum" name="breadcrumb"}]
                        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumb-item[{if $smarty.foreach.breadcrumb.last}] active[{/if}]">
                            <a href="[{if $sCrum.link}][{$sCrum.link}][{else}]#[{/if}]" class="breadcrumb-link" title="[{$sCrum.title|escape:'html'}]" itemprop="url">
                                <span itemprop="title">[{$sCrum.title}]</span>
                            </a>
                        </li>
                    [{/foreach}]
                [{/block}]
            </ol>
        </nav>
        [{/block}]
    [{/strip}]
[{/block}]
