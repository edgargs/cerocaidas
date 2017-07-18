<html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Home Page</title>
    <style>
#contenedor{
	margin: 10px auto;
	width: 540px;
	height: 115px;
}
.reloj{
	float: left;
	font-size: 80px;
	font-family: Courier,sans-serif;
	color: #363431;
}    
    </style>
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>¡Desde el &uacute;ltimo registro!</h1>
        <input id="lastTime" value="${lastTime}" style="visibility:hidden"/>
    </section>
</div>

    <div id="contenedor">
		<div class="reloj" id="Horas">00</div>
		<div class="reloj" id="Minutos">:00</div>
		<div class="reloj" id="Segundos">:00</div>
	</div>
    
    <script>
var centesimas = 0;
var segundos = 0;
var minutos = 0;
var horas = 0;
var difTime=0
function inicio () {
    horas = Math.floor(difTime/(60*60));
    minutos = Math.floor((difTime%(60*60))/60);
    segundos = (difTime%(60*60))%60;
    
    if (segundos < 10) { segundos = "0"+segundos }
    Segundos.innerHTML = ":"+segundos;
    if (minutos < 10) { minutos = "0"+minutos }
    Minutos.innerHTML = ":"+minutos;
    if (horas < 10) { horas = "0"+horas }
    Horas.innerHTML = horas;
    
	control = setInterval(cronometro,1000);
}
function cronometro () {
    if (centesimas == 0) {
		segundos ++;
		if (segundos < 10) { segundos = "0"+segundos }
		Segundos.innerHTML = ":"+segundos;
	}
	if (segundos == 59) {
		segundos = -1;
	}
	if ( (centesimas == 0)&&(segundos == 0) ) {
		minutos++;
		if (minutos < 10) { minutos = "0"+minutos }
		Minutos.innerHTML = ":"+minutos;
	}
	if (minutos == 59) {
		minutos = -1;
	}
	if ( (centesimas == 0)&&(segundos == 0)&&(minutos == 0) ) {
		horas ++;
		if (horas < 10) { horas = "0"+horas }
		Horas.innerHTML = horas;
	}
}    

function loadTime() {
    nowTime = Math.round(new Date().getTime()/1000.0) 
    console.log("nowTime:"+nowTime)
    mylastTime = eval(document.getElementById("lastTime").value);
    console.log("mylastTime:"+mylastTime)
    difTime = nowTime-mylastTime
    console.log("difTime:"+difTime)
    
    inicio();
}

loadTime();

    </script>
</body>
</html>