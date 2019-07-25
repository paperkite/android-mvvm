package ${escapeKotlinIdentifiers(packageName)}

sealed class ${featureName}Events {
<#if generateLayout>
    object ShowMessage: ${featureName}Events()
</#if>    
}
