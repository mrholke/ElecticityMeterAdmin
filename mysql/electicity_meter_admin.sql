{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.9.5\
-- https://www.phpmyadmin.net/\
--\
-- Host: localhost:8889\
-- Erstellungszeit: 03. Jan 2021 um 16:00\
-- Server-Version: 5.7.30\
-- PHP-Version: 7.4.9\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Datenbank: `electicity_meter_admin`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Tabellenstruktur f\'fcr Tabelle `T0001_COUNTER`\
--\
\
CREATE TABLE `T0001_COUNTER` (\
  `id` int(10) UNSIGNED NOT NULL,\
  `counter_nr` varchar(255) NOT NULL,\
  `counter_descr` varchar(255) DEFAULT NULL,\
  `costs_kwh` decimal(10,0) NOT NULL,\
  `crt_date` date NOT NULL,\
  `mod_date` int(11) NOT NULL,\
  `crt_by` varchar(255) DEFAULT NULL,\
  `mod_by` varchar(255) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Tabellenstruktur f\'fcr Tabelle `T0002_COUNTER_READING`\
--\
\
CREATE TABLE `T0002_COUNTER_READING` (\
  `id` int(11) NOT NULL,\
  `fk_counter` int(11) NOT NULL,\
  `counter_reading` varchar(255) DEFAULT NULL,\
  `crt_date` date NOT NULL,\
  `mod_date` date NOT NULL,\
  `crt_by` varchar(255) DEFAULT NULL,\
  `mod_by` varchar(255) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Indizes der exportierten Tabellen\
--\
\
--\
-- Indizes f\'fcr die Tabelle `T0001_COUNTER`\
--\
ALTER TABLE `T0001_COUNTER`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Indizes f\'fcr die Tabelle `T0002_COUNTER_READING`\
--\
ALTER TABLE `T0002_COUNTER_READING`\
  ADD PRIMARY KEY (`id`);\
}