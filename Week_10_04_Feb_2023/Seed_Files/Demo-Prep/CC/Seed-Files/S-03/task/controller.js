
const getAllTasks = (req, res) => {

  const allTasks = [
    {id: 1, name : 'Exercises', description: 'Complete all exercise by next week'}, 
    {id: 2, name : 'Do Physical Exercises', description: 'Go to Gym'}, 
  ]

  res.send(allTasks);
}

const getTask = (req, res) => {

}

module.exports = {getAllTasks, getTask};

