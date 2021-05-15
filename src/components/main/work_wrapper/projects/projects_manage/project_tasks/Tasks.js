import React from 'react'
import {Route} from 'react-router-dom'
import AllTasks from './all_tasks/AllTasksSide'

export default function Tasks(props) {
    const {
        totalTasksCount,
        tasksList,
        tasksPagSize,
        actualTask,
        getTotalTasksCount,
        deleteTask,
        getSingleTask,
        getTasks,
        updateTask,
        authId,
        deleteChangingDate,
        getChangingDates,
        putChangingDate,
        updateChangingDate,
        changingDatesList,
        projectAccessRights,
        getDevelopersTasks,
        getTotalDevelopersTasksCount
    } = props

    function returnTaskAccessRights(actualTask, authId) {
        const taskLeadId = actualTask ? +actualTask.task_lead_id : null
        return projectAccessRights || taskLeadId === +authId
    }

    return (
        <div>
            <Route
                path={`/single_project/:id?/tasks/all_tasks/:page?`}
                render={() => <AllTasks
                    tasksList={tasksList}
                    pagSize={tasksPagSize}
                    totalTasksCount={totalTasksCount}
                    getTasks={
                        projectAccessRights
                            ? getTasks
                            : (projectId, page, title) => getDevelopersTasks(projectId, page, authId, title)
                    }
                    getTotalTasksCount={
                        projectAccessRights
                            ? getTotalTasksCount
                            : (projectId, title) => getTotalDevelopersTasksCount(projectId, authId, title)
                    }
                    accessRights={projectAccessRights}
                />}
            />
            <Route
                path={`/single_project/:id?/tasks/single_task/:task_id?`}
                render={() => <div></div>}
            />
        </div>
    )
}