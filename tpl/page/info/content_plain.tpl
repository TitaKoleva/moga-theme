[{capture append="oxidBlock_content"}]
    [{assign var="oContent" value=$oView->getContent()}]
    [{assign var="template_title" value=$oView->getTitle()}]
    [{assign var="tpl" value=$oViewConf->getActTplName()}]
    [{assign var="oxloadid" value=$oViewConf->getActContentLoadId()}]
    <h1>[{$template_title}]</h1>
    [{$oView->getParsedContent()}]

[{/capture}]
[{include file="layout/popup.tpl"}]
