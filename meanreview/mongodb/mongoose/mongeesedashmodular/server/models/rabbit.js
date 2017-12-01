var mongoose = require('mongoose');
var RabbitSchema = new mongoose.Schema({
  name: {type: String,
         required: [true, "name must be greater than 3 characters"],
         minlength: 3},
  babies: {type: Number,
          required: [true, "number of babies must be a number"]},
  size: {type: String,
         required: [true, "size must be greater than 3 characters"],
         minlength: 3}
})
mongoose.model('Rabbit', RabbitSchema);
var Rabbit = mongoose.model('Rabbit');
