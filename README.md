# Neovim

<p>My Neovim settings with the plugins I use everyday. Feel free to try them!<p>
 
<h2> Index </h2>
<p><a href="#Instalation">
  Instalation
</a></p>
<p><a href="#Plugins">
  Plugins
</a></p>
<p><a href="#Sc">
  Shortcuts
</a></p>
  
<h2> Preview </h2>
<img src="https://cdn.discordapp.com/attachments/461563270411714561/979895728753221703/123.gif" width="1000" height="450">
  
<h2 id="Instalation">Instalation</h2>

```bash
git -C ~/ clone https://github.com/benmaia/nvim.git
```

```bash
cd ~/nvim && ./install.sh -y
```

<p> The <code>./install.sh</code> will install neovim and all the nvim plugins.</p>

<h2 id="Plugins">Plugins</h2>
<p> The content of the script that will be downloaded and installed is: </p>
<ul>
  <li>Update and Upgrade of the system</li>
  <li>Neovim</li>
  <li>Curl </li>
  <li>Plug Vim <a href="https://github.com/junegunn/vim-plug" target="_blank">here</a></li>
  <li>Pop Up <a href="https://github.com/nvim-lua/popup.nvim" target="_blank">here</a></li>
  <li>Plenary <a href="https://github.com/nvim-lua/plenary.nvim" target="_blank">here</a></li>
  <li>42 Header <a href="https://github.com/42Paris/42header" target="_blank">here</a></li>
  <li>42 Norminette V3 <a href="https://github.com/42School/norminette" target="_blank">here</a></li>
  <li>Vim-Norminette <a href="https://github.com/alexandregv/norminette-vim" target="_blank">here</a></li>
  <li>Telescope <a href="https://github.com/nvim-telescope/telescope.nvim" target="_blank">here</a></li>
  <li>Vim Fugitive <a href="https://github.com/tpope/vim-fugitiveset" target="_blank">here</a></li>
  <li>NERDTree <a href="https://github.com/preservim/nerdtree" target="_blank">here</a></li>
  <li>NERDTree Git <a href="https://github.com/Xuyuanp/nerdtree-git-plugin" target="_blank">here</a></li>
  <li>Vim Devicons <a href="https://github.com/ryanoasis/vim-devicons" target="_blank">here</a></li>
  <li>Nvim Web Devicons <a href="https://github.com/kyazdani42/nvim-web-devicons" target="_blank">here</a></li>
  <li>Colorscheme Two Firewatch [costum] <a href="https://github.com/rakr/vim-two-firewatch" target="_blank">here</a></li>
  <li>NERD Commenter <a href="https://github.com/preservim/nerdcommenter" target="_blank">here</a></li>
  <li>Lualine <a href="https://github.com/vim-airline/vim-airline" target="_blank">here</a></li>
  <li>Cmp <a href="https://github.com/hrsh7th/nvim-cmp" target="_blank">here</a></li>
  <li>Luasnipets <a href="https://github.com/saadparwaiz1/cmp_luasnip" target="_blank">here</a></li>
  <li>Nerd Font <a href="https://github.com/ryanoasis/nerd-fonts" target="_blank">here</a></li>
  <li>LSP <a href="https://github.com/neovim/nvim-lspconfig" target="_blank">here</a></li>
  <li>Tree Sitter <a href="https://github.com/nvim-treesitter/nvim-treesitter" target="_blank">here</a></li>
  <li>Terminal Toggle <a href="https://github.com/akinsho/toggleterm.nvim" target="_blank">here</a></li>
  <li>Autopairs <a href="https://github.com/windwp/nvim-autopairs" target="_blank">here</a></li>
  <li>Transparent Terminal <a href="https://github.com/xiyaowong/nvim-transparent" target="_blank">here</a></li>
  <li>Bufferline <a href="https://github.com/akinsho/bufferline.nvim" target="_blank">here</a></li>
</ul>

<h2 id="Sc">Shortcuts</h2>
<p> This are some shortcuts to use inside VIM. Feel free to change the shortcuts, but this are some of that come configure and I think they are pretty usefull!</p>
<ul>
  <li> CTRL b - Open Nerd Tree </li>
  <ul>
    <li> SHIFT c - to change root to the selected folder </li>
    <li> SHIFT u - to go one dir back </li>
    <li> t - open the file in another tab</li>
    <li> s - open the file and split the screen verticaly</li>
    <li> i - open the file and split the screen horizontaly</li>
    <li> m - opens a menu to add, delete, move, copy, etc a file</li>
    <li> ? to opens a menu with all the commands possible </li>
  </ul>
  <li> CTRL arrow key - to move through windows</li>
  <li> ALT left/right - to move through tabs</li>
  <li> ALT j - open and close terminal</li>
  <li> q - to close a window</li>
  <li> Telescope </li>
  <ul>
    <li> CTRL f - telescope file finder</li>
    <li> CTRL g - telescope word grep</li>
    <li> CTRL t - open file in new tab</li>
    <li> CTRL v - open file in a vertical split</li>
    <li> CTRL x - open file in a horizontal split</li>
  </ul>
  <li> CTRL n - to use norminette</li>
  <li> :Sub [word] [replace] - it replaces all the [word] in the file to the [replace], case sensitive, and only replace an entire word, and not fractions, ex: <code>:Sub Hello Hi</code></li>
  <li> :Git [command] - does evey command git inside vim, check <a href="https://github.com/tpope/vim-fugitiveset" target="_blank">here</a></li>
</ul>
<p> Other VIM commands that alreayd com configure that are really usefull, I'm still learning new ones!</p>
<ul>
  <li> SHIFT v - select an entire line and you can select more then 1 line</li>
  <li> CTRL v - selects the place you have your cursor in multiple rows, so you can write once, and appear in all lines selected at the same position </li>
  <li> vap - selects all the paragraph</li>
  <li> vaw - selects the word where your cursor is </li>
  <li> y - yarn or copy </li>
  <li> yy - yarn or copy the entire line </li>
  <li> p - paste </li>
  <li> dd - deletes all the line, and copies it </li>
  <li> dap - deletes all the paragraph and copies it </li>
  <li> daw - deletes the word where your cursor is </li>
</ul>
<ul>

<p> Like I said, I'm still learning new commands, if you know other ones that are really usefull please tell me, I want to incorporate them!</p>
  
<p> Here are some plugins working </p>
<h3> Auto Complete + Documentation + Errors</h3>
<img src="https://cdn.discordapp.com/attachments/461563270411714561/979897972336754788/234.gif" width="1000" height="450">
<h3> Telescope </h3>
<img src="https://cdn.discordapp.com/attachments/461563270411714561/979896525490634802/45.gif" width="1000" height="450">
<h3> NERDTree </h3>
<img src="https://cdn.discordapp.com/attachments/461563270411714561/979899163984666684/Screencast_from_28-05-2022_01_06_08.gif" width="1000" height="450">

