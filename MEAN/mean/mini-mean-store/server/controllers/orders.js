var mongoose = require('mongoose');
var Order = mongoose.model('Order');
var Product = mongoose.model('Product');
console.log('orders controller');
module.exports = {
  //find all orders with the users and products
  index: function(req, res){
    Order.find({}).populate('_user').populate('_product').exec(function (err, orders) {
          if (err) {
              console.log(err);
          }
          else {
              res.json(orders);
          }
      });
  },
  //add a new order
  create: function(req,res){
     let order = new Order({qty: req.body.qty});
      order._user = req.body._user;
      order._product = req.body._product
      order.save(function (err) {
                 if(err){
                   res.json(err)
                 }else{
                   res.json(order)
                 }
      })
      // Product.find({_id: req.body._product}, function(err, product){
      //   if(err){
      //     console.log(err)
      //   }else{
      //    if((product.qtyleft - parseInt(req.body.qty)) >=  0){
      //       product.qtyleft = product.qtyleft - parseInt(req.body.qty);
      //       product.save(function(err){
      //         if(err){
      //           console.log(err)
      //         }else{
      //           order.save(function (err) {
      //             if(err){
      //               res.json(err)
      //             }else{
      //               res.json(order)
      //             }
      //           })
      //         }
      //       })
      //     }
      //     else{
      //       res.json({error: "not enough stock to order this qty"})
      //     }
      //   }
      //
      // })

    }
}
