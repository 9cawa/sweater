<#include "security.ftlh">
<#import "pager.ftlh" as p>

<@p.pager url page/>

<div class="card-columns" id="message-list">
    <#list page.content as message>
        <div id="message" class="card my-3 w-50 mx-auto" data-id="${message.id}">
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" class="card-img-top"/>
                </#if>
            </div>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted text-center">
                <div class="mx-auto">
                    <i>Posted by</i> <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <#if message.author.id == currentUserId>
                        <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        No messages
    </#list>
</div>

<@p.pager url page />