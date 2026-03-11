plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}
android {
    namespace = "com.abujena.dawajen"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }
    defaultConfig {
        applicationId = "com.abujena.dawajen"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
    buildTypes {
        release {
           signingConfig = signingConfigs.getByName("debug")
            isMinifyEnabled = false
            isShrinkResources = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    flavorDimensions += "env"
    productFlavors {
      create("dev") {
                dimension = "env"
                applicationIdSuffix = ".dev"
                versionNameSuffix = "-dev"
                resValue("string", "app_name", "ابو جنه للدواجن Dev")
              }
              create("prod") {
                dimension = "env"
                resValue("string", "app_name", "ابو جنه للدواجن")
            }
       }
    }
   flutter {
    source = "../.."
}
