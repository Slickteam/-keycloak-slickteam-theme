<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("pageExpiredTitle",(realm.displayName!''))} | Slickteam
    <#elseif section = "form">
    <div class="mx-auto max-w-xs">
        <h1 class="text-xl xl:text-2xl text-center font-medium my-4">
            ${msg("pageExpiredTitle")}
        </h1>
        <div class="instruction mt-3">
          <p>
            ${msg("pageExpiredMsg1")} <a class="mt-5 tracking-wide font-semibold bg-secondary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-secondary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none" id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .
          </p>

          <p>
            ${msg("pageExpiredMsg2")} <a class="mt-5 tracking-wide font-semibold bg-secondary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-secondary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none" id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .
          </p>
        </div>
    </div>
    <#elseif section = "imageRight">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
            style="background-image: url('${url.resourcesPath}/img/warning.svg');">
        </div>
    </#if>
</@layout.registrationLayout>
