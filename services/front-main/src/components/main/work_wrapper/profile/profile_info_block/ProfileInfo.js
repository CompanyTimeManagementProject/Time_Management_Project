import React from 'react'
import {dateStringFormat} from '../../../../utils/formats'
import * as style from '../profile.module.css'

export default function ProfileInfo({profileInformation}) {
    return (
        <div className={style.text_info}>
            <p className={style.full_name}>
                <b>{profileInformation.name} {profileInformation.surname} {profileInformation.patronymic}</b>
            </p>
            <p className={style.specialty}>
                {profileInformation.position} {profileInformation.specialty}
            </p>
            <p>

                Date of birth: <b>{
                profileInformation.birth
                    ? dateStringFormat(profileInformation.birth)
                    : null
            }</b>
            </p>
            <p>
                Email: <b>{profileInformation.email}</b>
            </p>
        </div>
    )
}