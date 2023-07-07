<<<<<<< HEAD
# T.O.C

- [T.O.C](#toc)
  - [Z-Shell Dot Files](#z-shell-dot-files)
    - [Dot File F.A.A.A.Q's](#dot-file-faaaqs)
      - [For me that looks like](#for-me-that-looks-like)
  - [... And other Z-Shell Config files](#-and-other-z-shell-config-files)
    - [To - Do](#to---do)

## Z-Shell Dot Files

The way that I am (trying) to organize my "dot files" is such that each attribute of my z shell environment is broken up into individual files. I think this makes things much more organized, light, and easy to debug.
___
| [zshrc]   | [zAlias]|
| [zPrompt] | [zPath] |  
| [zEnv]    | [zFunk] |
| [zColor]  | [zOther]|  
___

### Dot File F.A.A.A.Q's

1. Why don't you just use Oh-My-ZSH???
  
    a.  OMZ is fun but it requires a lot of attention.

    b.  It is hard to debug with so many different plugins

    c.  If I am going to have to learn a new language, syntax or application, why not learn how to do it myself?

2. This Sucks!
  
    a.  I mean... You're not wrong.

    b.  Help me fix it?

3. But I want to add \[ ::insert module/tool/toy/prompt/repo here:: \]

    a. I am working on a tutori to add [here] but briefly: find the source of the module that you want to add, pull it out and either throw in into your zshrc or keep it in your "ZDOTDIR".

#### For me that looks like

~ Making sure I tell ZSH where the config files are.

``` bash
printf "%s\n" 'export ZDOTDIR="${HOME}/.config/zsh/"'| sudo tee /etc/zsh/zshenv
```

Also making sure that the directory exists.

```bash
mkdir -p $HOME/.config/zsh
```

...and that I get there.

```bash
cd $_
```

Clone my files over

```bash
git clone https://github.com/phive151/ZDOTDIR
and copy all the files then burn the rest 
        🔥🔥🔥🔥🚒👨‍🚒
```

Well... copy them prior to 451℉

```bash

cp ./ZDOTDIR/* ./
```

Now...

```bash
rm -rfi ./ZDOTDIR
Burn it ALL!!!
        🔥🔥🔥🔥🚒👨‍🚒
```

... and finally symbolically link your zshrc
to a '.zshrc' so zsh can find it.

```bash
ln -srf ./zshrc ./.zshrc
```

## ... And other Z-Shell Config files

Eventually I will have all of my portable config files in here.

[zshrc]: /zshrc
[zAlias]: /zAlias
[zFunk]: /zFunk
[zEnv]: /zEnv
[zPath]: /zPath
[zPrompt]: /zPrompt
[zColor]: /zColor
[zOther]: #toc
[here]: #to---do

### To - Do

_**Coming Soon...**_
=======
# T.O.C

- [T.O.C](#toc)
  - [Z-Shell Dot Files](#z-shell-dot-files)
    - [Dot File F.A.A.A.Q's](#dot-file-faaaqs)
      - [For me that looks like](#for-me-that-looks-like)
  - [... And other Z-Shell Config files](#-and-other-z-shell-config-files)
    - [To - Do](#to---do)

## Z-Shell Dot Files

The way that I am (trying) to organize my "dot files" is such that each attribute of my z shell environment is broken up into individual files. I think this makes things much more organized, light, and easy to debug.
___
| [zshrc]   | [zAlias]|
| [zPrompt] | [zPath] |  
| [zEnv]    | [zFunk] |
| [zColor]  | [zOther]|  
___

### Dot File F.A.A.A.Q's

1. Why don't you just use Oh-My-ZSH???
  
    a.  OMZ is fun but it requires a lot of attention.

    b.  It is hard to debug with so many different plugins

    c.  If I am going to have to learn a new language, syntax or application, why not learn how to do it myself?

2. This Sucks!
  
    a.  I mean... You're not wrong.

    b.  Help me fix it?

3. But I want to add \[ ::insert module/tool/toy/prompt/repo here:: \]

    a. I am working on a tutori to add [here] but briefly: find the source of the module that you want to add, pull it out and either throw in into your zshrc or keep it in your "ZDOTDIR".

#### For me that looks like

~ Making sure I tell ZSH where the config files are.

``` bash
printf "%s\n" 'export ZDOTDIR="${HOME}/.config/zsh/"'| sudo tee /etc/zsh/zshenv
```

Also making sure that the directory exists.

```bash
mkdir -p $HOME/.config/zsh
```

...and that I get there.

```bash
cd $_
```

Clone my files over

```bash
git clone https://github.com/phive151/ZDOTDIR
and copy all the files then burn the rest 
        🔥🔥🔥🔥🚒👨‍🚒
```

Well... copy them prior to 451℉

```bash

cp ./ZDOTDIR/* ./
```

Now...

```bash
rm -rfi ./ZDOTDIR
Burn it ALL!!!
        🔥🔥🔥🔥🚒👨‍🚒
```

... and finally symbolically link your zshrc
to a '.zshrc' so zsh can find it.

```bash
ln -srf ./zshrc ./.zshrc
```

## ... And other Z-Shell Config files

Eventually I will have all of my portable config files in here.

[zshrc]: /zshrc
[zAlias]: /zAlias
[zFunk]: /zFunk
[zEnv]: /zEnv
[zPath]: /zPath
[zPrompt]: /zPrompt
[zColor]: /zColor
[zOther]: #toc
[here]: #to---do

### To - Do

_**Coming Soon...**_
>>>>>>> 06ecc68 (On branch TestingU)
