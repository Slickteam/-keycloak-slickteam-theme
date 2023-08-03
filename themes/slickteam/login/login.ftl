<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet"/>
        <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
        <script>
            function togglePassword() {
                var x = document.getElementById("password");
                var v = document.getElementById("vi");
                if (x.type === "password") {
                    x.type = "text";
                    v.src = "${url.resourcesPath}/img/eye.png";
                } else {
                    x.type = "password";
                    v.src = "${url.resourcesPath}/img/eye-off.png";
                }
            }
        </script>
    <#elseif section = "form">
        <div class="card-header">
            <img class="logo" src="${url.resourcesPath}/img/logo_slickteam_white.svg" alt="Slickteam logo">
        </div>
        <div class="card-content">
        <#if realm.password>
            <form id="kc-form-login" onsubmit="return true;" action="${url.loginAction}" method="post">
                <input class="input-text input-text-ma0" id="username" class="login-field" placeholder="${msg("username")}" type="text" name="username" tabindex="1">
                <label class="visibility" id="v" onclick="togglePassword()"><img id="vi" src="${url.resourcesPath}/img/eye-off.png"></label>
                <input class="input-text" id="password" class="login-field" placeholder="${msg("password")}" type="password" name="password" tabindex="2">
                <input class="input-button" type="submit" value="${msg("doLogIn")}" tabindex="3">
            </form>
        </#if>
        <#if social.providers??>
            <#list social.providers as p>
            <input class="input-button-other social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
            </#list>
        </#if>
        <#if realm.rememberMe && !usernameEditDisabled??>
            <div class="remember-me">
                <label>
                    <#if login.rememberMe??>
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                    <#else>
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                    </#if>
                </label>
            </div>
        </#if>
        <#if realm.resetPasswordAllowed>
        <div class="forgot-password">
            <a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
        </div>
        </#if>
    </#if>
</@layout.registrationLayout>
