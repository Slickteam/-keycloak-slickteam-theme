<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=false>
<!doctype html>
<html lang="fr" class="w-full h-full">

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

<body class="w-full h-full" style="overflow: unset; touch-action: none;">
    <div class="h-[inherit]">
        <div class="min-h-screen bg-gray-100 text-gray-900 flex justify-center">
            <div class="m-0 sm:m-10 bg-white shadow sm:rounded-lg flex justify-center flex-1">
                <div class="flex-1 bg-primary-100 text-center hidden lg:flex">
                    <#nested "imageRight">
                </div>
                <div class="lg:w-1/2 xl:w-5/12 p-6 sm:p-12 flex flex-col justify-center">
                    <div>
                        <div class="my-4">
                            <img src="${url.resourcesPath}/img/favicon.png" class="w-32 mx-auto" alt="Logo Slickteam" />
                        </div>
                        <#nested "form">
                        <#if message?has_content>
                            <#if message.type = 'success'>
                                <div class="rounded-md bg-green-50 mt-4 p-4 text-sm text-green-500">
                            <#elseif message.type = 'warning'>
                                <div class="rounded-md bg-yellow-50 mt-4 p-4 text-sm text-yellow-500">
                            <#elseif message.type = 'error'>
                                <div class="rounded-md bg-red-50 mt-4 p-4 text-sm text-red-500">
                            <#else>
                                <div class="rounded-md bg-blue-50 mt-4 p-4 text-sm text-blue-500">
                            </#if>
                            ${message.summary?no_esc}</div>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
</#macro>
