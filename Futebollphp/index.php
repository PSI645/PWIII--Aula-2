<?php include("conexao.php"); ?>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Uniforme</title>

    <style>
        body{
            font-family: Arial;
            background-color: #f4f4f4;
        }

        .container{
            width: 400px;
            margin: auto;
            margin-top: 80px;
            background: white;
            padding: 20px;
            border-radius: 5px;
        }

        input{
            width: 100%;
            padding: 8px;
            margin: 5px 0 10px 0;
        }

        button{
            padding: 10px;
            background: #007BFF;
            color: white;
            border: none;
            width: 100%;
        }

        button:hover{
            background: #0056b3;
        }
    </style>

</head>
<body>

<div class="container">
<h2>Cadastro de Uniforme</h2>

<form method="POST" action="salvar.php">

<label>Nome do uniforme</label>
<input type="text" name="nome" required>

<label>Tamanho</label>
<input type="text" name="tamanho" required>

<label>Cor</label>
<input type="text" name="cor" required>

<label>Quantidade</label>
<input type="number" name="quantidade" required>

<button type="submit">Cadastrar</button>

</form>
</div>

</body>
</html>