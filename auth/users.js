var categoryMap = {};
var categories = [];
let rows;
rows.forEach(function(row) {
    var category = categoryMap[row.categoryTitle];
    if (!category) {
        category = {
            categoryTitle: row.categoryTitle,
            categoryIcon: row.categoryIcon,
            subCategory: []
        };

        categoryMap[row.categoryTitle] = category;
        categories.push(category);
    }

    category.subCategory.push({
        subCategoryTitle: row.subCategoryTitle,
        subCategoryIcon: row.subCategoryIcon
    });
});

response.json(categories);