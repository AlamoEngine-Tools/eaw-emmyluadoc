# eaw-emmyluadoc

A lua "script" that documents EaW LUA functions in such a way that [EmmyLua](https://emmylua.github.io) can pick up the hints.

## Installation

This file is designed to work in conjunction with [EmmyLua](https://emmylua.github.io), so to make any use of it,
you should install [EmmyLua](https://emmylua.github.io) for the IDE of you choice.  

[EmmyLua](https://emmylua.github.io) is currently available for:

* IntelliJ IDEA via the [plugin repository](https://plugins.jetbrains.com/plugin/9768-emmylua).
* VSCode as an extension via the [VSCode Marketplace](https://marketplace.visualstudio.com/items?itemName=tangzx.emmylua)
* Sublime Text 3 as an [LSP plugin](https://github.com/EmmyLua/EmmyLua-LanguageServer).
* EMACS as an [LSP client](https://github.com/EmmyLua/EmmyLua-LanguageServer).

For use in your mod you then drop the file `eaw-emmyluadoc.lua` into the `mymod/data/scripts/library` directory.
EmmyLua should automatically pick it up and apply the hints.

> ⚠️ **NOTE**: For VSCode a [LUA Language Server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) supporting EmmyLua annotations has been released. We encourage everyone try this LSP implementation instead of EmmyLua - it provides even more accurate support.
