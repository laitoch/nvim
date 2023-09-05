## Spellcheck

When enabled, neovim will spellcheck comments/strings but not code.
To enable:
```
:set spell
```
Vim commands for spellcheck:
```
]s - move to next misspelled word
[s - move to previous misspelled word
z= - show spelling suggestions
zg - add word to dictionary
zw - mark word as wrong
```
Integration with other plugins:
  - whichkey will show spelling suggestions for the current word in the whichkey popup when you press `z=` instead of
    opening a new window.


## Markdown
### Markdown Preview
iamcco/markdown-preview.nvim
  - most popular with 5.1k stars
  - preview in browser

Commands:
```
" Start the preview
:MarkdownPreview

" Stop the preview"
:MarkdownPreviewStop
```
### Glow
ellisonleao/glow.nvim
  - preview in terminal directly
### Headlines
lukas-reineke/headlines.nvim
  - show some more info when editing the markdown code.
### TreeSitter
install `markdown` and `markdown_inline`

### LSP: Marksman
Not for me - I don't use such fancy markdown features.

## Caveats

### Bad colorshemes

I had a bad experience with https://github.com/nvimdev/zephyr-nvim. The color scheme destroyed color highlighting for neotest and for spelunker.

### Bad symbols

I couldn't get headlines to work with iTerm. Switching to kitty did the trick. I wonder what was wrong.
## Other
###  Dressing
Makes for a nicer rename via LSP.
