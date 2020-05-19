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
