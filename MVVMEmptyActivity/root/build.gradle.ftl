android {
    dataBinding {
        enabled = true
    }
}

dependencies {
	${getConfigurationName("implementation")} 'androidx.lifecycle:lifecycle-extensions:2.0.0'
}