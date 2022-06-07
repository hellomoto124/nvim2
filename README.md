# Neovim 配置 
  ```
   白嫖 B站  https://www.bilibili.com/video/BV1WY411P736?spm_id_from=333.999.0.0  我这里仅做了些我自己的修改
  ```

**neovim 版本： 目前仅在0.7.0 版本测试通过， 其余版本请自行测试**

>建议：
使用方法：

1. clone本仓库，并在 `~/.config` 目录下建立nvim的软链接
  ```shell

  ```

2.执行 `nvim +PackerSync` 命令， 根据网络条件的不同，可能需要多次执行本命令，直到所有插件下载完成

3.通过`LspInstallInfo`命令安装对应lsp svr, 接着选中对应语言的server，如cpp为clangd， 按i执行安装



# 常用快捷键说明

> 注意：随着个人使用习惯的改变，快捷键可能会有所更改。但保证在commit=c1582d31f328f60445642daecbca9ca75ad2b087 时生效。 
>
> 快捷键定义位置说明：
>
> 1. 常用快捷键在 keymaps.lua 文件下定义
> 2. 和插件特定的快捷键一部分放在keymaps.lua文件，大部分放在该插件配置文件处。
>
> 可通过 `<space>`+h+k 快捷键调出快捷键查询窗口



## 1. 文件目录 

| 快捷键         | 功能                         |
| -------------- | ---------------------------- |
| `<leader>` + e | 开关目录树                   |
| `<leader>` + f | 定位当前文件在目录树所处位置 |
| o              | 打开文件/打开文件目录        |
| h              | 折叠一个层级目录             |
| d              | 删除文件                     |
| a              | 新建文件/新建文件夹          |
| r              | 重命名文件                   |
| x              | 剪切文件                     |
| p              | 粘贴                         |
| gy             | 拷贝文件绝对路径             |
| Y              | 拷贝文件相对路径             |
| y              | 拷贝文件名                   |

更多快捷键见 nvim-tree.lua 顶部注释

## 2. 常规动作

| 快捷键             | 功能                                                         |
| ------------------ | ------------------------------------------------------------ |
| `<space>` + o      | 打开大纲                                                     |
| `<space>` + f      | 搜索文件                                                     |
| `<space>` + F      | 搜索字符(依赖rg，可传入rg的各类参数，实现忽略大小写、正则表达式搜索等) |
| `<space>` + p      | 切换项目                                                     |
| `<space>` + P      | 切换会话                                                     |
| `<space>` + r      | 最近文件                                                     |
| `<space>` + R      | 打开替换窗口                                                 |
| E                  | 打开左边标签页                                               |
| R                  | 打开右边标签页                                               |
| `<ctrl>` + h/j/k/l | 进入左边/下边/上边/右边窗口                                  |
| `<ctrl> + \`       | 打开终端                                                     |
| `<leader>` + q     | 关闭窗口                                                     |
| `<leader>` + D     | 关闭buffer                                                   |

## 3. 代码导航

| 快捷键          | 功能                                                         |
| --------------- | ------------------------------------------------------------ |
| `<leader>` + t  | 在声明/定义间来回跳转 (c和cpp项目，需要导出compile_commands.json文件) |
| `<leader>` + u  | 查看代码引用                                                 |
| `<leader>`+ in  | 函数调用链                                                   |
| `]]`            | 跳转到下一个函数头                                           |
| `][`            | 跳转到下一个函数尾                                           |
| `[[`            | 跳转到上一个函数头                                           |
| `[]`            | 跳转到上一个函数尾                                           |
| gh              | 查看函数签名+注释文档                                        |
| gl              | 查看代码诊断                                                 |
| `<leader>` + rn | 重命名符号                                                   |
| `<space>` + s   | 搜索当前窗口下的符号 (类似vscode的 `@`)                      |
| `<space>` + S   | 搜索项目下的符号 (类似vscode `#`)                            |

## 4. 代码诊断

| 快捷键          | 功能                                |
| --------------- | ----------------------------------- |
| `<leader>` + dj | 下一个错误                          |
| `<leader>`+ dk  | 上一个错误                          |
| `<space>` + Td  | 错误窗口 （类似vscode problem pane) |

## 5. Git操作

| 快捷键          | 功能         |
| --------------- | ------------ |
| `<leader>` + hj | 下一个hunk   |
| `<leader>` + hk | 上一个hunk   |
| `<leader>` + hs | stage hunk   |
| `<leader>` + hu | unstage hunk |
| `<leader>` + hr | reset hunk   |
| `<leader>` + hp | preview hunk |
| `<space>` + gd  | diff file    |
| `<space>` + gf  | file history |
| `<space>` + gg  | 打开lazygit  |

## 6. Debug

| 快捷键          | 功能                                                         |
| --------------- | ------------------------------------------------------------ |
| `<leader>` + db | 开关断点                                                     |
| `<leader>` + dc | 条件断点                                                     |
| `<F5>/<F10>`    | 开始调试/continue                                            |
| `<F4>`          | 结束调试会话                                                 |
| `<F6>`          | stepover                                                     |
| `<F7>`          | stepinto                                                     |
| `<F8>`          | stepout                                                      |
| `<shift>` + k   | 变量悬浮窗（查看cursor下变量的值, 按两次`<shift>`+k使cursor聚焦到悬浮窗) |

## 7. 其他

- cmake： `<space>` + c后，查看which key的提示
- ultest: 单元测试插件， `<space>` + t
- TodoList:  无快捷键，执行 `:TodoTrouble`查看
- LocalHistory： 无快捷键， 执行 `:LocalHistoryToggle`查看
- Lsp svr： `<space>`+li（小l和小i), 查看当前lsp状态， `<space>` + lI(小L和大I)安装lsp svr

# 额外说明

此仓库bin目录下包含如下可执行文件:
- fd          -- telescope依赖
- glow        -- markdown预览依赖
- lazygit     -- git操作
- rg          -- telescope 依赖





# 说明
- 本修改在macos 12 上测试通过
- 对于GNU global gtags 
-  how to build ,   global  and gtags  [https://gist.github.com/alexshgov/7e5ed7841667c66ef5ca4f31664714a9]     (https://gist.github.com/alexshgov/7e5ed7841667c66ef5ca4f31664714a9)
- download  the gloal source code  [https://ftp.gnu.org/pub/gnu/global/](https://ftp.gnu.org/pub/gnu/global/)   




