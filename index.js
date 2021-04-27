const express = require('express')
const bodyParser = require('body-parser');
const teams = require('./teams')
const { getAllTeams, getTeamById, saveNewNFL } = require('./controller/teams')

const app = express()

app.get('/', getAllTeams)

app.get('/teams/:id', getTeamById) 

app.post('/', bodyParser.json(), saveNewNFL);
  
app.all('*', (request, response) => {
    return response.sendStatus(404)
})

app.listen(1340, () => {
    console.log('Listening on port 1340...'); //eslint-disable-line no-console
})