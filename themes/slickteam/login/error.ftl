<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
  <#if section = "title">
        ${msg("errorTitle")}
    <#elseif section = "form">
    <div class="pt-3">
      <h1 class="text-xl xl:text-2xl text-center font-medium my-4">
        ${msg("errorTitle")}
      </h1>
      <div>
        <p>
          ${message.summary?no_esc}<br/>
          <#if client?? && client.baseUrl?has_content>
            <a
              id="backToApplication"
              class="mt-5 tracking-wide font-semibold bg-primary-700 text-gray-100 w-full py-3 rounded-lg hover:bg-primary-400 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none"
              href="${client.baseUrl}">
                ${kcSanitize(msg("backToApplication"))?no_esc}
            </a>
          </#if>
        </p>
      </div>
    </div>
    <#elseif section = "imageRight">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
            style="background-image: url('${url.resourcesPath}/img/server_down.svg');">
        </div>
    </#if>
</@layout.registrationLayout>