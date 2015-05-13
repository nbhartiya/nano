window.PetActions = Reflux.createActions [
  'feed'
  'kill'
]

window.PetStore = Reflux.createStore
  init: ->
    @listenToMany PetActions
    @greenAlien = {}
    @getPet()

  getInitialState: ->
    @greenAlien

  onFeed: (food) ->
    @greenAlien.lastMeal = food
    @greenAlien.fed = true if @greenAlien.eatsOnly == food
    @trigger @greenAlien
    @savePet()

  onKill: ->
    @greenAlien.alive = false
    @trigger @greenAlien
    @savePet()

  savePet: ->
    $.ajax
      url: '/update'
      data:
        pet: @greenAlien
      method: 'PUT'
      dataType: 'JSON'
    .done (data) ->
      alert "YO"

  getPet: ->
    $.ajax
      url: '/show'
      method: 'GET'
      dataType: 'JSON'
    .done (data) =>
      @greenAlien = data.pet
      @trigger @greenAlien