

## How to manage using vim native package manager

### Adding a package

Here is an example of how to add a package using Vim’s native approach to packages and git submodules.

```
cd ~/.vim
git submodule init
git submodule add https://github.com/vim-airline/vim-airline.git pack/xxxx/start/vim-airline
git add .gitmodules pack/hugh/start/vim-airline
git commit
```

### Updating packages

To update packages is also just a case of updating git submodules.

```
git submodule update --remote --merge
git commit
```

### Move the location of a submodule

1. ``git mv path/to/old path/to/new``

2. ``open .gitmodules`` and change ``[submodule ""]`` line to reflect the new location.

3. open the ``.git/config`` and change the ``[submodule ""]`` line to reflect the new location.

4. ```cd .git/modules``` and move the submodule from its relative old location to the new one.

5. go to the new location of the submodule and update the ``gitdir`` in ``.git`` file to point to the new location.



### Remove a package


Removing a package is just a case of removing the git submodule.

```
git submodule deinit pack/xxxx/start/vim-airline
git rm pack/xxxx/start/vim-airline
rm -Rf .git/modules/pack/xxxx/start/vim-airline
git commit
```
