const workingTimeQuery = {
    getByDate(developerId, date) {
        return `
            select  WT.working_time_id as id,
                    WT.start_time as startTime,
                    WT.end_time as endTime,
                    WT.developer_id as developerId,
                    WT.task_id as taskId,
                    WT.working_time_comment as comment,
                    WT.working_time_status as status,
                    t.task_title as taskTitle
              from  WORKING_TIME WT
              left join tasks t
                on t.task_id = WT.task_id
             where  cast(WT.start_time as date) = ${date} and
                    cast(WT.end_time as date) = ${date} and
                    WT.developer_id = ${developerId}
            ;
        
        `
    },

    addWt(developerId, taskId, startTime, endTime, wtComment) {
        return `
            insert into working_time (
                start_time,
                end_time,
                developer_id,
                task_id,
                working_time_comment
            ) values (
                ${startTime},
                ${endTime},
                ${developerId},
                ${taskId},
                ${wtComment}
            );
        `
    },

    deleteWt(wtId) {
        return `
            delete 
              from  working_time wt
             where  wt.working_time_id = ${wtId}
        `
    },

    changeStatus(wtId, status) {
        return `
            update  working_time
               set  working_time_status = ${status}
             where  working_time_id = ${wtId}
        `
    },

    getWtForCalendar(developerId, monthNumber, yearNumber) {
        return `
            select  day(wt.start_time) as day,
                    month(wt.start_time) as month,
                    year(wt.start_time) as year,
                    wt.working_time_status as status
              from  working_time wt
             where  month(wt.start_time) = ${monthNumber} and
                    month(wt.end_time) = ${monthNumber} and
                    year(wt.start_time) = ${yearNumber} and
                    year(wt.end_time) = ${yearNumber} and
                    wt.developer_id = ${developerId}
            ;
        `
    }
}


module.exports = workingTimeQuery