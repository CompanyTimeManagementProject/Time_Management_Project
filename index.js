const express = require('express')
const app = express()
const mysql = require('mysql2')
const config = require('./config')
const vars = require('./middlewares/vars')
const path = require('path')


const connection = mysql.createConnection({
    host: config.SQL_CONNECTION_HOST,
    user: config.SQL_CONNECTION_USER,
    database: config.SQL_CONNECTION_DATABASE,
    password: config.SQL_CONNECTION_PASSWORD
})

app.use(express.static(path.join(__dirname, 'public')))

//Установка объекта подключения к базе в объект req
app.use(vars(connection))

app.listen(config.PORT, () => {
    connection.connect(err => {
        if(err) console.log(err)
        else {
            console.log('successful')
            //notificationsTimer(connection)
        }
    })
})