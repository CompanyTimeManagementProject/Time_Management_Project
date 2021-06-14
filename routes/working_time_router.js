const {Router} = require('express')
const {workingTimeQueries} = require('./queries/queries')
const {resError, sqlSafeDecorator} = require('../utils/utls')
const workingTimeRouter = Router()
const config = require('../config')

workingTimeRouter.get('/get/:developerId', (req, res) => {
    try {
        const developerId = +req.params.developerId
        const date = req.query.date
        const query = sqlSafeDecorator(workingTimeQueries.getByDate, developerId, date)()

        req.connection.query(
            query,
            (err, result) => {
                if(err)
                    return resError('Can`t get working times', res, err)
                else {
                    return res.end(JSON.stringify(result))
                }
            }
        )
    } catch (err) {
        return resError('Can`t get working times', res, err)
    }
})

module.exports = workingTimeRouter