const teams = require('../teams')

const getAllTeams = (request, response) => {
    return response.send(teams)
}

const getTeamById = (request, response) => {
    const { id } = request.params
    const teamById = teams.filter((team) => team.id === parseInt(id))
    return response.send(teamById)

}

const saveNewNFL = (request, response) => {
    const { id, location, mascot, abbreviation, conference, division } = request.body;

    if (!id || !location|| !mascot || !abbreviation || !conference || !division) {
        return response.status(400).send('The following fields are required: id, location, mascot, abbreviation, conference, division');
    }

    const newNFL = { id, location, mascot, abbreviation, conference, division };
    teams.push(newNFL);
    return response.status(201).send(newNFL);
}

module.exports= { getAllTeams, getTeamById, saveNewNFL }