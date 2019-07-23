<?xml version="1.0" encoding="utf-8"?>
<layout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    tools:context="${packageName}.${activityClass}"
    >
    
    <data>
        
        <variable
            name="viewModel"
            type="${packageName}.${featureName}ViewModel"
            />
        
    </data>
    
    <${getMaterialComponentName('android.support.constraint.ConstraintLayout', useAndroidX)}
        android:id="@+id/cl_${classToResource(featureName)}"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
    <#if appBarLayoutName??>
        app:layout_behavior="@string/appbar_scrolling_view_behavior"
        tools:showIn="@layout/${appBarLayoutName}"
    </#if>>

    <#if isNewProject!false>
        <TextView
    <#if includeCppSupport!false>
            android:id="@+id/tv_text"
    </#if>
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="Hello World!"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintLeft_toLeftOf="parent"
            app:layout_constraintRight_toRightOf="parent"
            app:layout_constraintTop_toTopOf="parent" />

    </#if>
    </${getMaterialComponentName('android.support.constraint.ConstraintLayout', useAndroidX)}>

</layout>
