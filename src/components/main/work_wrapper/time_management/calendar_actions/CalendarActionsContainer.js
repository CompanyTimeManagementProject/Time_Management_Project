import React from 'react'
import {connect} from 'react-redux'
import CalendarActions from './CalendarActions'
import {workingTimeListSelector} from "../../../../../redux/selectors";


function CalendarActionsContainer({wtlist, actualDate}) {

    return <CalendarActions
        wtlist={wtlist}
        actualDate={actualDate}
    />
}

function mapStateToProps(state) {
    return {
        wtlist: workingTimeListSelector(state)
    }
}
export default connect(mapStateToProps, {

})(CalendarActionsContainer)