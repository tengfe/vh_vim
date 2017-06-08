# vh_vim
只适用于linux平台的个人vim配置方案，包含少量插件与solarized配色方案.  
主要用于C/C++与Python环境, \<leader\>设置为 ',' .  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/main.png)  


## 安装说明  
提供shell脚本方便简单安装  
```
git clone https://github.com/vHtQ18W/vh_vim.git ~/.vh_vim
cd ~/.vh_vim
sh install.sh
```
  
## 自定义设置  
添加插件，修改vimrc，添加需要的插件  
```
Plugin 'Plugin Path'
```
## 部分效果展示  
C++程序显示效果  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/c%2B%2B_example(folly).png)  
  
Python程序显示效果  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/py_example.png)




## 插件介绍  
### [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)  
这可能是vim最好用的自动补全插件，提供强大的字义、函数补全.  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/YCM_example.png)  
#### 注意：
使用Vundle进行安装后，需要进入bundle路径下对YouCompleteMe进行build  
```
cd ~/.vim/bundle/YouComplete/
./install.py --clang-completer
```
如需添加其他语言的补全，请参照[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)的详细说明.  
  
### [NERDTree](https://github.com/scrooloose/nerdtree)
NERDTree提供可定义显示文件类型的树形目录结构侧栏  
  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/Nerdtree_example.png)  
  
使用\<leader\>+n 打开NERDTree.  

### [undotree](https://github.com/mbbill/undotree)  
undotree提供类似git的快速回退文档版本功能，并提供每次修改的内容差异比较.  
  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/undotree_example.png)  
  
使用\<leader>\>+u 打开undotree.  
  
### [tagbar](https://github.com/majutsushi/tagbar)  
以tag为基础，提供便于使用的侧边栏.  
  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/tagbar_example.png)   
  
使用\<leader\>+t 打开tagbar.  
  
### [ctrlp](https://github.com/kien/ctrlp.vim)  
匹配路径的强大文件搜索功能.  
![images](https://github.com/vHtQ18W/vh_vim/blob/master/images/ctrlp_example.png)  
  
## 配色方案  
提供[solarized](https://github.com/altercation/solarized)  
