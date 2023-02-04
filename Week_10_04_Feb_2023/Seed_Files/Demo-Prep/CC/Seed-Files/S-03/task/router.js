
const express = require("express");

// const tasksController = require("./controller.js")

const {getAllTasks, getTask} = require("./controller.js")


const taskRouter = express.Router();

taskRouter.get("/tasks", getAllTasks)
taskRouter.get("/tasks/:taskId", getTask);

module.exports = {taskRouter}

