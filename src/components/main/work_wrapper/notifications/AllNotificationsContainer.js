import {connect} from 'react-redux'
import * as selectors from '../../../../redux/selectors'
import AllNotificationsSide from './AllNotificationsSide'
import {
    deleteNotification,
    getAllNotifications,
    getAllNotificationsCount,
    putNotification,
    updateNotification,
    getNotificationsCountByDeveloperId,
    getNotificationsByDeveloperId
} from '../../../../redux/reducers/notification_reducer'


function mapStateToProps(state) {
    return {
        accessRights: selectors.isAdminSelector(state),
        notificationsList: selectors.notificationsListSelector(state),
        totalNotificationsCount: selectors.totalNotificationsCountSelector(state),
        paginationSize: selectors.notificationsPaginationSize(state),
        authId: selectors.authIdSelector(state)
    }
}

export default connect(mapStateToProps, {

    deleteNotification,
    getAllNotifications,
    getAllNotificationsCount,
    putNotification,
    updateNotification,
    getNotificationsCountByDeveloperId,
    getNotificationsByDeveloperId

})(AllNotificationsSide)