const express = require('express')
const teams = require('./teams')

const app = express()

app.get('/', (request, response) => {
    response.render('index', { teams })
})
  
app.all('*', (request, response) => {
    return response.sendStatus(404)
})

app.listen(1340, () => {
    console.log('Listening on port 1350...'); //eslint-disable-line no-console
})