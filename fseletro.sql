-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Out-2020 às 19:48
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `nome_cliente` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` int(11) NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `valor_unitario` float NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `nome_cliente`, `endereco`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(1, 'Fabiana Sousa', 'Rua A, 455', 999998888, 'Geladeira Frost Free Brastemp Side Inverse 540L', 501900, 1, 501900),
(2, 'Florisvaldo Gregório', 'Rua B, 1768', 222223333, 'Lavadoura de Roupas Brastemp 15k branca', 217990, 1, 217990),
(3, 'Geralda Silva', 'Av C, 6789', 34567890, 'Lavadoura de Roupas Philco Inverter\r\n\r\n', 217990, 2, 435980),
(4, 'Renato Russo', 'Travessa D, 5678', 32234556, 'Lava-louça Eletrolux Inox com 10 serviços, 06 Programas de Lavagem e Painel Blue Touch\r\n', 279990, 0, 279990),
(5, 'Cazuza', 'Av E, 2345', 98765432, 'Forno de Microondas Eletrolux 20L Branco\r\n', 112900, 1, 112900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540L', '638900.00', '501900.00', 'imagens/geladeiraprata.jpeg'),
(2, 'geladeira', 'Geladeira Frost Free Brastemp Branca 375 Litros', '206860.00', '191090.00', 'imagens/geladeira.jpeg'),
(3, 'geladeira', 'Geladeira Frost Free Consul Prata 340 Litros', '219900.00', '206900.00', 'imagens/geladeiraprata2.png'),
(4, 'fogao', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', '129900.00', '112900.00', 'imagens/FogãoPequeno.jpeg'),
(5, 'fogao', 'Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático', '60000.00', '51970.00', 'imagens/fogão.jpeg'),
(6, 'microondas', 'Micro-ondas Consul 32 Litros inox 220V', '58000.00', '40988.00', 'imagens/micro.jpeg'),
(7, 'microondas', 'Microondas 25L Espelhado Philco 220V', '50870.00', '46453.00', 'imagens/micro2.jpeg'),
(8, 'microondas', 'Forno de Microondas Eletrolux 20L\r\nBranco', '129900.00', '112900.00', 'imagens/microondas.jpeg'),
(9, 'lavalouca', 'Lava-louça Eletrolux Inox com 10 serviços, 06 Programas de Lavagem e Painel Blue Touch\r\n', '359900.00', '279990.00', 'imagens/lavalouça1.jpeg'),
(10, 'lavalouca', 'Lava Louça Compacta, 8 Serviços Branca 127V Brastemp', '197050.00', '173061.00', 'imagens/lavalouça2.jpeg'),
(11, 'lavaroupa', 'Lavadoura de Roupas Philco Inverter', '2399.00', '21799.00', 'imagens/secadora.jpeg'),
(12, 'lavaroupa', 'Lavadoura de Roupas Brastemp 15k branca', '2399.00', '21799.00', 'imagens/lavadora.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD UNIQUE KEY `imagem` (`imagem`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
