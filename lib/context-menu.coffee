module.exports = ->
  atom.contextMenu.add {
    '.tree-view.full-menu .file, .tree-view.full-menu .directory': [
      { type: 'separator'},
      'label': 'Git',
      'submenu': [
        {
          label: 'Git add',
          'command': 'git-plus-context:add'
        },
        {
          label: 'Git add + commit',
          'command': 'git-plus-context:add-and-commit'
        },
        {
          label: 'Git checkout',
          'command': 'git-plus-context:checkout-file'
        },
        {
          label: 'Git diff',
          'command': 'git-plus-context:diff'
        },
        {
          label: 'Git difftool',
          'command': 'git-plus-context:difftool'
        },
        {
          label: 'Git pull',
          'command': 'git-plus-context:pull'
        },
        {
          label: 'Git pull --rebase',
          'command': 'git-plus-context:pull-using-rebase'
        },
        {
          label: 'Git unstage',
          'command': 'git-plus-context:unstage-file'
        }
      ],
      { type: 'separator'}
    ],
    'atom-text-editor:not(.mini)': [
      {
        'label': 'Git add file'
        'command': 'git-plus:add'
      }
    ]
  }
