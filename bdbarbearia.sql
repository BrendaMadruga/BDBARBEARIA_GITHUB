-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2023 às 19:33
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdbarbearia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbatendimento`
--

CREATE TABLE `tbatendimento` (
  `codatendimento` int(11) NOT NULL,
  `dataatendimento` varchar(10) DEFAULT NULL,
  `horaatendimento` varchar(10) DEFAULT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codbarbeiro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbatendimento`
--

INSERT INTO `tbatendimento` (`codatendimento`, `dataatendimento`, `horaatendimento`, `codcliente`, `codbarbeiro`) VALUES
(1, '23/09/2000', '00:00', NULL, NULL),
(2, '21/10/2023', '09:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbbarbeiro`
--

CREATE TABLE `tbbarbeiro` (
  `codbarbeiro` int(11) NOT NULL,
  `nomebarbeiro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbbarbeiro`
--

INSERT INTO `tbbarbeiro` (`codbarbeiro`, `nomebarbeiro`) VALUES
(1, 'Chão Mendez'),
(3, 'Chão Mendiz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `codcliente` int(11) NOT NULL,
  `nomecli` varchar(70) NOT NULL,
  `telefonecli` char(10) DEFAULT NULL,
  `celularcli` char(11) NOT NULL,
  `emailcli` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbcliente`
--

INSERT INTO `tbcliente` (`codcliente`, `nomecli`, `telefonecli`, `celularcli`, `emailcli`) VALUES
(1, 'Shaolin o matador de porco', 'telefone', 'celular', 'email'),
(2, 'Manjiro Sano Bonten', 'telefone', 'celular', 'email'),
(3, 'Manjiro Sano Bonten', 'telefone', 'celular', 'email'),
(4, 'Pedrin o Careca', 'telefone', 'celular', 'email');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbatendimento`
--
ALTER TABLE `tbatendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codbarbeiro` (`codbarbeiro`);

--
-- Índices de tabela `tbbarbeiro`
--
ALTER TABLE `tbbarbeiro`
  ADD PRIMARY KEY (`codbarbeiro`);

--
-- Índices de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbatendimento`
--
ALTER TABLE `tbatendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbbarbeiro`
--
ALTER TABLE `tbbarbeiro`
  MODIFY `codbarbeiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbatendimento`
--
ALTER TABLE `tbatendimento`
  ADD CONSTRAINT `tbatendimento_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `tbcliente` (`codcliente`),
  ADD CONSTRAINT `tbatendimento_ibfk_2` FOREIGN KEY (`codbarbeiro`) REFERENCES `tbbarbeiro` (`codbarbeiro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
