import React from 'react'
import {useFormik} from 'formik'
import * as Yup from 'yup'
import * as style from './task_participants_add_form.module.css'

export default function TaskParticipantsAddForm({onSubmitAddDeveloper}) {

    const formik = useFormik({
        initialValues: {
            developerEmail: ''
        },
        validationSchema: Yup.object({
            developerEmail: Yup.string().required('Fill out required field')
        }),
        onSubmit(values) {
            onSubmitAddDeveloper(values)
        }
    })

    return <form onSubmit={formik.handleSubmit} className={style.add_form}>
        <input
            type='email'
            id='developerEmail'
            {...formik.getFieldProps('developerEmail')}
            placeholder='Add by email'
            autoComplete='off'
        />
        <button type='submit' className='primary-btn'>Add&nbsp;developer</button>
    </form>
}

