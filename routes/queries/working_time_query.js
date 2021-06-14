const workingTimeQuery = {
    getByDate(developerId, date) {
        console.log(developerId)
        console.log(date)
        return `
            select  working_time_id as id,
                    start_time as startTime,
                            end_time as endTime,
                            developer_id as developerId,
                            task_id as taskId,
                            working_time_comment as comment
                      from  WORKING_TIME WT
                     where  cast(start_time as date) = ${date} and
                            cast(end_time as date) = ${date} and
                            developer_id = ${developerId}
                    ;
        
        `
    }
}

module.exports = workingTimeQuery