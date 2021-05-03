import React, {useState} from 'react'
import {withRouter} from 'react-router-dom'

function AllNotificationsSide(props) {
    const {
        accessRights,
        notificationsList,
        totalNotificationsCount,
        paginationSize,
        deleteNotification,
        getAllNotifications,
        getAllNotificationsCount,
        putNotification,
        updateNotification,
        match,
        location,
        history,
        getNotificationsCountByDeveloperId,
        getNotificationsByDeveloperId,
        authId
    } = props

    let page = match.params.page ? +match.params.page : 1

    const [loading, setLoading] = useState(false)

    // return <NotificationsSide
    //     accessRights={accessRights}
    //     notificationsList={notificationsList}
    //     totalNotificationsCount={totalNotificationsCount}
    //     paginationSize={paginationSize}
    //     deleteNotification={deleteNotification}
    //     getNotifications={
    //         accessRights
    //             ? () => getAllNotifications(page)
    //             : () => getNotificationsByDeveloperId(authId, page)
    //     }
    //     getNotificationsCount={
    //         accessRights
    //             ? () => getAllNotificationsCount(page)
    //             : () => getNotificationsCountByDeveloperId(authId, page)
    //     }
    //     putNotification={putNotification}
    //     updateNotification={updateNotification}
    //     match={match}
    //     location={location}
    //     history={history}
    //     rootPath={`/notifications/`}
    //     page={page}
    //     loading={loading}
    //     setLoading={setLoading}
    // />
}

export default withRouter(AllNotificationsSide)