window.PetView = React.createClass

  mixins: [
    Reflux.connect(PetStore, 'pet')
  ]

  feed: ->
    PetActions.feed(@state.food)

  kill: ->
    PetActions.kill()

  onFoodChange: (e) ->
    @setState food: e.target.value

  render: ->
    `<div>
      <div>
        diet: {this.state.pet.eatsOnly}
      </div>
      <div>
        Name: {this.state.pet.name}
      </div>
      <div>
        Status: {this.state.pet.status}
      </div>
      <div>
        Fed: {this.state.pet.fed ? 'Fed and happy' : 'Unfed and lonely'}
      </div>
      <div>
        <button onClick={this.feed} >Feed {this.state.pet.name} with {this.state.food}</button> with:
        <input value={this.state.food} onChange={this.onFoodChange} />
      </div>

      <button onClick={this.kill} >KILL {this.state.pet.name}</button>

    </div>`