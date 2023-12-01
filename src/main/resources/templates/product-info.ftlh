<!DOCTYPE html>
<html>
<head>
    <title>
        NEW STORE
    </title>
</head>
<body>
<h1>NEW STORE</h1><hr>
<h4>Подробная информация о товаре</h4>
<b>Название товара: </b>${product.title}
<b>Описание товара: </b>${product.description}
<b>Цена: </b>${product.price}
<b>Город: </b>${product.city}
<b>Автор: </b>${product.author}
<hr>
<h3>Создать новый товар</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>
