package ${escapeKotlinIdentifiers(packageName)}

import androidx.lifecycle.ViewModel
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.LiveData

class ${featureName}ViewModel : ViewModel() {
	<#if generateLayout>
	private val _liveEvents = MutableLiveData<${featureName}Events>()
    val liveEvents: LiveData<${featureName}Events> = _liveEvents

    fun showMessageClicked() {
        _liveEvents.postValue(${featureName}Events.ShowMessage)
    }
    </#if>
}