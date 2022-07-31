# skk-vconv.vim

## 概要

https://user-images.githubusercontent.com/28551465/182032599-b443f150-a3f5-4340-9839-822077392c92.mov

SKKで間違えて確定してしまった文字列を後から変換するためのプラグインです。

変換したい確定済み文字列をVisualモードで選択し、`<C-J>`で再変換をかけることができます。

## インストール

### Pykakasiのインストール

```shell
$ pip install pykakasi
$ kakasi
kakasi -h
usage: kakasi [-h] [-v] [-I I] [-O O] [-w] [-r {k,h,p}] [-s] [-S SEPARATOR] [-f] [-C] [-U]
              [-E {a,N}] [-J {a,H,K,N}] [-K {a,H,N}] [-H {a,K,N}] [-a {E,N}]

kakasi implementation on Python
...
```

### [vim plug](https://github.com/junegunn/vim-plug) と [skkeleton](https://github.com/vim-skk/skkeleton) を使う例

```vim
Plug 'Matts966/skk-vconv.vim'
```

全体の設定例は以下にもあります。

https://github.com/Matts966/dotfiles-open/blob/main/.vimrc#L105-L146

## ドキュメント

他のSKKで利用する場合や、より詳しいオプションなどはドキュメントを参照してください。

```vim
:h skk-vconv.vim
```
