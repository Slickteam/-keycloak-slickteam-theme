<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))} | Slickteam
    <#elseif section = "form">
    <div class="mx-auto max-w-xs">
        <h1 class="text-2xl xl:text-3xl text-center font-medium my-4">
            ${msg("authenticate")}
        </h1>
        <#if social.providers??>
            <div class="flex flex-col items-center">
            <#list social.providers as p>
                <button
                    onclick="location.href='${p.loginUrl}';"
                    class="w-full max-w-xs font-bold shadow-sm rounded-lg py-3 bg-primary-600 text-white flex items-center justify-center transition-all duration-300 ease-in-out focus:outline-none hover:shadow focus:shadow-sm focus:shadow-outline">
                    <div class="bg-white p-2 rounded-full">
                        <img src="${url.resourcesPath}/img/${p.displayName}_logo.svg" class="w-4 mx-auto" alt="Logo Slickteam" />
                    </div>
                    <span class="ml-4">
                        ${msg("textSignTP")} ${p.displayName}
                    </span>
                </button>
            </#list>
            </div>
            <div class="my-12 border-b text-center">
                <div
                    class="leading-none px-2 inline-block text-sm text-gray-600 tracking-wide font-medium bg-white transform translate-y-1/2">
                    ${msg("textSignInEmail")}
                </div>
            </div>
        </#if>

        <form id="slickteam-form-login" onsubmit="return true;" action="${url.loginAction}" method="post">
        <#if realm.password>
            <input
                class="w-full px-4 py-3 rounded-lg font-medium border placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white"
                type="text" name="username" id="username" placeholder="${msg('email')}" required />
            <input
                class="w-full px-4 py-3 rounded-lg font-medium border placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white mt-5"
                type="password" name="password" id="password" placeholder="${msg('password')}" required />
            <#if realm.resetPasswordAllowed>
                <div class="text-right mt-2">
                    <a tabindex="5" href="${url.loginResetCredentialsUrl}" class="text-sm font-semibold text-gray-700 hover:text-secondary-500 focus:text-secondary-500">${msg("forgotPassword")}</a>
                </div>
            </#if>
            <button
                type="submit"
                class="mt-5 tracking-wide font-semibold bg-primary-600 text-white w-full py-3 rounded-lg hover:bg-primary-300 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none">
                <svg class="w-6 h-6 -ml-2" fill="none" stroke="currentColor" stroke-width="2"
                    stroke-linecap="round" stroke-linejoin="round">
                    <path d="M16 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2" />
                    <circle cx="8.5" cy="7" r="4" />
                </svg>
                <span class="ml-3">
                    ${msg('logIn')}
                </span>
            </button>
        </#if>
        <#if realm.rememberMe && !usernameEditDisabled??>
            <div class="mt-4 flex items-center text-sm font-semibold text-gray-700 hover:text-secondary-500 focus:text-secondary-500">
                <label>
                    <#if login.rememberMe??>
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                    <#else>
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                    </#if>
                </label>
            </div>
        </#if>
        </form>
    </div>
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
    <#elseif section = "imageRight">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
            style="background-image: url('${url.resourcesPath}/img/login.svg');">
        </div>
    </#if>
</@layout.registrationLayout>
