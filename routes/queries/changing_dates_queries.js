/*
    ************************
    * Объект построения SQL
    * запросов для работы
    * с ИЗМЕНЕНИЯМИ ДАТ РЕЛИЗОВ
    * **********************
 */

const changingDatesQueries = {
    getAll(taskId) {
        return `
                SELECT  * 
                  FROM  changing_dates
                 WHERE  changing_date_task_id = ${taskId}
                ;
            `
    }
}

module.exports = changingDatesQueries