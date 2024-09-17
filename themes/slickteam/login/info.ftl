<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        <#if messageHeader??>
        ${messageHeader}
        <#else>
        ${message.summary}
        </#if>
    <#elseif section = "form">
    <div id="kc-info-message" >
        <p class="instruction">
            ${message.summary}
            <#if requiredActions??>
            <#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list>
            <#else>
            </#if>
        </p>
        <#if skipLink??>
            <#if client?? && client.baseUrl?has_content>
                <a
                id="backToApplication"
                class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none"
                href="${client.baseUrl}">
                    ${kcSanitize(msg("backToApplication"))?no_esc}
                </a>
            </#if>
        <#else>
            <#if pageRedirectUri?has_content>
                <p><a href="${pageRedirectUri}"
                    class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none"
                    role="button">${msg("backToApplication")}</a></p>
            <#elseif actionUri?has_content>
                <p><a href="${actionUri}"
                    class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none"
                    role="button">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
            <#else>
                <p><a href="${properties.logoUrl}"
                    class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none"
                    role="button">${msg("backToApplication")}</a></p>
            </#if>
        </#if>
    </div>
    <#elseif section = "imageRight">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
            style="background-image: url('${url.resourcesPath}/img/to_do_list.svg');">
        </div>
    </#if>
</@layout.registrationLayout>