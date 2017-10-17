describe "Varone Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('varone-dark-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('varone-dark-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('varone-dark-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the tab sizing to be set via config", ->
    atom.config.set('varone-dark-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('theme-varone-dark-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('varone-dark-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-varone-dark-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('varone-dark-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('theme-varone-dark-ui-dock-buttons')).toBe 'hidden'
