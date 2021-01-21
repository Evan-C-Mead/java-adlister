<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess a number</title>
</head>
<body>

    <h1>Pick a number:</h1>

    <form action="guess" method="post">
        <div class="container">
            <label for="num">Your number: </label>
            <select name="num" id="num">
                <option value="1">One - 1</option>
                <option value="2">Two - 2</option>
                <option value="3">Three - 3</option>
            </select>
        </div>

        <br>

        <button type="submit">Submit</button>
    </form>

</body>
</html>
