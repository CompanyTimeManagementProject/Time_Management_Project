import React from 'react'
import * as style from '../../time_management.module.css'
import {timeStringFormat} from "../../../../../utils/formats";


export default function SingleTime({startTime, endTime, comment, taskTitle}) {

    return <div className={style.wt_container}>
            <div className={style.time_container}>
                <span>{timeStringFormat(startTime)} - {timeStringFormat(endTime)}</span>
            </div>
            <p className={style.comment}>
                {comment && comment.length > 0 ? comment : 'No comment'}
            </p>
            <p className={style.comment}>
                Task: {taskTitle}
            </p>
            <button className='primary-btn'>
                Delete
            </button>
            <div className={style.wt_item_container}>
                <button className='primary-btn'>
                    Confirm
                </button>
                <button className='primary-btn'>
                    Reject
                </button>
            </div>
        </div>
}