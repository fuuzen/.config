# .config

一些 `~/.config` 目录下常用的配置。

## xxxfetch

配置启动 shell 时显示 fetch 信息：

- 安装 chafa (或别的工具，要改配置保持一致)
- Windows: 在 `~/WindowsPowerShell/Microsoft.PowerShell_profile.ps1` 加上 `winfetch` 或 `fastfetch`。
- Linux/MacOS: 在 `~/.bashrc` 或 `~/.zshrc` 最后加上 `neofetch` 或 `fastfetch`。

关于图片：

- `docs` 下放了特定 Logo 图片，通过 Github Page 部署，部署时指定根据 `/docs` 目录。
- 随机 taffy 图片来自: https://github.com/fuuzen/random-taffy

已知问题：

- Windows Powershell 启动时的 fastfetch 会加载完 Logo 后卡住，键盘输入东西才继续打印完
- MacOS 14.2 用 neofetch 显示不出来图片
