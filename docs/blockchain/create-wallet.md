# 开发钱包应用

  区块链元盛钱包开发

## 相关资料

- Web3.js

  Web3.js是一组用来和本地或远程以太坊节点进行交互的js库，它可以使用HTTP或IPC建立与以太坊节点旳连接。
  文档：[web3js.readthedocs.io](https://web3js.readthedocs.io/en/v1.2.7/web3-eth.html#id108)

- eth-lightwallet.js

  lightWallet 是一个HD钱包，可以存储在浏览器中加密的私钥，即使您未运行本地以太坊节点，也可以运行Ethereum dapp。它使用BIP32和BIP39从随机生成的12字种子生成地址的高清树。

  LightWallet主要旨在通过密钥库模块成为Hooked Web3提供程序的签名提供程序。这使您可以完全控制私钥，同时仍连接到远程节点以中继已签名的事务。此外，txutils函数可用于在脱机时构造事务，例如用于气隙式冷钱包实现。

  默认的BIP32 HD派生路径为m / 0'/ 0'/ 0'/ i，但是可以选择任何HD路径。

  请注意，LightWallet目前尚未经过全面的安全审查。它仍然是实验性软件，旨在用于少量的以太币，用于与以太坊区块链上的智能合约进行交互。不要依靠它来存储更​​多的以太币。

  仓库：[ConsenSys/eth-lightwallet](https://github.com/ConsenSys/eth-lightwallet)
  参考：[lightwallet](https://www.cnblogs.com/wanghui-garcia/p/10001639.html)

- keythereum.js


  Keythereum是一个JavaScript工具，用于生成，导入和导出以太坊密钥。 这提供了在本地和网络钱包中使用相同帐户的简单方法。 它可用于可验证的冷库钱包。

  Keythereum使用与geth相同的密钥派生函数（PBKDF2-SHA256或scrypt），对称密码（AES-128-CTR或AES-128-CBC）和消息身份验证代码。 您可以将生成的密钥导出到文件，将其复制到数据目录的密钥库，然后立即在本地以太坊客户端中开始使用它。

  注意：从版本0.5.0开始，keythereum的加密和解密函数均返回Buffers而不是字符串。 对于任何直接使用这些功能的人来说，这都是一个巨大的改变！

  仓库：[ethereumjs/keythereum](https://github.com/ethereumjs/keythereum)
  参考：[keythereum](https://www.kutu66.com/GitHub/article_127865)

- 以太坊官网

  地址：[ethereum.org](https://ethereum.org/)

- 以太坊区块链浏览器

  地址：[etherscan.io/](https://etherscan.io/)

## 应用开发

### 通过 lightWallet 生成