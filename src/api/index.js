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
