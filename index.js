const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const mysql = require('mysql2')
const config = require('./config')
const vars = require('./middlewares/vars')
const developersRouter = require('./routes/developers_router')
const notificationsRouter = require('./routes/notification_router')
const path = require('path')
const {notificationsTimer} = require('./utils/utls')

const connection = mysql.createConnection({
    host: config.SQL_CONNECTION_HOST,
    user: config.SQL_CONNECTION_USER,
    database: config.SQL_CONNECTION_DATABASE,
    password: config.SQL_CONNECTION_PASSWORD
})

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "http://localhost:3000")
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")
    next()
})

//Промежуточные слои для парсинга req.body
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use(express.static(path.join(__dirname, 'public')))

app.use(vars(connection))

app.use('/developers', developersRouter)
app.use('/notifications', notificationsRouter)

app.listen(config.PORT, () => {
    connection.connect(err => {
        if(err) console.log(err)
        else {
            console.log('successful')
            notificationsTimer(connection)
        }
    })
})