<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> User Name: </label>
            <div class="col-sm-5">
                <input type="text" name="username" class="form-control" placeholder="User name" />
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" name="password" class="form-control" placeholder="Password" />
            </div>
        </div>
        <#if isRegisterForm>
        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> Email: </label>
            <div class="col-sm-5">
                <input type="email" name="email" class="form-control" placeholder="some@some.com" />
            </div>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-secondary" type="submit"/><#if isRegisterForm>Sign Up<#else>Sign In</#if></button>
        <#if !isRegisterForm><a class="ms-2" href="/registration">Sign up</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-secondary" type="submit">Sign Out</button>
    </form>
</#macro>