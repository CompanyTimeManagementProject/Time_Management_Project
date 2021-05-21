const {Router} = require('express')
const {achieventsQueries} = require('./queries/queries')
const multer = require('multer')
const {resError, sqlSafeDecorator} = require('../utils/utls')
const achieventsRouter = Router()
const config = require('../config')

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
                    return resError('Can`t get achievemets by developer id', res, err)
                else {
                    return res.end(JSON.stringify(result))
                }
            }
        )
    } catch (err) {
        return resError('Can`t get achievemets by developer id', res, err)
    }
})

achieventsRouter.get('/get', (req, res) => {
	try {
		const page = +req.query.page
        const pagSize = +req.query.pagSize
        const query = sqlSafeDecorator(achieventsQueries.getAll, page, pagSize)()
        req.connection.query(
            query,
            (err, result) => {
                if(err)
                    return resError('Can`t get achievemets', res, err)
                else {
                    return res.end(JSON.stringify(result))
                }
            }
        )
    } catch (err) {
        return resError('Can`t get achievemets', res, err)
    }

})

achieventsRouter.get('/delete/:achieventsId', (req, res) => {
    try {
        const achieventsId = +req.params.achieventsId
        const query = sqlSafeDecorator(achieventsQueries.delete, achieventsId)()

        req.connection.query(
            query,
            (err) => err
                ? resError('Сouldn\'t delete achievemet', res, err)
                : res.end()
        )
    } catch (err) {
        return resError('Сouldn\'t delete achievemet', res, err)
    }
})

achieventsRouter.post('/update/:achieventsId', (req, res) => {
    try {
        const achieventsId = +req.params.achieventsId
        const imagePath = req.file.path.replace(/public./, '').replace(/\\/, '/').replace(/\\/, '/')

        req.connection.query(
                sqlSafeDecorator(
                    achieventsQueries.update,
                    achieventsId,
                    req.body.title,
                    req.body.description,
                    `http://localhost:${config.PORT}/` + imagePath
                )(),
                (err) => err
                    ? resError('Failed to update achievemet', res, err)
                    : res.end()
            )

    } catch (err) {
        return resError('Сouldn\'t update achievemet', res, err)
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
                ? resError('Failed to put achievemet', res, err)
                : res.end()
        )
    } catch (err) {
        return resError('Failed to put achievemet', res, err)
    }
})

module.exports = achieventsRouter