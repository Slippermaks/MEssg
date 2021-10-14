<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Email:</label>
                <div class="col-sm-5">
                    <input class="form-control" type="email" name="email" placeholder="Example@ex.com"/>
                </div>
            </div>
        </#if>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name :</label>
            <div class="col-sm-5">
                <input class="form-control" type="text" name="username" placeholder="Username"/>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password:</label>
            <div class="col-sm-5">
                <input class="form-control" type="password" name="password" placeholder="Password"/>
            </div>
        </div>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegisterForm><a href="/registration">Registration</a></#if>
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Sign Out</button>
    </form>
</#macro>