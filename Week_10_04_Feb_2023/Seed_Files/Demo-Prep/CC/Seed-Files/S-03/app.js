
const express = require("express");

const {taskRouter} = require("./task/router.js");

const app = express();

app.use(taskRouter);

app.get("/", (req, res) => {res.send("Hello")});

const PORT = process.env.PORT || 8081 

app.listen(PORT, () => {
  console.log(`Server started and running at port ${PORT}`);
})
