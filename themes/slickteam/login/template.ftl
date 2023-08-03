<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/icon" href="${url.resourcesPath}/img/favicon.ico">

    <title><#nested "title"></title>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
</head>

	<body>
    <#nested "header">
    <div class="container">
        <h2 class="title-page">Slick<strong>team</strong><br>Authentification Service</h2>
        <div class="card">
    <#if displayMessage && message?has_content>
    <div class="alert alert-${message.type}">
        <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
        <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
        <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
        <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
        <span class="message-text">${message.summary?no_esc}</span>
    </div>
    </#if>
    <#nested "form">
        </div>
    </div>
	</body>
</html>
</#macro>
