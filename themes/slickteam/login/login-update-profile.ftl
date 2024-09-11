<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("profileFieldToInput",(realm.displayName!''))}
    <#elseif section = "form">
    <div class="mx-auto max-w-xs">
        <form id="shb-update-profile" action="${url.loginAction}" method="post">
            <h1 class="text-xl xl:text-2xl text-center font-medium my-4">
                ${msg("profileFieldToInput")}
            </h1>
            <input
                class="w-full px-4 py-3 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white"
                type="email" autocorrect="off" autocapitalize="off" name="email" id="email" placeholder="${msg('email')}" autofocus required />
            <input
                class="mt-5 w-full px-4 py-3 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white"
                type="text" autocorrect="off" autocapitalize="off" name="firstName" id="firstName" placeholder="${msg('firstName')}" required />
            <input
                class="mt-5 w-full px-4 py-3 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white"
                type="text" autocorrect="off" autocapitalize="off" name="lastName" id="lastName" placeholder="${msg('lastName')}" required  />

            <button
                type="submit"
                class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none">
                <span class="ml-3">
                    ${msg("send")}
                </span>
            </button>
            <div class="text-right mt-2">
                <a href="${url.loginUrl}" class="text-sm font-semibold text-gray-700 hover:text-blue-500 focus:text-blue-500">${kcSanitize(msg("doCancel"))?no_esc}</a>
            </div>
        </form>
    </div>
    <#elseif section = "imageRight">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
            style="background-image: url('${url.resourcesPath}/img/forgot_password.svg');">
        </div>
    </#if>
</@layout.registrationLayout>
