# 开发钱包应用

  区块链元盛钱包开发

## 相关资料

- Web3.js

  Web3.js是一组用来和本地或远程以太坊节点进行交互的js库，它可以使用HTTP或IPC建立与以太坊节点旳连接。
  文档：[web3js.readthedocs.io](https://web3js.readthedocs.io/en/v1.2.7/web3-eth.html#id108)

- eth-lightwallet.js

  1、lightWallet 是一款 HD 钱包，它可以在浏览器中加密你的私钥；
  2、lightWallet 提供 lightwallet.keystore和lightwallet.txutils 两个主模块；
  3、LightWallet主要用于通过keystore模块为 Hooked Web3 provider提供签名。这允许您完全控制私钥，同时仍然连接到远程节点以中继已签名的事务。此外，txutils函数可以用于在脱机时构造交易。

  参考：[lightwallet](https://www.cnblogs.com/wanghui-garcia/p/10001639.html)

- keythereum.js

  Keythereum是一个用于生成，导入和导出Ethereum键的JavaScript工具。 这提供了一个简单的方法来在本地和网络钱包中使用相同的帐户。 它可以用于可以验证的冷存储钱包。

  参考：[keythereum](https://www.kutu66.com/GitHub/article_127865)

- 以太坊官网

  地址：[ethereum.org](https://ethereum.org/)

- 以太坊区块链浏览器

  地址：[etherscan.io/](https://etherscan.io/)

## 应用开发

### 通过 lightWallet 生成