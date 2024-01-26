<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
    <div class="mx-auto max-w-xs">
        <#if realm.password>
                <h1 class="text-2xl xl:text-3xl text-center font-extrabold my-4">
                    ${msg("authenticate")}
                </h1>
                <form id="slickteam-form-login" onsubmit="return true;" action="${url.loginAction}" method="post">
                    <input
                        class="w-full px-8 py-4 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white"
                        type="text" name="username" id="username" placeholder="${msg('email')}" required />
                    <input
                        class="w-full px-8 py-4 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white mt-5"
                        type="password" name="password" id="password" placeholder="${msg('password')}" required />
                    <#if realm.resetPasswordAllowed>
                        <div class="text-right mt-2">
                            <a tabindex="5" href="${url.loginResetCredentialsUrl}" class="text-sm font-semibold text-gray-700 hover:text-blue-500 focus:text-blue-500">${msg("forgotPassword")}</a>
                        </div>
                    </#if>
                    <button
                        type="submit"
                        class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-4 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none">
                        <svg class="w-6 h-6 -ml-2" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round">
                            <path d="M16 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2" />
                            <circle cx="8.5" cy="7" r="4" />
                        </svg>
                        <span class="ml-3">
                            ${msg('logIn')}
                        </span>
                    </button>
                </form>
        </#if>
        <#if realm.rememberMe && !usernameEditDisabled??>
            <div class="mt-4 flex items-center text-sm font-semibold text-gray-700 hover:text-blue-500 focus:text-blue-500">
                <label>
                    <#if login.rememberMe??>
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                    <#else>
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                    </#if>
                </label>
            </div>
        </#if>
    </div>
    <#elseif section = "imageRight">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
            style="background-image: url('${url.resourcesPath}/img/login_re_4vu2.svg');">
        </div>
    </#if>
</@layout.registrationLayout>
