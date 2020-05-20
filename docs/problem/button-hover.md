# ion-button hover 不恢复

由于移动端对于 css: hover 处理结果与 pc 端不同，不会自动触发恢复，解决方案：

## 方案一

  屏蔽掉所有交互效果

```scss
ion-button {
  --background-hover: unset;
  --background-activated: unset;
  --background-hover-opacity: 1;
}
```

## 方案二

  采取不同的按钮交互配置，不能自动恢复

```scss
ion-button {
  --background-hover: [value];
  --background-activated: [value];
  --background-hover-opacity: [value];
}
```

## 方案三

  封装 ion-button ，监听 touchstart、touchend，做特定处理
