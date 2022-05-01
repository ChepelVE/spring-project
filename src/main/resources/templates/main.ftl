<#import "parts/common.ftl" as c>

<@c.page>
<div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline my-2 my-lg-0">
                <input type="search" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag"/>
                <button type="submit" class="btn btn-primary my-2 my-sm-0">Search</button>
            </form>
        </div>
    </div>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse <#if message??>show</#if>" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="text" name="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                           value="<#if message??>${message.text}</#if>" placeholder="Введите сообщение" />
                    <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                    </#if>
                </div>
                <div class="form-group">
                    <input type="text" name="tag" class="form-control"
                           value="<#if message??>${message.tag}</#if>" placeholder="Тэг" />
                    <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="form-group">
                    <button type="submit" class="btn btn-primary ml-2">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="card-columns">
    <#list messages as message>
    <div class="card" style="width: 18rem;">
        <#if message.filename??>
        <img class="card-img-top" src="/img/${message.filename}" alt="Card image cap">
    </#if>
    <div class="card-body">
        <p class="card-text">${message.text}</p>
        <blockquote class="blockquote mb-0">
            <p>${message.tag}</p>
            <footer class="blockquote-footer">${message.authorName}</footer>
        </blockquote>
    </div>
</div>
</div>
<#else>
No messages
</#list>
</div>
</@c.page>