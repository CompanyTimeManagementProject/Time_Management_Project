/*
    ************************
    * Объект построения SQL
    * запросов для работы
    * с АЧИВКАМИ
    * **********************
 */

const achieventsQueries = {

  
    getAchieventsByDeveloperId(developerId, page, pagSize) {
        return `
            SELECT  *
              FROM  achievements A
             WHERE  (A.achievement_id in (
                    SELECT  DA.achievement_id
                      FROM  developer_achievements DA
                     WHERE  developer_id = ${developerId}
                )
                LIMIT ${page * pageSize}, ${pageSize}
            ;
        `
    },

    put(title, description, linkIMG) {
        return `
                INSERT INTO achievements (
                        achievement_title,
                        descritpion,
                        linkIMG
                    )
                    VALUES (
                        ${title},
                        ${description},
                        ${linkIMG}
                    )
                ;
            `
    },

    update(achievementId, title, description, linkIMG) {
        return `
                UPDATE achievements
                    SET achievement_title = ${title},
                        descritpion = ${description},
                        linkIMG = ${linkIMG},
                    WHERE achievement_id = ${achievementId}
                ;
            `
    },
    delete(achievementId) {
        return `
                DELETE FROM achievements
                    WHERE   achievement_id = ${achievementId}
                ;
            `
    }


}

module.exports = achieventsQueries