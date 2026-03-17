<?php
include("conexao.php");

$nome = $_POST['nome'];
$tamanho = $_POST['tamanho'];
$cor = $_POST['cor'];
$quantidade = $_POST['quantidade'];

$sql = "INSERT INTO uniforme (nome, tamanho, cor, quantidade)
VALUES ('$nome', '$tamanho', '$cor', '$quantidade')";

if(mysqli_query($conexao, $sql)){
    echo "Uniforme cadastrado com sucesso!";
}else{
    echo "Erro: " . mysqli_error($conexao);
}
?>