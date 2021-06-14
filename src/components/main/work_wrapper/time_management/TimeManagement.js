import React from 'react'
import Calendar from 'react-calendar'
import 'react-calendar/dist/Calendar.css'
import * as style from './time_management.module.css'
import CalendarActionsContainer from "./calendar_actions/CalendarActionsContainer";

export default function TimeManagement({actualDate, setActualDate, onClickOnDate, wtDeveloperId}) {


    return <div className={style.tm_main_wrapper}>
        <div>
            <Calendar
                value={actualDate}
                onChange={setActualDate}
                className={style.cal}
                onClickDay={onClickOnDate}
            />
        </div>
        <CalendarActionsContainer
            actualDate={actualDate}
            wtDeveloperId={wtDeveloperId}
        />
    </div>
}