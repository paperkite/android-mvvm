<recipe>

<#if !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>
    <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />

    <instantiate from="root/res/layout/simple_mvvm.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />

</recipe>