<#import "parts/common.ftlh" as c>

<@c.page>

    <form method="get" action="/main" class="row align-items-center">
        <div class="col-sm-5 mb-3">
            <input type="text" name="filter" class="form-control" value="${filter?if_exists!}"
                   placeholder="Search by tag"/>
        </div>
        <div class="col-sm-2 mb-3">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>

    <#include "parts/messageEdit.ftlh" />
    <#include "parts/messageList.ftlh" />


</@c.page>