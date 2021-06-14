import React from 'react'
import {connect} from 'react-redux'
import SingleTime from './SingleTime'

function SingleTimeContainer({wt}) {
    return <SingleTime
        comment={wt.comment}
        endTime={wt.endTime}
        startTime={wt.startTime}
        taskTitle={wt.taskId}
    />
}

function mapStateToProps(state) {
    return {}
}

export default connect(mapStateToProps, {

})(SingleTimeContainer)