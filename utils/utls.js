const {putNotification, checkByUnique} = require('../routes/queries/notifications_queries')
const {getDeveloperById} = require('../routes/queries/developers_queries')
const mysql = require('mysql2')

//Функция валидации ошибки при обработке запросов
function resError(errMessage, res, err) {
    console.log(err)
    console.log(errMessage)
    return res.end(JSON.stringify({errMessage}))
}

function changeStringDateToPlus3Hours(stringDate) {
    let datePlus3Hours = (new Date(Date.parse(stringDate) + 1000 * 60 * 60 * 3)).toJSON()
    return datePlus3Hours.replace('T', ' ').replace('Z', '')
}

function notificationsTimer(connection) {
    notificationSender(connection)
    return setInterval(
        () => notificationSender(connection),
        1000 * 60
    )
}

function notificationSender(connection) {
}

function putSingleNotification(sender, content, connection, dyingTask, stringDateNow) {

}


function sqlSafeDecorator(queryConstructorCB, ...args) {
    const escapedArgs = args.map(a => mysql.escape(a))
    return () => queryConstructorCB(...escapedArgs)
}

module.exports = {
    resError,
    changeStringDateToPlus3Hours,
    notificationsTimer,
    sqlSafeDecorator
}