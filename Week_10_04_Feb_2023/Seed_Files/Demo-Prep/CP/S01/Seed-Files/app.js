const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const productRouter = require("./product/product-router.js");

app.use(bodyParser.json());

app.use(productRouter.productRouter);

app.get("/", (req, res) => {
  res.send("Products Manager App")
})

const PORT = process.env.PORT || 8081
app.listen(PORT,() =>{
  console.log(`Server started on port ${PORT}...`);
});