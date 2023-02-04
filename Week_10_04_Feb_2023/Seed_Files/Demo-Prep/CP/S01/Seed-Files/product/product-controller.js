
const {connection} = require("../db.js");

const getAllProducts = (req, res) => {

  getAllProductsDB(req, res);

  // getAllProductsLocal(req, res);
}

const getAllProductsLocal = (req, res) => {

  const allProducts = [
    {id: 1, name : 'Product-1', description: 'Product-1'}, 
    {id: 2, name : 'Product-2', description: 'Product-2'}, 
  ]
  
  res.send(allProducts);

}

const getAllProductsDB = (req, res) => {
  
  let sqlQuery = "SELECT * FROM products";
  
  let query = connection.query(sqlQuery, (err, results) => {
    if(err) throw err;
    res.send(apiResponse(results));
  });  
}

const getProduct = (req, res) => {

  let sqlQuery = "SELECT * FROM products WHERE id=" + req.params.id;
    
  let query = connection.query(sqlQuery, (err, results) => {
    if(err) throw err;
    res.send(apiResponse(results));
  });

}

const createProduct = (req, res) => {

  let data = {name: req.body.name, description: req.body.description};
  
  let sqlQuery = "INSERT INTO products SET ?";
  
  let query = connection.query(sqlQuery, data,(err, results) => {
    if(err) throw err;
    res.send(apiResponse(results));
  });

}


const updateProduct = (req, res) => {

  let sqlQuery = "UPDATE products SET name='"+req.body.name+"', description='"+req.body.description+"' WHERE id="+req.params.id;
  
  let query = connection.query(sqlQuery, (err, results) => {
    if(err) throw err;
    res.send(apiResponse(results));
  });

}

const deleteProduct = (req, res) => {

  let sqlQuery = "DELETE FROM products WHERE id="+req.params.id+"";
    
  let query = connection.query(sqlQuery, (err, results) => {
    if(err) throw err;
      res.send(apiResponse(results));
  }); 
}


function apiResponse(results){

  return {"status": 200, "error": null, "response": results};

  // return JSON.stringify({"status": 200, "error": null, "response": results});
}

module.exports = {getAllProducts, getProduct, createProduct, updateProduct, deleteProduct }