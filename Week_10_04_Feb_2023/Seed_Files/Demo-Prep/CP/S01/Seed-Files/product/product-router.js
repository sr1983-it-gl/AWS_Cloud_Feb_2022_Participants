
const express = require("express");

const {getAllProducts, getProduct, createProduct, updateProduct, deleteProduct} = require("./product-controller.js");

const productRouter = express.Router();

productRouter.get('/api/products',getAllProducts);
productRouter.get('/api/products/:id', getProduct);
productRouter.post('/api/products',createProduct);
productRouter.put('/api/products/:id', updateProduct);
productRouter.delete('/api/products/:id', deleteProduct);

module.exports = {productRouter};