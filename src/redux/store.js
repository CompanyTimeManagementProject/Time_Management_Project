import {createStore, compose, applyMiddleware, combineReducers} from 'redux'
import thunkMiddleware from 'redux-thunk'
import authReducer from './reducers/auth_reducer'

const reducers = combineReducers({
    auth: authReducer
})

// Выбирается функция compose в зависимости от наличия плагина Redux DevTools
const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose
const store = createStore(reducers, composeEnhancers(applyMiddleware(thunkMiddleware)))

export {store}