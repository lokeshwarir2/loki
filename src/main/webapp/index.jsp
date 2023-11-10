<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCIENTIFIC CALCULATOR</title>
    <link rel="stylesheet" type="text/css"
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
    body {
        padding: 0;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        user-select: none;
        background-color: black;
    }

    .container {
        margin-left: 1.8em;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 13px 13px 20px #cbced1,
            -13px -13px 20px #ffffff;
    }

    .content {
        width: 100%;
        margin-top: 1.7em;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    .row button {
        width: 60px;
        height: 30px;
        font-size: 16px;
        border: none;
        outline: none;
        margin: 5px;
        border-radius: 4px;
        transition: .1s;
        box-shadow: 5px 5px 8px #00000020,
            -5px -5px 8px #ffff;
    }

    .row button:hover {
        box-shadow: inset 5px 5px 8px rgba(16, 16, 16, .1),
            inset -5px -5px 8px #fff;
        background: #fff;
    }

    .display #screen {
        margin-bottom: .5em;
        width: auto;
        height: 70px;
        font-size: 35px;
        outline: none;
        border: none;
        text-align: right;
        padding-right: .5em;
        background: #ecf0f3;
        border-radius: 6px;
        box-shadow: inset 8px 8px 8px #cbced1,
            inset -8px -8px 8px #ffffff;
    }

    #eval {
        background: #33ccff;
        color: #fff;
        box-shadow: inset 5px 5px 8px #66d9ff,
            inset -5px -5px 8px #00ace6;
    }

    #eval:hover {
        box-shadow: inset 5px 5px 8px #00ace6,
            inset -5px -5px 8px #00ace6;
    }

    #ac {
        background: #33cc33;
        color: #fff;
    }

    #ac:hover {
        box-shadow: inset 5px 5px 8px #2eb82e,
            inset -5px -5px 8px #33cc33;
    }

    #ce {
        background: #ff3399;
        color: #fff;
    }

    #ce:hover {
        box-shadow: inset 5px 5px 8px #e60073,
            inset -5px -5px 8px #ff3399;
    }
</style>

<body>
    <div class="container">
        <div class="display">
            <input id="screen" type="text" placeholder="0">
        </div>

        <div class="btns">
            <div class="row">
                <button id="ce" onclick="backspc()">CE</button>
                <button onclick="fact()">x!</button>
                <button class="btn">(</button>
                <button class="btn">)</button>
                <button class="btn">%</button>
                <button id="ac" onclick="screen.value=''">AC</button>
            </div>

            <div class="row">
                <button onclick="sin()">sin()</button>
                <button onclick="pi()">π</button>
                <button class="btn">7</button>
                <button class="btn">8</button>
                <button class="btn">9</button>
                <button class="btn">/</button>
            </div>

            <div class="row">
                <button onclick="cos()">cos()</button>
                <button onclick="log()">log</button>
                <button class="btn">4</button>
                <button class="btn">5</button>
                <button class="btn">6</button>
                <button class="btn">*</button>
            </div>

            <div class="row">
                <button onclick="tan()">tan()</button>
                <button onclick="sqrt()">√</button>
                <button class="btn">1</button>
                <button class="btn">2</button>
                <button class="btn">3</button>
                <button class="btn">-</button>
            </div>

            <div class="row">
                <button onclick="e()">e</button>
                <button onclick="pow()">x <span style="position: relative; bottom: .4em; right: .1em;">y</span>
                </button>
                <button class="btn">0</button>
                <button class="btn">.</button>
                <button id="eval" onclick="screen.value=eval(screen.value)">=</button>
                <button class="btn">+</button>
            </div>
        </div>
    </div>
</body>
<script>
    var screen = document.querySelector('#screen');
    var btn = document.querySelectorAll('.btn');

    /*============ For getting the value of btn, Here we use for loop ============*/
    for (item of btn) {
        item.addEventListener('click', (e) => {
            btntext = e.target.innerText;

            if (btntext == '×') {
                btntext = '*';
            }

            if (btntext == '÷') {
                btntext = '/';
            }
            screen.value += btntext;
        });
    }

    function sin() {
        screen.value = Math.sin(screen.value);
    }

    function cos() {
        screen.value = Math.cos(screen.value);
    }

    function tan() {
        screen.value = Math.tan(screen.value);
    }

    function pow() {
        screen.value = Math.pow(screen.value, 2);
    }

    function sqrt() {
        screen.value = Math.sqrt(screen.value, 2);
    }

    function log() {
        screen.value = Math.log(screen.value);
    }

    function pi() {
        screen.value = 3.14159265359;
    }

    function e() {
        screen.value = 2.71828182846;
    }

    function fact() {
        var i, num, f;
        f = 1
        num = screen.value;
        for (i = 1; i <= num; i++) {
            f = f * i;
        }

        i = i - 1;

        screen.value = f;
    }

    function backspc() {
        screen.value = screen.value.substr(0, screen.value.length - 1);
    }
</script>

</html>
