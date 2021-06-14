import React from 'react'
import * as style from '../time_management.module.css'
import SingleTimeContainer from './single_time/SingleTimeContainer'
import {dateToDateStringWithoutPlus} from "../../../../utils/formats";
import AddWtFormContainer from "./add_wt_form/AddWtFormContainer";

export default function CalendarActions({wtlist, actualDate, wtDeveloperId}) {
    return <div className={style.cal_act_wrapper}>
        <h1 className={style.date}>{dateToDateStringWithoutPlus(actualDate)}</h1>
        <div className={style.wt_single_item_wrapper}>
            {
                wtlist.map(wt => <SingleTimeContainer
                    wt={wt}
                />)
            }
        </div>
        <button className={'primary-btn'}>
            Add
        </button>
        <AddWtFormContainer
            developerId={wtDeveloperId}
        />
    </div>
}