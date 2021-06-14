import React, {useState} from 'react'
import {connect} from 'react-redux'
import TimeManagement from './TimeManagement'
import {getWorkingTimeFromServByDeveloperIdAndDate, setWorkingTimeList} from '../../../../redux/reducers/working_time_requcer'
import {authIdSelector} from '../../../../redux/selectors'


function TimeManagementContainer({
                                     getWorkingTimeFromServByDeveloperIdAndDate, authId, setWorkingTimeList
}) {

    const [actualDate, setActualDate] = useState(new Date())
    const [wtDeveloperId, setWtDeveloperId] = useState(authId)

    function onClickOnDate(date, event) {
        getWorkingTimeFromServByDeveloperIdAndDate(wtDeveloperId, date)
            .then(response => setWorkingTimeList(response))
            .catch(err => {
                console.log(err)
                alert(err.message)
            })
    }

    return <TimeManagement
        actualDate={actualDate}
        setActualDate={setActualDate}
        onClickOnDate={onClickOnDate}
        wtDeveloperId={wtDeveloperId}
    />
}

function mapStateToProps(state) {
    return {
        authId: authIdSelector(state)
    }
}

export default connect(mapStateToProps, {
    getWorkingTimeFromServByDeveloperIdAndDate,
    setWorkingTimeList
})(TimeManagementContainer)