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
    
     <${getMaterialComponentName('android.support.design.widget.CoordinatorLayout', useAndroidX)}
            android:layout_width="match_parent"
            android:layout_height="match_parent">

        <com.google.android.material.appbar.AppBarLayout
                android:layout_height="wrap_content"
                android:layout_width="match_parent"
                android:theme="@style/AppTheme.AppBarOverlay">

            <androidx.appcompat.widget.Toolbar
                    android:id="@+id/toolbar"
                    android:text="@string/app_name"
                    android:layout_width="match_parent"
                    android:layout_height="?attr/actionBarSize"
                    android:background="?attr/colorPrimary"
                    app:popupTheme="@style/AppTheme.PopupOverlay"/>

        </com.google.android.material.appbar.AppBarLayout>

        <com.google.android.material.floatingactionbutton.FloatingActionButton
                android:id="@+id/fab"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_gravity="bottom|end"
                android:layout_margin="@dimen/fab_margin"
                app:srcCompat="@android:drawable/ic_dialog_email"
                android:onClick="@{() -> viewModel.showMessageClicked()}"
        />

    </${getMaterialComponentName('android.support.design.widget.CoordinatorLayout', useAndroidX)}>

</layout>