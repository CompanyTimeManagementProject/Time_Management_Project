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
            SELECT  A.achievement_id, A.achievement_title, A.descritpion, A.linkIMG
            FROM achievements A
            INNER JOIN developer_achievements DA
            ON A.achievement_id = DA.achievement_id
            INNER JOIN developers D
            ON D.developer_id = DA.developer_id
            WHERE D.developer_id=${developerId}
            group by A.achievement_id
            LIMIT ${page * pageSize}, ${pageSize}
            ;
        `
    },

    getAll(page, pageSize) {
        return `
                SELECT  * 
                  FROM  achievements
                ORDER BY  title
                LIMIT   ${page * pageSize}, ${pageSize}
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