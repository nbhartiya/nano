window.PetView = React.createClass
  
  mixins: [
    Reflux.connect(PetStore, 'pet')
  ]

  render: ->
    `<div>
      <div>
        Name: {this.state.pet.name}
      </div>
      <div>
        Status: {this.state.pet.status}
      </div>
    </div>`