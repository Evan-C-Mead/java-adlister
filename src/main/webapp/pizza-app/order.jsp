<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order a pizza</title>
</head>
<body>

    <h1>Build your pizza</h1>

    <form action="/pizza-order" method="post">
        <div class="container">
            <label for="crust">Crust: </label>
            <select name="crust" id="crust">
                <option value="thin">Thin crust</option>
                <option value="regular">Regular crust</option>
                <option value="deep-dish">Deep-dish crust</option>
            </select>
        </div>

        <div class="container">
            <label for="sauce">Sauce: </label>
            <select name="sauce" id="sauce">
                <option value="marinara">Marinara</option>
                <option value="bbq">BBQ</option>
                <option value="no-sauce">No sauce</option>
            </select>
        </div>

        <div class="container">
            <label for="size">Pizza size: </label>
            <select name="size" id="size">
                <option value="12in">12"</option>
                <option value="16in">16"</option>
                <option value="20in">20"</option>
            </select>
        </div>

        <div class="container">
            <input name="toppings" value="pepperoni" type="checkbox">Pepperoni
            <input name="toppings" value="sausage" type="checkbox">Sausage
            <input name="toppings" value="peppers" type="checkbox">Peppers
            <input name="toppings" value="olives" type="checkbox">Olives
            <input name="toppings" value="onions" type="checkbox">Onions
            <input name="toppings" value="pineapple" type="checkbox">Pineapple
        </div>

        <div class="container">
            <label for="address">Delivery address: </label>
            <input type="text" name="address" id="address">
        </div>

        <br>

        <button type="submit">Submit</button>
        </form>

</body>
</html>
