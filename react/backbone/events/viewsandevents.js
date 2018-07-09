var TeamModel = Backbone.Model.extend({
  defaults:{
    name: null,
    nickname: null,
    year_founded: null
  },
  // initialize: function(){
  //   console.log(this)
  //   this.listenTo(this, 'click', this.teamClicked)
  // },
  // teamClicked: function(){
  //   console.log('works')
  // }
})
var TeamCollection = Backbone.Collection.extend({
  model: TeamModel
})

var TeamView = Backbone.View.extend({
 tagName: "li",
 template: _.template("<%= name %>"),
 initialize: function(){
   this.listenTo(this.model, 'click', this.teamClicked)
   this.render()
   console.log(this.$el)
 },
 render: function(){
   this.$el.html(this.template(this.model.toJSON()))
   $('#teams').append(this.$el)
   return this
 },
 teamClicked: function(){
    console.log('works')
  }
})

var TeamCollectionView = Backbone.View.extend({
  el: "#teamlist",
  initialize: function(){
    this.render();
  },
  render: function(){
    this.collection.each(function(team){
      var teamview = new TeamView({model: team})
      this.$el.append(teamview.render().$el)
    }, this)
  }
})

var HistoryView = Backbone.View.extend({

})

var team1 = new TeamModel({name:"Leicester City",nickname: "The Foxes",year_founded: 1884})
var team2 = new TeamModel({name: "Arsenal",nickname: "The Gunners",year_founded: 1886})
var team3 = new TeamModel({name: "Manchester United",nickname: "The Red Devils",year_founded: 1878})
var team4 = new TeamModel({name: "Everton",nickname: "The Toffees",year_founded: 1878})
var team5 = new TeamModel({name: "Tottenham Hotspurs",nickname: "Spurs",year_founded: 1872})
var teams = [team1,team2,team3,team4,team5]
var teamlist = new TeamCollection(teams)
var teamlistview = new TeamCollectionView({collection: teamlist})
