# 集成阿里云推送

[cordova-plugin-alipush](https://www.npmjs.com/package/cordova-plugin-alipush)

## 集成步骤

- 安装插件

```shell
  ionic cordova plugin add cordova-plugin-alipush --variable MIID=null --variable MIKEY=null --variable APP_KEY=30029490  --variable APP_SECRET=1b1ec90155b5baaaf164a8cc21f16d1e

```

## 问题处理

```shell
Using "requireCordovaModule" to load non-cordova module "fs" is not supported. Instead, add this module to your dependencies and use regular "require" to load it.
```

**解决方案：**

1、context.requireCordovaModule => require；
2、降低 cordova 版本，<= 8；
