<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User name:</label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control mb-4" placeholder="User name">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control mb-4" placeholder="Password">
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
<button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign in</#if></button>
</form>
</#macro>

<#macro logout>
<input type="hidden" name="_csrf" value="${_csrf.token}" />
<button type="submit" class="btn btn-primary my-2 my-sm-0">Sign Out</button>
</#macro>