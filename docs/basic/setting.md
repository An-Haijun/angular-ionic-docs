# 基础配置

提升效率，便于维护

## 框架版本依赖说明

- Ionic @5.4.13 old Ionic 官方已替换为 @ionic/cli
- @ionic/cli @6.9.3

```shell
PS path> npm install @ionic/cli@6.9.3 -g
```

- @angular/cli @8.1.2

```shell
PS path> npm install @angular/cli@8.1.2 -g
```

- Node >= @10.16.0

```shell
PS path> npm install @ionic/cli@10.16.0 -g
```

- node-sass >= @4.12.0

```shell
PS path> npm install node-sass@4.12.0 -g --sass_binary_site=https://npm.taobao.org/mirrors/node-sass
```

- webpack @4.42.0 | webpack-cli @3.3.11

```shell
PS path> npm install webpack@4.42.0 webpack-cli@3.3.11 -g
```

## @ionic/cli 常用命令

用于项目的创建、编译

- 开始一个新应用

```shell
PS path> ionic start myApp tabs
```

- 启动应用

```shell
PS path> ionic serve
```

- 编译构建 Android | Ios应用

  - 添加平台

  ```shell
  PS path> ionic cordova platform add android | ios
  ```

  - 删除平台

  ```shell
  PS path> ionic cordova platform remove android | ios
  ```

  - 构建应用

  基础编译：

  ```shell
  PS path> ionic cordova build android | ios
  ```

  优化编译：

  ```shell
  PS path> ionic cordova build android | ios --prod
  ```

## 安装应用依赖插件

主要资源来自 Ionic 官方插件库及 Cordova 生态插件库.

::: tip 相关资源
Ionic: [https://ionicframework.com/docs/native](https://ionicframework.com/docs/native)

Cordova: [https://cordova.apache.org/plugins/](https://cordova.apache.org/plugins/)
:::

- 安装插件

```shell
PS path> ionic cordova plugin add [plugin-name | url]
```

- 删除插件

```shell
PS path> ionic cordova plugin remove [plugin-name | url]
```
