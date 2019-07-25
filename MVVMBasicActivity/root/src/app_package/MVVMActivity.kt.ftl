package ${escapeKotlinIdentifiers(packageName)}

import android.content.Context
import android.content.Intent
import ${superClassFqcn}
import android.os.Bundle
import androidx.databinding.DataBindingUtil
import androidx.lifecycle.ViewModelProviders
import androidx.lifecycle.Observer
import com.google.android.material.snackbar.Snackbar
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Activity${featureName}Binding

<#if (includeCppSupport!false) && generateLayout>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>

class ${featureName}Activity : AppCompatActivity() {

	private lateinit var binding: Activity${featureName}Binding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
<#if generateLayout>
		binding = DataBindingUtil.setContentView(this, R.layout.${layoutName})
		binding.lifecycleOwner = this
		binding.viewModel = ViewModelProviders.of(this)[${featureName}ViewModel::class.java]

        setSupportActionBar(binding.toolbar)
        binding.lifecycleOwner = this
        binding.viewModel = ViewModelProviders.of(this)[${featureName}ViewModel::class.java]
        onUIEvents(binding.viewModel as ${featureName}ViewModel)
        <#include "../../../../common/jni_code_usage.kt.ftl">
<#elseif includeCppSupport!false>
		
        // Example of a call to a native method
        android.util.Log.d("${featureName}Activity", stringFromJNI())
</#if>
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">

<#if generateLayout>
    fun onUIEvents(viewModel: ${featureName}ViewModel) {

        viewModel.liveEvents.observe(this, Observer {
            when (it) {
                is ${featureName}Events.ShowMessage -> {
                    Snackbar.make(binding.root, "Hello World!", Snackbar.LENGTH_LONG).setAction("Action", null).show()
                }
            }
        })

    }
</#if>

	companion object {
        fun getIntent(ctx: Context) = Intent(ctx, ${featureName}Activity::class.java)
    }

}
