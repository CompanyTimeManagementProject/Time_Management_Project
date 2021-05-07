// Форматирование даты
export function dateStringFormat(stringDate) {
    const date = new Date(stringDate)

    const formatter = new Intl.DateTimeFormat("en", {
        year: "numeric",
        month: "long",
        day: "numeric"
    })

    return formatter.format(date)
}

// Форматирование даты и времени
export function dateTimeStringFormat(stringDateTime) {
    const date = new Date(stringDateTime)

    const formatter = new Intl.DateTimeFormat("en", {
        year: "numeric",
        month: "long",
        day: "numeric",
        hour12: false,
        hour: "numeric",
        minute: "numeric"
    })

    return formatter.format(date)
}