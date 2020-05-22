# Android gradle 国内下载慢

  build fail，切换国内下载源

## 方案一

```shell
buildscript {
    repositories {
        maven{ url'http://maven.aliyun.com/nexus/content/groups/public/'}
        jcenter()
        google()
    }
}

// Allow plugins to declare Maven dependencies via build-extras.gradle.
allprojects {
    repositories {
        maven{ url'http://maven.aliyun.com/nexus/content/groups/public/'}
        jcenter()
        mavenCentral()
        google()
    }
}
```

## 方案二

```shell
buildscript {
    repositories {
        maven {
            url 'https://maven.aliyun.com/repository/jcenter'
        }
        maven {
            url 'https://maven.aliyun.com/repository/google'
        }
        jcenter()
        google()
    }

}

// Allow plugins to declare Maven dependencies via build-extras.gradle.
allprojects {
    repositories {
        maven {
            url 'https://maven.aliyun.com/repository/jcenter'
        }
        maven {
            url 'https://maven.aliyun.com/repository/central'
        }
        maven {
            url 'https://maven.aliyun.com/repository/google'
        }
        jcenter()
        mavenCentral()
        google()
    }
}
```

## 方案三

```sehll
    buildscript {
        repositories {
            jcenter()
            maven { url "https://maven.google.com" }
            maven { url "https://jitpack.io" }
            maven { url "https://adcolony.bintray.com/AdColony" }
            maven { url "https://dl.bintray.com/ironsource-mobile/android-sdk" }
            google()
        }
    }
    allprojects {
        repositories {
            jcenter()
            maven { url "https://maven.google.com" }
            maven { url "https://jitpack.io" }
            maven { url "https://adcolony.bintray.com/AdColony" }
            maven { url "https://dl.bintray.com/ironsource-mobile/android-sdk" }
            google()
        }
    }
```

## 方案四

  注释掉报错对应的包，主要针对下载失败：om.android.support:support-v4:24.1.1+

```shell
    target=android-28
    android.library.reference.1=CordovaLib
    android.library.reference.2=app
    cordova.system.library.1=com.android.support:support-annotations:27.+
    cordova.system.library.2=com.squareup.okhttp3:okhttp-urlconnection:3.10.0
    cordova.system.library.3=com.android.support:support-v4:27.+
    cordova.gradle.include.1=cordova-plugin-qrscanner/tokennumber-qrscanner.gradle
    # cordova.system.library.4=com.android.support:support-v4:24.1.1+
```
