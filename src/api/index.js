import axios from 'axios'
import cryptoJS from 'crypto-js'
const request = axios.create({ baseURL: 'http://localhost:9000/' })

const secretKey = 'I want to live in alaska'
const keyForPasswords = 'Hello from Australia'

export const developersAPI = {
    getAuth(email, pass) {
        const hashPass = encodeURIComponent(cryptoJS.AES.encrypt(pass, keyForPasswords).toString())
        const url = `developers/get_auth`

        return request.post(url, {
            email: email,
            password: hashPass
        })
    }
}

export const notificationsAPI = {

    getAllNotifications(page, pagSize) {
        const url = `notifications/get_all?page=${page - 1}&pagSize=${pagSize}`
        return request.get(url)
    },

    getDevelopersNotifications(developerId, page, pagSize) {
        const url = `notifications/get_by_developer/${developerId}?page=${page - 1}&pagSize=${pagSize}`
        return request.get(url)
    },

    getAllNotificationsCount() {
        const url = 'notifications/all_count'
        return request.get(url)
    },

    getDevelopersNotificationsCount(developerId) {
        const url = `notifications/count_by_developer/${developerId}`
        return request.get(url)
    },

    getNotificationsByTaskId(taskId, page, pagSize) {
        const url = `notifications/get/${taskId}?page=${page - 1}&pagSize=${pagSize}`
        return request.get(url)
    },

    getNotificationsCountByTaskId(taskId) {
        const url = `notifications/count/${taskId}`
        return request.get(url)
    },

    deleteNotification(notificationId) {
        const url = `notifications/delete/${notificationId}`
        return request.get(url)
    },

    putNotification(sender, content, date, taskId) {
        const url = `notifications/put_notification`
        return request.post(url, {
            sender,
            content,
            date,
            taskId
        })
    },

    updateNotification(notificationId, content) {
        const url = `notifications/update_notification/${notificationId}`
        return request.post(url, { content })
    }
}