<!DOCTYPE html>
<html>
<head>
    <title>
        NEW STORE
    </title>
</head>
<body>
<h1>NEW STORE</h1><hr>
<h4>Товары со всего Кыргызстана</h4>
<#list products as product>
    <div>
        <p>
            <b>
                ${product.title}
            </b>
            ${product.price} руб. | <a href="/product/"${product.id}>Подробнее...</a>
        </p>
    </div>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    Название объявления: <input type="text" name="title"/><br><br>
    Описание объявления: <input type="text" name="title"/><br><br>
    Цена: <input type="number" name="title"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    Имя: <input type="text" name="author"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>