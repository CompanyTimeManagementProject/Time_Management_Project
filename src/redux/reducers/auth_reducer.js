

const SET_AUTH_ID = 'SET_AUTH_ID'

const defaultState = {
    authId: null
}

export default function authReducer(state = defaultState, action) {
    switch (action.type) {
        case (SET_AUTH_ID): {
            return {
                ...state,
                authId: action.authId
            }
        }
        default: {
            return state
        }
    }
}

function setAuthId(authId) {
    return {
        type: SET_AUTH_ID,
        authId
    }
}