const {Router} = require('express')
const {achieventsQueries} = require('./queries/queries')
const multer = require('multer')
const {resError, sqlSafeDecorator} = require('../utils/utls')
const achieventsRouter = Router()

achieventsRouter.get('/get_by_developer/:developer_id', (req, res) => {
    try {
        const developerId = +req.params.developer_id
        const page = +req.query.page
        const pagSize = +req.query.pagSize
        const query = sqlSafeDecorator(achieventsQueries.getAchieventsByDeveloperId, developerId, page, pagSize)()

        req.connection.query(
            query,
            (err, result) => {
                if(err)
                    return resError('Can`t get achievents by developer id', res, err)
                else {
                    return res.end(JSON.stringify(result))
                }
            }
        )
    } catch (err) {
        return resError('Can`t get achievents by developer id', res, err)
    }
})

achieventsRouter.get('/delete/:achieventsId', (req, res) => {
    try {
        const achieventsId = +req.params.achieventsId
        const query = sqlSafeDecorator(achieventsQueries.delete, achieventsId)()

        req.connection.query(
            query,
            (err) => err
                ? resError('Сouldn\'t delete achievent', res, err)
                : res.end()
        )
    } catch (err) {
        return resError('Сouldn\'t delete achievent', res, err)
    }
})

achieventsRouter.post('/update/:achieventsId', (req, res) => {
    try {
        const achieventsId = +req.params.achieventsId

        req.connection.query(
                sqlSafeDecorator(
                    achieventsQueries.update,
                    achieventsId,
                    req.body.title,
                    req.body.description,
                    req.body.linkIMG
                )(),
                (err) => err
                    ? resError('Failed to update achievent', res, err)
                    : res.end()
            )

    } catch (err) {
        return resError('Сouldn\'t update achievent', res, err)
    }
})

achieventsRouter.post('/put', (req, res) => {
    try {
        const achieventData = req.body
        req.connection.query(
            sqlSafeDecorator(
                achieventsQueries.put,
                achieventData.title,
                achieventData.description,
                developerData.linkIMG
            )(),
            (err) => err
                ? resError('Failed to put achievent', res, err)
                : res.end()
        )
    } catch (err) {
        return resError('Failed to put achievent', res, err)
    }
})

module.exports = achieventsRouter