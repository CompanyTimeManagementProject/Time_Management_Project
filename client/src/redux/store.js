import {createStore, compose, applyMiddleware, combineReducers} from 'redux'
import thunkMiddleware from 'redux-thunk'

const reducers = combineReducers({

})

// Выбирается функция compose в зависимости от наличия плагина Redux DevTools
const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose
const store = createStore(reducers, composeEnhancers(applyMiddleware(thunkMiddleware)))

export {store}