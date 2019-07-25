<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "recipe_simple_mvvm.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/MVVMActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName}Activity.${ktOrJavaExt}" />
 
    <instantiate from="root/src/app_package/MVVMEvents.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName}Events.${ktOrJavaExt}" />
 
  	<instantiate from="root/src/app_package/MVVMViewModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName}ViewModel.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${featureName}Activity.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${featureName}Events.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${featureName}ViewModel.${ktOrJavaExt}" />


<merge from="root/build.gradle.ftl"
  to="${escapeXmlAttribute(projectOut)}/build.gradle" />

</recipe>