<#import "parts/common.ftlh" as c>

<@c.page>
    <h5>${username}</h5>
    ${message?if_exists!" "}
    <form method="post" xmlns="http://www.w3.org/1999/html">
        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" name="password" class="form-control" placeholder="Password" />
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> Email: </label>
            <div class="col-sm-5">
                <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-secondary" type="submit"/>Save</button>
    </form>
</@c.page>