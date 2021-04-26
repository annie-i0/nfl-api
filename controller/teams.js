const teams = require('../teams')

const getAllTeams = (request, response) => {
    return response.send(teams);
};

module.exports(getAllTeams)