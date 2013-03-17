## About
[InteractiveReplace] is a [Vim] plugin that lets you interactively choose replacement text while you search/replace.

## Usage
Just type

    :InteractiveReplace

at the Vim console, or type the shortcut binding in normal mode:

     <leader>r

(on my system that's `\r`).

## Install
Assuming you have [Git] and [Pathogen] installed, which you should, just run:

     $ git clone https://github.com/hwrod/interactive-replace.git ~/.vim/bundle/interactive-replace

Optionally, to configure a different key binding, add this line to your *.vimrc* file:

    let g:InteractiveReplace_map = 'X'

where *X* is something like &lt;F5&gt; or \i

## Examples

Say you wanted to find and replace all occurrences of *Bel-air* in a text file, but you wanted to specify what the replacement text is each time without having to redo a substitution or create a very complicated regex.

With a search performed (e.g. `/Bel-air`), type `\r` to bring up InteractiveReplace. Then for each highlighted term, type the replacement text and press `Enter`.

#### Easy consecutive substitutions
![InteractiveReplace](http://www.planetharold.com/projects/interactive-replace/interactive-replace-1.png)

----------------

In a programming context, you can easily substitute variable names stemming from one `o`pened line.

For example, to write out a skeleton for your replaces, you could type (with the cursor on line 6):

     7odrawChart data.tmp[Esc]

to get:

![InteractiveReplace](http://www.planetharold.com/projects/interactive-replace/interactive-replace-2.png)

Now use InteractiveReplace on `/tmp` to sequentially replace variable names:

![InteractiveReplace](http://www.planetharold.com/projects/interactive-replace/interactive-replace-3.png)

In this way, Interactive-Replace works like a block-select that lets you choose replacement text for each line.
## F.A.Q.
* How do I install Pathogen?
     * Just put [pathogen.vim] into your ~/.vim/autoload folder. Then put these two lines in your *.vimrc* file: 
        * filetype plugin indent on
        * execute pathogen#infect()
* How do I install InteractiveReplace without using Pathogen?
     * If you wanna be really dirty about it, download the [zipball] and extract the contents to your Vim directory.
* How do I update InteractiveReplace?
    * The beauty of installing with Pathogen is that you `cd` into `~/.vim/bundle/interactive-replace/` and type `$ git pull` to get the latest updates.

## Todo

There are a few ways InteractiveReplace can be improved, including:

* allowing `Enter` to skip replace (make no change)
* highlighting the current search term in a different color
* if nothing's in the `/` register, ask user for a search term

Pull requests are highly encouraged. Questions/comments [welcome] too.

[InteractiveReplace]:http://github.com/hwrod/interactive-replace/
[zipball]:https://github.com/hwrod/interactive-replace/zipball/master
[Pathogen]:http://github.com/tpope/vim-pathogen/
[pathogen.vim]:https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
[Vim]:http://www.vim.org
[Git]:http://git-scm.com
[welcome]:mailto:harold@planetharold.com
