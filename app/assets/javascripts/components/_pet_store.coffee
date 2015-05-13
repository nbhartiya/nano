window.PetStore = Reflux.createStore

  init: ->
    @state = {}
    @state.name = 'Timky'
    @state.age = 1
    @state.status = 'single'
    @trigger @state

  getInitialState: ->
    @state