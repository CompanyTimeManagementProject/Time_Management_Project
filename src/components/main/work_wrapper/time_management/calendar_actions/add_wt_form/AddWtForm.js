import React from 'react'
import {useFormik} from "formik";


export default function AddWtForm({initialValues, validationSchema, onSubmit}) {
    const formik = useFormik({
        initialValues: initialValues,
        onSubmit: onSubmit,
        validationSchema: validationSchema
    })

    return <form action="">

    </form>
}