const {Router} = require('express')
const {achievementsQueries} = require('./queries/queries')
const {resError, sqlSafeDecorator} = require('../utils/utls')
const achievementsRouter = Router()
const config = require('../config')
const multer = require('multer')

const storage = multer.diskStorage({
    destination(req, file, cb) {
        cb(null, './public/ach_img/')
    },
    filename(req, file, cb) {
        cb(null, file.originalname)
    }
})
const upload = multer({storage})

achievementsRouter.get('/get_by_developer/:developer_id', (req, res) => {
    try {
        const developerId = +req.params.developer_id
        const page = +req.query.page
        const pagSize = +req.query.pagSize
        const query = sqlSafeDecorator(achievementsQueries.getAchievementsByDeveloperId, developerId, page, pagSize)()

        req.connection.query(
            query,
            (err, result) => {
                if(err)
                    return resError('Can`t get achievements by developer id', res, err)
                else {
                    return res.end(JSON.stringify(result))
                }
            }
        )
    } catch (err) {
        return resError('Can`t get achievements by developer id', res, err)
    }
})

achievementsRouter.get('/get', (req, res) => {
	try {
		const page = +req.query.page
        const pagSize = +req.query.pagSize
        const query = sqlSafeDecorator(achievementsQueries.getAll, page, pagSize)()
        req.connection.query(
            query,
            (err, result) => {
                if(err)
                    return resError('Can`t get achievements', res, err)
                else {
                    return res.end(JSON.stringify(result))
                }
            }
        )
    } catch (err) {
        return resError('Can`t get achievements', res, err)
    }

})

achievementsRouter.get('/delete/:achievementsId', (req, res) => {
    try {
        const achieventsId = +req.params.achievementsId
        const query = sqlSafeDecorator(achievementsQueries.delete, achieventsId)()

        req.connection.query(
            query,
            (err) => err
                ? resError('Сouldn\'t delete achievement', res, err)
                : res.end()
        )
    } catch (err) {
        return resError('Сouldn\'t delete achievement', res, err)
    }
})

achievementsRouter.post('/update/:achievementsId', upload.single('image'), (req, res) => {
    try {
        
        const achievementsId = +req.params.achieventsId
        const imagePath = req.file.path.replace(/public./, '').replace(/\\/, '/').replace(/\\/, '/')

        req.connection.query(
                sqlSafeDecorator(
                    achievementsQueries.update,
                    achievementsId,
                    req.body.title,
                    req.body.description,
                    `http://localhost:${config.PORT}/` + imagePath
                )(),
                (err) => err
                    ? resError('Failed to update achievement', res, err)
                    : res.end()
            )

    } catch (err) {
        return resError('Сouldn\'t update achievement', res, err)
    }
})

achievementsRouter.post('/put',  upload.single('image'), (req, res) => {
    try {
        const achievementData = req.body
        const imagePath = req.file.path.replace(/public./, '').replace(/\\/, '/').replace(/\\/, '/')

        req.connection.query(
            sqlSafeDecorator(
                achievementsQueries.put,
                achievementData.title,
                achievementData.description,
                `http://localhost:${config.PORT}/` + imagePath
            )(),
            (err) => err
                ? resError('Failed to put achievement', res, err)
                : res.end()
        )
    } catch (err) {
        return resError('Failed to put achievement', res, err)
    }
})

module.exports = achievementsRouter