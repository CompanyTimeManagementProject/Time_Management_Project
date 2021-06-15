const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const mysql = require('mysql2')
const config = require('./config')
const vars = require('./middlewares/vars')
const developersRouter = require('./routes/developers_router')
const projectsRouter = require('./routes/projects_router')
const tasksRouter = require('./routes/tasks_router')
const changingDatesRouter = require('./routes/changing_dates_router')
const notificationsRouter = require('./routes/notification_router')
const path = require('path')
const {notificationsTimer} = require('./utils/utls'),
    jwt = require('jsonwebtoken'),
    users = require('res.json')

const connection = mysql.createConnection({
    host: config.SQL_CONNECTION_HOST,
    user: config.SQL_CONNECTION_USER,
    database: config.SQL_CONNECTION_DATABASE,
    password: config.SQL_CONNECTION_PASSWORD
})

app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "http://localhost:3000")
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")
    next()
})

//Промежуточные слои для парсинга req.body
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

app.use(express.static(path.join(__dirname, 'public')))

app.use(vars(connection))

app.use('/developers', developersRouter)
app.use('/projects', projectsRouter)
app.use('/tasks', tasksRouter)
app.use('/changing_dates', changingDatesRouter)
app.use('/notifications', notificationsRouter)

app.listen(config.PORT, () => {
    connection.connect(err => {
        if (err) console.log(err)
        else {
            console.log('successful')
            notificationsTimer(connection)
        }
    })
})

app.post('/email', function (req, res){
    connection.connect();
    email = req.body.email;
    password = req.body.password;

    if(email && password ) {
        console.log(email);
        console.log(password);
        connection.query('SELECT * FROM developers ',
            function (error, rows, fields) {
                connection.end();
                res.end(JSON.stringify(rows));
            });
    }
});

const tokenKey = '1a2b-3c4d-5e6f-7g8h'

app.use(express.json())
app.use((req, res, next) => {
    if (req.headers.authorization) {
        jwt.verify(
            req.headers.authorization.split(' ')[1],
            tokenKey,
            (err, payload) => {
                if (err) next()
                else if (payload) {
                    for (let user of users) {
                        if (user.id === payload.id) {
                            req.user = user
                            next()
                        }
                    }

                    if (!req.user) next()
                }
            }
        )
    }

    next()
})

app.post('/api/auth', (req, res) => {
    for (let user of users) {
        if (
            req.body.email === user.email &&
            req.body.password === user.password
        ) {
            return res.status(200).json({
                id: user.id,
                email: user.email,
                token: jwt.sign({ id: user.id }, tokenKey),
            })
        }
    }

    return res.status(404).json({ message: 'User not found' })
})

app.get('/user', (req, res) => {
    if (req.user) return res.status(200).json(req.user)
    else
        return res
            .status(401)
            .json({ message: 'Not authorized' })
})
