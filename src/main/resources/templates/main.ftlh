<#import "parts/common.ftlh" as c>

<@c.page>

    <form method="get" action="/main" class="row align-items-center">
        <div class="col-sm-5 mb-3">
            <input type="text" name="filter" class="form-control" value="${filter?if_exists!}"
                   placeholder="Search by tag">
        </div>
        <div class="col-sm-2 mb-3">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>

    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">Add new message
    </a>
    <div class="collapse <#if message??>show</#if>" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group mb-3">
                    <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                           value="<#if message??>${message.text}</#if>" name="text" placeholder="Type your message"/>
                    <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                    </#if>
                </div>
                <div class="form-group mb-3">
                    <input type="text" class="form-control"
                           value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Tag">
                    <#if tagError??>
                        <div class="invalid-feedback">
                            ${tagError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
                    <div class="input-group mb-3">
                        <input type="file" name="file" class="form-control" id="inputFile">
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Post</button>
                </div>
            </form>
        </div>
    </div>

    <#list messages as message>
        <div id="message" class="card my-3 w-50 mx-auto">
            <div>
                <#if message.filename??>
                    <img src="img/${message.filename}" class="card-img-top">
                </#if>
            </div>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted text-center">
                <div class="mx-auto"><i>Posted by</i> ${message.authorName}</div>
            </div>
        </div>
    <#else>
        No messages
    </#list>

</@c.page>