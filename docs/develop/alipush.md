# 阿里云移动端推送插件

基于阿里云移动端推送功能，所封装的 Cordova 插件。

## 安装插件

借鉴：[github: cordova-plugin-aliyun-push](https://github.com/liuxiaoy/cordova-plugin-aliyun-push).

::: tip 提示
MIID, MIKEY, GCMSENDID, GCMAPPID 没有则为 null。
:::

```shell
ionic cordova plugin add cordova-plugin-aliyun-push --variable APP_KEY=APP_KEY --variable APP_SECRET=APP_SECRET --variable MIID=null --variable MIKEY=null --variable GCMSENDID=null --variable GCMAPPID=null
```

## 应用插件

- 声明变量

```ts
declare let AliPushPlugin: any
```

- 初始化

```ts
AliPushPlugin.init(success => {
  // 其他操作在这里
}, error => {
  console.log(error);
})
```

- 获取设备号

```ts
AliPushPlugin.getDeviceId(res => {    //得到设备id，
  console.log('device id ' + res);
}, error => {
  console.log(error);
});
```

- 