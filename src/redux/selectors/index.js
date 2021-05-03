export const authIdSelector = (state) => state.auth.authId

export const isAdminSelector = (state) => state.auth.isAdmin

export const totalNotificationsCountSelector = (state) => state.notifications.totalNotificationsCount

export const notificationsListSelector = (state) => state.notifications.notificationsList

export const notificationsPaginationSize = (state) => state.notifications.paginationSize
