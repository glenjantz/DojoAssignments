var PersonModel = Backbone.Model.extend({
  defaults:{
    name: null
  }
});

var StackModel = Backbone.Model.extend({
  defaults:{
    name: null,
    language: null
  }
})

var StackView = Backbone.View.extend({
  tagName: 'li',
  template: _.template("<h2><%= language %></h2>"),
  initialize: function(){
    this.render();
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    $('#stacks').append(this.$el)
  }

})
var PersonView = Backbone.View.extend({
  tagName: 'li',
  template: _.template("<h1><%= name %></h1>"),
  initialize: function(){
    this.render();
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    $('#people').append(this.$el);
    return this;
  }
});

var barry = new PersonModel({name: 'Barry'});
var barry2 = new PersonModel({name: 'Barry2'});
var barry3 = new PersonModel({name: 'Barry3'});
var barry4 = new PersonModel({name: 'Barry4'});
var barry5 = new PersonModel({name: 'Barry5'});
var personView1 = new PersonView({model: barry});
var personView2 = new PersonView({model: barry2});
var personView3 = new PersonView({model: barry3});
var personView4 = new PersonView({model: barry4});
var personView5 = new PersonView({model: barry5});
var stack1 = new StackModel({name: 'stack1',language: "Ruby"});
var stack2 = new StackModel({name: 'stack2', language: "JS"});
var stack3 = new StackModel({name: 'stack3', language: "SWIFT"});
var stack4 = new StackModel({name: 'stack4', language: "Python"});
var stack5 = new StackModel({name: 'stack5', language: "Java"});
var stackView1 = new StackView({model: stack1});
var stackView2 = new StackView({model: stack2});
var stackView3 = new StackView({model: stack3});
var stackView4 = new StackView({model: stack4});
var stackView5 = new StackView({model: stack5});
