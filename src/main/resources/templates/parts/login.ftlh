<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> User Name: </label>
            <div class="col-sm-5">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name" />
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> Password: </label>
            <div class="col-sm-5">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password" />
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="mb-3 row">
                <label class="col-sm-1 col-form-label"> Password: </label>
                <div class="col-sm-5">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Retype password" />
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
        <div class="mb-3 row">
            <label class="col-sm-1 col-form-label"> Email: </label>
            <div class="col-sm-5">
                <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com" />
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
            </div>
        </div>
            <div class="col-sm-6">
                <div class="g-recaptcha" data-sitekey="6LdPkBIgAAAAAKrc1i01ZH3D-bxN5BSoXCRFftny"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
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
        <button class="btn btn-secondary" type="submit"><#if user??>Sign Out<#else>Log in</#if></button>
    </form>
</#macro>