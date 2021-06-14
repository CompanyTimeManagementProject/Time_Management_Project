import {workingTimeAPI} from '../../api'
import {successResponseCondition} from '../utils'

const SET_WORKING_TIMES_LIST = 'SET_WORKING_TIMES_LIST'

const defaultState = {
    workingTimeList: []
}
export default function workingTimeReducer(state = defaultState, action) {
    switch (action.type) {
        case(SET_WORKING_TIMES_LIST): {
            return {
                ...state,
                workingTimeList: action.workingTimeList
            }
        }
        default: {
            return state
        }
    }
}

export function setWorkingTimeList(workingTimeList) {
    return {
        type: SET_WORKING_TIMES_LIST,
        workingTimeList
    }
}

export function getWorkingTimeFromServByDeveloperIdAndDate(developerId, date) {
    return async dispatch => {
        const response = await workingTimeAPI.getByDeveloperIdAndDates(developerId, date)
        if(successResponseCondition(response.status, response.data.errMessage)) {
            return response.data
        } else {
            return Promise.reject(new Error(response.data.errMessage))
        }
    }
}