package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
import android.content.Context;
import android.content.Intent;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.ViewModelProviders;
import ${escapeKotlinIdentifiers(packageName)}.databinding.Activity${featureName}Binding;

<#if (includeCppSupport!false) && generateLayout>
import android.widget.TextView;
</#if>
<#if applicationPackage??>
	import ${applicationPackage}.R
</#if>

public class ${activityClass} extends AppCompatActivity {

	private Activity${featureName}Binding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>	
		binding = DataBindingUtil.setContentView(this, R.layout.${layoutName});
		binding.setLifecycleOwner(this);
		binding.setViewModel(ViewModelProviders.of(this).get(${featureName}ViewModel.class)); 
       <#include "../../../../common/jni_code_usage.java.ftl">
<#elseif includeCppSupport!false>

        // Example of a call to a native method
        android.util.Log.d("${activityClass}", stringFromJNI());
</#if>
    }

    public static Intent getIntent(Context context){
		return new Intent(context, ${activityClass}.class);
	}

<#include "../../../../common/jni_code_snippet.java.ftl">
}