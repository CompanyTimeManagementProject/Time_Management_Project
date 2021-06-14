import React, {useEffect, useState} from 'react'
import {connect} from "react-redux";
import {getAllDevelopersTasks} from '../../../../../../redux/reducers/tasks_reducer'
import {getSingleDeveloperById} from '../../../../../../redux/reducers/developers_reducer'
import AddWtForm from "./AddWtForm";
import * as Yup from "yup";

function AddWtFormContainer({
                                developerId, getAllDevelopersTasks,
                                getSingleDeveloperById
}) {

    const [tasksByDeveloper, setTasksByDeveloper] = useState([])

    function onSubmit(values) {
        console.log(values)
    }

    const initialValues = {
        startTime: '',
        endTime: '',
        wtDescription: '',
        tasks: ''
    }

    const validationSchema = Yup.object({
        startTime: Yup.string().required('Fill out the required field'),
        endTime: Yup.string().required('Fill out the required field'),
        wtDescription: Yup.string().required('Fill out the required field'),
        tasks: Yup.string().required('Fill out the required field')
    })


    useEffect(() => {
        getSingleDeveloperById(developerId)
            .then(d => getAllDevelopersTasks(developerId, d.developer_is_admin))
            .then(tasks => setTasksByDeveloper(tasks))
            .catch(err => {
                console.log(err)
                alert(err.message)
            })
    }, [])

    return <AddWtForm
        tasks={tasksByDeveloper}
        initialValues={initialValues}
        onSubmit={onSubmit}
        validationSchema={validationSchema}
    />
}

function mapStateToProps(state) {
    return {}
}
export default connect(mapStateToProps, {
    getAllDevelopersTasks,
    getSingleDeveloperById
})(AddWtFormContainer)