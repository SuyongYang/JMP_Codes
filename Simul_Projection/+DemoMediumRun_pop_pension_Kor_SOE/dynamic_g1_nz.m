function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(311, 2, 'int32');
  nzij_pred(1,1)=49; nzij_pred(1,2)=1;
  nzij_pred(2,1)=49; nzij_pred(2,2)=2;
  nzij_pred(3,1)=8; nzij_pred(3,2)=3;
  nzij_pred(4,1)=9; nzij_pred(4,2)=3;
  nzij_pred(5,1)=42; nzij_pred(5,2)=3;
  nzij_pred(6,1)=43; nzij_pred(6,2)=3;
  nzij_pred(7,1)=49; nzij_pred(7,2)=3;
  nzij_pred(8,1)=56; nzij_pred(8,2)=3;
  nzij_pred(9,1)=4; nzij_pred(9,2)=5;
  nzij_pred(10,1)=49; nzij_pred(10,2)=6;
  nzij_pred(11,1)=58; nzij_pred(11,2)=7;
  nzij_pred(12,1)=59; nzij_pred(12,2)=7;
  nzij_pred(13,1)=42; nzij_pred(13,2)=8;
  nzij_pred(14,1)=43; nzij_pred(14,2)=9;
  nzij_pred(15,1)=33; nzij_pred(15,2)=10;
  nzij_pred(16,1)=28; nzij_pred(16,2)=16;
  nzij_pred(17,1)=35; nzij_pred(17,2)=17;
  nzij_pred(18,1)=3; nzij_pred(18,2)=25;
  nzij_pred(19,1)=6; nzij_pred(19,2)=25;
  nzij_pred(20,1)=13; nzij_pred(20,2)=25;
  nzij_pred(21,1)=19; nzij_pred(21,2)=25;
  nzij_pred(22,1)=20; nzij_pred(22,2)=25;
  nzij_pred(23,1)=35; nzij_pred(23,2)=25;
  nzij_pred(24,1)=13; nzij_pred(24,2)=26;
  nzij_pred(25,1)=17; nzij_pred(25,2)=26;
  nzij_pred(26,1)=18; nzij_pred(26,2)=26;
  nzij_pred(27,1)=20; nzij_pred(27,2)=26;
  nzij_pred(28,1)=21; nzij_pred(28,2)=26;
  nzij_pred(29,1)=22; nzij_pred(29,2)=26;
  nzij_pred(30,1)=35; nzij_pred(30,2)=26;
  nzij_pred(31,1)=28; nzij_pred(31,2)=27;
  nzij_pred(32,1)=73; nzij_pred(32,2)=27;
  nzij_pred(33,1)=28; nzij_pred(33,2)=28;
  nzij_pred(34,1)=58; nzij_pred(34,2)=28;
  nzij_pred(35,1)=5; nzij_pred(35,2)=29;
  nzij_pred(36,1)=28; nzij_pred(36,2)=29;
  nzij_pred(37,1)=9; nzij_pred(37,2)=33;
  nzij_pred(38,1)=46; nzij_pred(38,2)=33;
  nzij_pred(39,1)=56; nzij_pred(39,2)=33;
  nzij_pred(40,1)=8; nzij_pred(40,2)=34;
  nzij_pred(41,1)=47; nzij_pred(41,2)=34;
  nzij_pred(42,1)=56; nzij_pred(42,2)=34;
  nzij_pred(43,1)=27; nzij_pred(43,2)=37;
  nzij_pred(44,1)=28; nzij_pred(44,2)=37;
  nzij_pred(45,1)=25; nzij_pred(45,2)=38;
  nzij_pred(46,1)=26; nzij_pred(46,2)=38;
  nzij_pred(47,1)=28; nzij_pred(47,2)=38;
  nzij_pred(48,1)=49; nzij_pred(48,2)=38;
  nzij_pred(49,1)=51; nzij_pred(49,2)=38;
  nzij_pred(50,1)=74; nzij_pred(50,2)=38;
  nzij_pred(51,1)=28; nzij_pred(51,2)=39;
  nzij_pred(52,1)=27; nzij_pred(52,2)=46;
  nzij_pred(53,1)=42; nzij_pred(53,2)=46;
  nzij_pred(54,1)=43; nzij_pred(54,2)=46;
  nzij_pred(55,1)=34; nzij_pred(55,2)=47;
  nzij_pred(56,1)=36; nzij_pred(56,2)=47;
  nzij_pred(57,1)=37; nzij_pred(57,2)=47;
  nzij_pred(58,1)=39; nzij_pred(58,2)=47;
  nzij_pred(59,1)=40; nzij_pred(59,2)=47;
  nzij_pred(60,1)=41; nzij_pred(60,2)=47;
  nzij_pred(61,1)=42; nzij_pred(61,2)=47;
  nzij_pred(62,1)=43; nzij_pred(62,2)=47;
  nzij_pred(63,1)=48; nzij_pred(63,2)=47;
  nzij_pred(64,1)=53; nzij_pred(64,2)=47;
  nzij_pred(65,1)=75; nzij_pred(65,2)=47;
  nzij_pred(66,1)=46; nzij_pred(66,2)=50;
  nzij_pred(67,1)=47; nzij_pred(67,2)=50;
  nzij_pred(68,1)=49; nzij_pred(68,2)=50;
  nzij_pred(69,1)=35; nzij_pred(69,2)=52;
  nzij_pred(70,1)=58; nzij_pred(70,2)=52;
  nzij_pred(71,1)=5; nzij_pred(71,2)=54;
  nzij_pred(72,1)=4; nzij_pred(72,2)=60;
  nzij_pred(73,1)=5; nzij_pred(73,2)=61;
  nzij_pred(74,1)=67; nzij_pred(74,2)=67;
  nzij_pred(75,1)=76; nzij_pred(75,2)=67;
  nzij_pred(76,1)=70; nzij_pred(76,2)=68;
  nzij_pred(77,1)=71; nzij_pred(77,2)=69;
  nzij_pred(78,1)=4; nzij_pred(78,2)=73;
  nzij_pred(79,1)=28; nzij_pred(79,2)=74;
  nzij_pred(80,1)=42; nzij_pred(80,2)=75;
  nzij_pred(81,1)=43; nzij_pred(81,2)=75;
  nzij_pred(82,1)=67; nzij_pred(82,2)=76;
  nzij_pred(83,1)=77; nzij_pred(83,2)=76;
  nzij_pred(84,1)=67; nzij_pred(84,2)=77;
  nzij_pred(85,1)=78; nzij_pred(85,2)=77;
  nzij_pred(86,1)=67; nzij_pred(86,2)=78;
  nzij_pred(87,1)=79; nzij_pred(87,2)=78;
  nzij_pred(88,1)=67; nzij_pred(88,2)=79;
  nzij_pred(89,1)=80; nzij_pred(89,2)=79;
  nzij_pred(90,1)=67; nzij_pred(90,2)=80;
  nzij_pred(91,1)=81; nzij_pred(91,2)=80;
  nzij_pred(92,1)=67; nzij_pred(92,2)=81;
  nzij_pred(93,1)=82; nzij_pred(93,2)=81;
  nzij_pred(94,1)=67; nzij_pred(94,2)=82;
  nzij_pred(95,1)=83; nzij_pred(95,2)=82;
  nzij_pred(96,1)=67; nzij_pred(96,2)=83;
  nzij_pred(97,1)=84; nzij_pred(97,2)=83;
  nzij_pred(98,1)=67; nzij_pred(98,2)=84;
  nzij_pred(99,1)=85; nzij_pred(99,2)=84;
  nzij_pred(100,1)=67; nzij_pred(100,2)=85;
  nzij_pred(101,1)=86; nzij_pred(101,2)=85;
  nzij_pred(102,1)=67; nzij_pred(102,2)=86;
  nzij_pred(103,1)=87; nzij_pred(103,2)=86;
  nzij_pred(104,1)=67; nzij_pred(104,2)=87;
  nzij_pred(105,1)=88; nzij_pred(105,2)=87;
  nzij_pred(106,1)=67; nzij_pred(106,2)=88;
  nzij_pred(107,1)=89; nzij_pred(107,2)=88;
  nzij_pred(108,1)=67; nzij_pred(108,2)=89;
  nzij_pred(109,1)=90; nzij_pred(109,2)=89;
  nzij_pred(110,1)=67; nzij_pred(110,2)=90;
  nzij_pred(111,1)=91; nzij_pred(111,2)=90;
  nzij_pred(112,1)=67; nzij_pred(112,2)=91;
  nzij_pred(113,1)=92; nzij_pred(113,2)=91;
  nzij_pred(114,1)=67; nzij_pred(114,2)=92;
  nzij_pred(115,1)=93; nzij_pred(115,2)=92;
  nzij_pred(116,1)=67; nzij_pred(116,2)=93;
  nzij_pred(117,1)=94; nzij_pred(117,2)=93;
  nzij_pred(118,1)=67; nzij_pred(118,2)=94;
  nzij_pred(119,1)=95; nzij_pred(119,2)=94;
  nzij_pred(120,1)=67; nzij_pred(120,2)=95;
  nzij_pred(121,1)=96; nzij_pred(121,2)=95;
  nzij_pred(122,1)=67; nzij_pred(122,2)=96;
  nzij_pred(123,1)=97; nzij_pred(123,2)=96;
  nzij_pred(124,1)=67; nzij_pred(124,2)=97;
  nzij_pred(125,1)=98; nzij_pred(125,2)=97;
  nzij_pred(126,1)=67; nzij_pred(126,2)=98;
  nzij_pred(127,1)=99; nzij_pred(127,2)=98;
  nzij_pred(128,1)=67; nzij_pred(128,2)=99;
  nzij_pred(129,1)=100; nzij_pred(129,2)=99;
  nzij_pred(130,1)=67; nzij_pred(130,2)=100;
  nzij_pred(131,1)=101; nzij_pred(131,2)=100;
  nzij_pred(132,1)=67; nzij_pred(132,2)=101;
  nzij_pred(133,1)=102; nzij_pred(133,2)=101;
  nzij_pred(134,1)=67; nzij_pred(134,2)=102;
  nzij_pred(135,1)=103; nzij_pred(135,2)=102;
  nzij_pred(136,1)=67; nzij_pred(136,2)=103;
  nzij_pred(137,1)=104; nzij_pred(137,2)=103;
  nzij_pred(138,1)=67; nzij_pred(138,2)=104;
  nzij_pred(139,1)=105; nzij_pred(139,2)=104;
  nzij_pred(140,1)=67; nzij_pred(140,2)=105;
  nzij_pred(141,1)=106; nzij_pred(141,2)=105;
  nzij_pred(142,1)=67; nzij_pred(142,2)=106;
  nzij_pred(143,1)=107; nzij_pred(143,2)=106;
  nzij_pred(144,1)=67; nzij_pred(144,2)=107;
  nzij_pred(145,1)=108; nzij_pred(145,2)=107;
  nzij_pred(146,1)=67; nzij_pred(146,2)=108;
  nzij_pred(147,1)=109; nzij_pred(147,2)=108;
  nzij_pred(148,1)=67; nzij_pred(148,2)=109;
  nzij_pred(149,1)=110; nzij_pred(149,2)=109;
  nzij_pred(150,1)=67; nzij_pred(150,2)=110;
  nzij_pred(151,1)=111; nzij_pred(151,2)=110;
  nzij_pred(152,1)=67; nzij_pred(152,2)=111;
  nzij_pred(153,1)=112; nzij_pred(153,2)=111;
  nzij_pred(154,1)=67; nzij_pred(154,2)=112;
  nzij_pred(155,1)=113; nzij_pred(155,2)=112;
  nzij_pred(156,1)=67; nzij_pred(156,2)=113;
  nzij_pred(157,1)=66; nzij_pred(157,2)=114;
  nzij_pred(158,1)=70; nzij_pred(158,2)=114;
  nzij_pred(159,1)=71; nzij_pred(159,2)=114;
  nzij_pred(160,1)=115; nzij_pred(160,2)=114;
  nzij_pred(161,1)=66; nzij_pred(161,2)=115;
  nzij_pred(162,1)=70; nzij_pred(162,2)=115;
  nzij_pred(163,1)=71; nzij_pred(163,2)=115;
  nzij_pred(164,1)=116; nzij_pred(164,2)=115;
  nzij_pred(165,1)=66; nzij_pred(165,2)=116;
  nzij_pred(166,1)=70; nzij_pred(166,2)=116;
  nzij_pred(167,1)=71; nzij_pred(167,2)=116;
  nzij_pred(168,1)=117; nzij_pred(168,2)=116;
  nzij_pred(169,1)=66; nzij_pred(169,2)=117;
  nzij_pred(170,1)=70; nzij_pred(170,2)=117;
  nzij_pred(171,1)=71; nzij_pred(171,2)=117;
  nzij_pred(172,1)=118; nzij_pred(172,2)=117;
  nzij_pred(173,1)=66; nzij_pred(173,2)=118;
  nzij_pred(174,1)=70; nzij_pred(174,2)=118;
  nzij_pred(175,1)=71; nzij_pred(175,2)=118;
  nzij_pred(176,1)=119; nzij_pred(176,2)=118;
  nzij_pred(177,1)=66; nzij_pred(177,2)=119;
  nzij_pred(178,1)=70; nzij_pred(178,2)=119;
  nzij_pred(179,1)=71; nzij_pred(179,2)=119;
  nzij_pred(180,1)=120; nzij_pred(180,2)=119;
  nzij_pred(181,1)=66; nzij_pred(181,2)=120;
  nzij_pred(182,1)=70; nzij_pred(182,2)=120;
  nzij_pred(183,1)=71; nzij_pred(183,2)=120;
  nzij_pred(184,1)=121; nzij_pred(184,2)=120;
  nzij_pred(185,1)=66; nzij_pred(185,2)=121;
  nzij_pred(186,1)=70; nzij_pred(186,2)=121;
  nzij_pred(187,1)=71; nzij_pred(187,2)=121;
  nzij_pred(188,1)=122; nzij_pred(188,2)=121;
  nzij_pred(189,1)=66; nzij_pred(189,2)=122;
  nzij_pred(190,1)=70; nzij_pred(190,2)=122;
  nzij_pred(191,1)=71; nzij_pred(191,2)=122;
  nzij_pred(192,1)=123; nzij_pred(192,2)=122;
  nzij_pred(193,1)=66; nzij_pred(193,2)=123;
  nzij_pred(194,1)=70; nzij_pred(194,2)=123;
  nzij_pred(195,1)=71; nzij_pred(195,2)=123;
  nzij_pred(196,1)=124; nzij_pred(196,2)=123;
  nzij_pred(197,1)=66; nzij_pred(197,2)=124;
  nzij_pred(198,1)=70; nzij_pred(198,2)=124;
  nzij_pred(199,1)=71; nzij_pred(199,2)=124;
  nzij_pred(200,1)=125; nzij_pred(200,2)=124;
  nzij_pred(201,1)=66; nzij_pred(201,2)=125;
  nzij_pred(202,1)=70; nzij_pred(202,2)=125;
  nzij_pred(203,1)=71; nzij_pred(203,2)=125;
  nzij_pred(204,1)=126; nzij_pred(204,2)=125;
  nzij_pred(205,1)=66; nzij_pred(205,2)=126;
  nzij_pred(206,1)=70; nzij_pred(206,2)=126;
  nzij_pred(207,1)=71; nzij_pred(207,2)=126;
  nzij_pred(208,1)=127; nzij_pred(208,2)=126;
  nzij_pred(209,1)=66; nzij_pred(209,2)=127;
  nzij_pred(210,1)=70; nzij_pred(210,2)=127;
  nzij_pred(211,1)=71; nzij_pred(211,2)=127;
  nzij_pred(212,1)=128; nzij_pred(212,2)=127;
  nzij_pred(213,1)=66; nzij_pred(213,2)=128;
  nzij_pred(214,1)=70; nzij_pred(214,2)=128;
  nzij_pred(215,1)=71; nzij_pred(215,2)=128;
  nzij_pred(216,1)=129; nzij_pred(216,2)=128;
  nzij_pred(217,1)=66; nzij_pred(217,2)=129;
  nzij_pred(218,1)=70; nzij_pred(218,2)=129;
  nzij_pred(219,1)=71; nzij_pred(219,2)=129;
  nzij_pred(220,1)=130; nzij_pred(220,2)=129;
  nzij_pred(221,1)=66; nzij_pred(221,2)=130;
  nzij_pred(222,1)=70; nzij_pred(222,2)=130;
  nzij_pred(223,1)=71; nzij_pred(223,2)=130;
  nzij_pred(224,1)=131; nzij_pred(224,2)=130;
  nzij_pred(225,1)=66; nzij_pred(225,2)=131;
  nzij_pred(226,1)=70; nzij_pred(226,2)=131;
  nzij_pred(227,1)=71; nzij_pred(227,2)=131;
  nzij_pred(228,1)=132; nzij_pred(228,2)=131;
  nzij_pred(229,1)=66; nzij_pred(229,2)=132;
  nzij_pred(230,1)=70; nzij_pred(230,2)=132;
  nzij_pred(231,1)=71; nzij_pred(231,2)=132;
  nzij_pred(232,1)=133; nzij_pred(232,2)=132;
  nzij_pred(233,1)=66; nzij_pred(233,2)=133;
  nzij_pred(234,1)=70; nzij_pred(234,2)=133;
  nzij_pred(235,1)=71; nzij_pred(235,2)=133;
  nzij_pred(236,1)=134; nzij_pred(236,2)=133;
  nzij_pred(237,1)=66; nzij_pred(237,2)=134;
  nzij_pred(238,1)=70; nzij_pred(238,2)=134;
  nzij_pred(239,1)=71; nzij_pred(239,2)=134;
  nzij_pred(240,1)=135; nzij_pred(240,2)=134;
  nzij_pred(241,1)=66; nzij_pred(241,2)=135;
  nzij_pred(242,1)=70; nzij_pred(242,2)=135;
  nzij_pred(243,1)=71; nzij_pred(243,2)=135;
  nzij_pred(244,1)=136; nzij_pred(244,2)=135;
  nzij_pred(245,1)=66; nzij_pred(245,2)=136;
  nzij_pred(246,1)=70; nzij_pred(246,2)=136;
  nzij_pred(247,1)=71; nzij_pred(247,2)=136;
  nzij_pred(248,1)=137; nzij_pred(248,2)=136;
  nzij_pred(249,1)=66; nzij_pred(249,2)=137;
  nzij_pred(250,1)=70; nzij_pred(250,2)=137;
  nzij_pred(251,1)=71; nzij_pred(251,2)=137;
  nzij_pred(252,1)=138; nzij_pred(252,2)=137;
  nzij_pred(253,1)=66; nzij_pred(253,2)=138;
  nzij_pred(254,1)=70; nzij_pred(254,2)=138;
  nzij_pred(255,1)=71; nzij_pred(255,2)=138;
  nzij_pred(256,1)=139; nzij_pred(256,2)=138;
  nzij_pred(257,1)=66; nzij_pred(257,2)=139;
  nzij_pred(258,1)=70; nzij_pred(258,2)=139;
  nzij_pred(259,1)=71; nzij_pred(259,2)=139;
  nzij_pred(260,1)=140; nzij_pred(260,2)=139;
  nzij_pred(261,1)=66; nzij_pred(261,2)=140;
  nzij_pred(262,1)=70; nzij_pred(262,2)=140;
  nzij_pred(263,1)=71; nzij_pred(263,2)=140;
  nzij_pred(264,1)=141; nzij_pred(264,2)=140;
  nzij_pred(265,1)=66; nzij_pred(265,2)=141;
  nzij_pred(266,1)=70; nzij_pred(266,2)=141;
  nzij_pred(267,1)=71; nzij_pred(267,2)=141;
  nzij_pred(268,1)=142; nzij_pred(268,2)=141;
  nzij_pred(269,1)=66; nzij_pred(269,2)=142;
  nzij_pred(270,1)=70; nzij_pred(270,2)=142;
  nzij_pred(271,1)=71; nzij_pred(271,2)=142;
  nzij_pred(272,1)=143; nzij_pred(272,2)=142;
  nzij_pred(273,1)=66; nzij_pred(273,2)=143;
  nzij_pred(274,1)=70; nzij_pred(274,2)=143;
  nzij_pred(275,1)=71; nzij_pred(275,2)=143;
  nzij_pred(276,1)=144; nzij_pred(276,2)=143;
  nzij_pred(277,1)=66; nzij_pred(277,2)=144;
  nzij_pred(278,1)=70; nzij_pred(278,2)=144;
  nzij_pred(279,1)=71; nzij_pred(279,2)=144;
  nzij_pred(280,1)=145; nzij_pred(280,2)=144;
  nzij_pred(281,1)=66; nzij_pred(281,2)=145;
  nzij_pred(282,1)=70; nzij_pred(282,2)=145;
  nzij_pred(283,1)=71; nzij_pred(283,2)=145;
  nzij_pred(284,1)=146; nzij_pred(284,2)=145;
  nzij_pred(285,1)=66; nzij_pred(285,2)=146;
  nzij_pred(286,1)=70; nzij_pred(286,2)=146;
  nzij_pred(287,1)=71; nzij_pred(287,2)=146;
  nzij_pred(288,1)=147; nzij_pred(288,2)=146;
  nzij_pred(289,1)=66; nzij_pred(289,2)=147;
  nzij_pred(290,1)=70; nzij_pred(290,2)=147;
  nzij_pred(291,1)=71; nzij_pred(291,2)=147;
  nzij_pred(292,1)=148; nzij_pred(292,2)=147;
  nzij_pred(293,1)=66; nzij_pred(293,2)=148;
  nzij_pred(294,1)=70; nzij_pred(294,2)=148;
  nzij_pred(295,1)=71; nzij_pred(295,2)=148;
  nzij_pred(296,1)=149; nzij_pred(296,2)=148;
  nzij_pred(297,1)=66; nzij_pred(297,2)=149;
  nzij_pred(298,1)=70; nzij_pred(298,2)=149;
  nzij_pred(299,1)=71; nzij_pred(299,2)=149;
  nzij_pred(300,1)=150; nzij_pred(300,2)=149;
  nzij_pred(301,1)=66; nzij_pred(301,2)=150;
  nzij_pred(302,1)=70; nzij_pred(302,2)=150;
  nzij_pred(303,1)=71; nzij_pred(303,2)=150;
  nzij_pred(304,1)=151; nzij_pred(304,2)=150;
  nzij_pred(305,1)=66; nzij_pred(305,2)=151;
  nzij_pred(306,1)=70; nzij_pred(306,2)=151;
  nzij_pred(307,1)=71; nzij_pred(307,2)=151;
  nzij_pred(308,1)=152; nzij_pred(308,2)=151;
  nzij_pred(309,1)=66; nzij_pred(309,2)=152;
  nzij_pred(310,1)=70; nzij_pred(310,2)=152;
  nzij_pred(311,1)=71; nzij_pred(311,2)=152;
  nzij_current = zeros(325, 2, 'int32');
  nzij_current(1,1)=49; nzij_current(1,2)=1;
  nzij_current(2,1)=53; nzij_current(2,2)=1;
  nzij_current(3,1)=55; nzij_current(3,2)=1;
  nzij_current(4,1)=50; nzij_current(4,2)=2;
  nzij_current(5,1)=65; nzij_current(5,2)=2;
  nzij_current(6,1)=1; nzij_current(6,2)=3;
  nzij_current(7,1)=2; nzij_current(7,2)=3;
  nzij_current(8,1)=3; nzij_current(8,2)=3;
  nzij_current(9,1)=6; nzij_current(9,2)=3;
  nzij_current(10,1)=7; nzij_current(10,2)=3;
  nzij_current(11,1)=10; nzij_current(11,2)=3;
  nzij_current(12,1)=11; nzij_current(12,2)=3;
  nzij_current(13,1)=37; nzij_current(13,2)=3;
  nzij_current(14,1)=38; nzij_current(14,2)=3;
  nzij_current(15,1)=39; nzij_current(15,2)=3;
  nzij_current(16,1)=40; nzij_current(16,2)=3;
  nzij_current(17,1)=45; nzij_current(17,2)=3;
  nzij_current(18,1)=50; nzij_current(18,2)=3;
  nzij_current(19,1)=25; nzij_current(19,2)=4;
  nzij_current(20,1)=49; nzij_current(20,2)=4;
  nzij_current(21,1)=1; nzij_current(21,2)=5;
  nzij_current(22,1)=15; nzij_current(22,2)=5;
  nzij_current(23,1)=22; nzij_current(23,2)=5;
  nzij_current(24,1)=24; nzij_current(24,2)=5;
  nzij_current(25,1)=56; nzij_current(25,2)=5;
  nzij_current(26,1)=48; nzij_current(26,2)=6;
  nzij_current(27,1)=49; nzij_current(27,2)=6;
  nzij_current(28,1)=55; nzij_current(28,2)=6;
  nzij_current(29,1)=52; nzij_current(29,2)=7;
  nzij_current(30,1)=53; nzij_current(30,2)=7;
  nzij_current(31,1)=58; nzij_current(31,2)=7;
  nzij_current(32,1)=59; nzij_current(32,2)=7;
  nzij_current(33,1)=39; nzij_current(33,2)=8;
  nzij_current(34,1)=40; nzij_current(34,2)=8;
  nzij_current(35,1)=41; nzij_current(35,2)=8;
  nzij_current(36,1)=48; nzij_current(36,2)=8;
  nzij_current(37,1)=53; nzij_current(37,2)=8;
  nzij_current(38,1)=34; nzij_current(38,2)=9;
  nzij_current(39,1)=37; nzij_current(39,2)=9;
  nzij_current(40,1)=48; nzij_current(40,2)=9;
  nzij_current(41,1)=53; nzij_current(41,2)=9;
  nzij_current(42,1)=33; nzij_current(42,2)=10;
  nzij_current(43,1)=51; nzij_current(43,2)=10;
  nzij_current(44,1)=53; nzij_current(44,2)=10;
  nzij_current(45,1)=33; nzij_current(45,2)=11;
  nzij_current(46,1)=53; nzij_current(46,2)=12;
  nzij_current(47,1)=54; nzij_current(47,2)=12;
  nzij_current(48,1)=8; nzij_current(48,2)=13;
  nzij_current(49,1)=54; nzij_current(49,2)=13;
  nzij_current(50,1)=56; nzij_current(50,2)=13;
  nzij_current(51,1)=9; nzij_current(51,2)=14;
  nzij_current(52,1)=54; nzij_current(52,2)=14;
  nzij_current(53,1)=56; nzij_current(53,2)=14;
  nzij_current(54,1)=2; nzij_current(54,2)=15;
  nzij_current(55,1)=16; nzij_current(55,2)=15;
  nzij_current(56,1)=56; nzij_current(56,2)=15;
  nzij_current(57,1)=28; nzij_current(57,2)=16;
  nzij_current(58,1)=29; nzij_current(58,2)=16;
  nzij_current(59,1)=30; nzij_current(59,2)=16;
  nzij_current(60,1)=52; nzij_current(60,2)=16;
  nzij_current(61,1)=34; nzij_current(61,2)=17;
  nzij_current(62,1)=35; nzij_current(62,2)=17;
  nzij_current(63,1)=46; nzij_current(63,2)=18;
  nzij_current(64,1)=47; nzij_current(64,2)=18;
  nzij_current(65,1)=49; nzij_current(65,2)=18;
  nzij_current(66,1)=2; nzij_current(66,2)=19;
  nzij_current(67,1)=8; nzij_current(67,2)=19;
  nzij_current(68,1)=1; nzij_current(68,2)=20;
  nzij_current(69,1)=8; nzij_current(69,2)=20;
  nzij_current(70,1)=3; nzij_current(70,2)=21;
  nzij_current(71,1)=9; nzij_current(71,2)=21;
  nzij_current(72,1)=7; nzij_current(72,2)=22;
  nzij_current(73,1)=8; nzij_current(73,2)=22;
  nzij_current(74,1)=9; nzij_current(74,2)=23;
  nzij_current(75,1)=10; nzij_current(75,2)=23;
  nzij_current(76,1)=8; nzij_current(76,2)=24;
  nzij_current(77,1)=9; nzij_current(77,2)=24;
  nzij_current(78,1)=10; nzij_current(78,2)=24;
  nzij_current(79,1)=11; nzij_current(79,2)=24;
  nzij_current(80,1)=22; nzij_current(80,2)=24;
  nzij_current(81,1)=3; nzij_current(81,2)=25;
  nzij_current(82,1)=6; nzij_current(82,2)=25;
  nzij_current(83,1)=7; nzij_current(83,2)=25;
  nzij_current(84,1)=19; nzij_current(84,2)=25;
  nzij_current(85,1)=20; nzij_current(85,2)=25;
  nzij_current(86,1)=61; nzij_current(86,2)=25;
  nzij_current(87,1)=62; nzij_current(87,2)=25;
  nzij_current(88,1)=63; nzij_current(88,2)=25;
  nzij_current(89,1)=64; nzij_current(89,2)=25;
  nzij_current(90,1)=18; nzij_current(90,2)=26;
  nzij_current(91,1)=61; nzij_current(91,2)=26;
  nzij_current(92,1)=62; nzij_current(92,2)=26;
  nzij_current(93,1)=63; nzij_current(93,2)=26;
  nzij_current(94,1)=64; nzij_current(94,2)=26;
  nzij_current(95,1)=1; nzij_current(95,2)=27;
  nzij_current(96,1)=2; nzij_current(96,2)=27;
  nzij_current(97,1)=3; nzij_current(97,2)=27;
  nzij_current(98,1)=6; nzij_current(98,2)=27;
  nzij_current(99,1)=7; nzij_current(99,2)=27;
  nzij_current(100,1)=17; nzij_current(100,2)=27;
  nzij_current(101,1)=18; nzij_current(101,2)=27;
  nzij_current(102,1)=19; nzij_current(102,2)=27;
  nzij_current(103,1)=20; nzij_current(103,2)=27;
  nzij_current(104,1)=21; nzij_current(104,2)=27;
  nzij_current(105,1)=22; nzij_current(105,2)=27;
  nzij_current(106,1)=4; nzij_current(106,2)=28;
  nzij_current(107,1)=5; nzij_current(107,2)=28;
  nzij_current(108,1)=8; nzij_current(108,2)=28;
  nzij_current(109,1)=9; nzij_current(109,2)=28;
  nzij_current(110,1)=25; nzij_current(110,2)=28;
  nzij_current(111,1)=26; nzij_current(111,2)=28;
  nzij_current(112,1)=27; nzij_current(112,2)=28;
  nzij_current(113,1)=28; nzij_current(113,2)=28;
  nzij_current(114,1)=33; nzij_current(114,2)=28;
  nzij_current(115,1)=42; nzij_current(115,2)=28;
  nzij_current(116,1)=43; nzij_current(116,2)=28;
  nzij_current(117,1)=49; nzij_current(117,2)=28;
  nzij_current(118,1)=51; nzij_current(118,2)=28;
  nzij_current(119,1)=56; nzij_current(119,2)=28;
  nzij_current(120,1)=59; nzij_current(120,2)=28;
  nzij_current(121,1)=21; nzij_current(121,2)=29;
  nzij_current(122,1)=15; nzij_current(122,2)=30;
  nzij_current(123,1)=21; nzij_current(123,2)=30;
  nzij_current(124,1)=22; nzij_current(124,2)=30;
  nzij_current(125,1)=58; nzij_current(125,2)=31;
  nzij_current(126,1)=1; nzij_current(126,2)=32;
  nzij_current(127,1)=2; nzij_current(127,2)=32;
  nzij_current(128,1)=7; nzij_current(128,2)=32;
  nzij_current(129,1)=11; nzij_current(129,2)=32;
  nzij_current(130,1)=12; nzij_current(130,2)=32;
  nzij_current(131,1)=56; nzij_current(131,2)=33;
  nzij_current(132,1)=57; nzij_current(132,2)=33;
  nzij_current(133,1)=57; nzij_current(133,2)=34;
  nzij_current(134,1)=3; nzij_current(134,2)=35;
  nzij_current(135,1)=46; nzij_current(135,2)=35;
  nzij_current(136,1)=56; nzij_current(136,2)=35;
  nzij_current(137,1)=7; nzij_current(137,2)=36;
  nzij_current(138,1)=47; nzij_current(138,2)=36;
  nzij_current(139,1)=56; nzij_current(139,2)=36;
  nzij_current(140,1)=24; nzij_current(140,2)=37;
  nzij_current(141,1)=25; nzij_current(141,2)=37;
  nzij_current(142,1)=26; nzij_current(142,2)=37;
  nzij_current(143,1)=27; nzij_current(143,2)=37;
  nzij_current(144,1)=28; nzij_current(144,2)=37;
  nzij_current(145,1)=29; nzij_current(145,2)=37;
  nzij_current(146,1)=30; nzij_current(146,2)=37;
  nzij_current(147,1)=38; nzij_current(147,2)=37;
  nzij_current(148,1)=42; nzij_current(148,2)=37;
  nzij_current(149,1)=52; nzij_current(149,2)=37;
  nzij_current(150,1)=49; nzij_current(150,2)=38;
  nzij_current(151,1)=51; nzij_current(151,2)=38;
  nzij_current(152,1)=55; nzij_current(152,2)=38;
  nzij_current(153,1)=26; nzij_current(153,2)=39;
  nzij_current(154,1)=28; nzij_current(154,2)=39;
  nzij_current(155,1)=31; nzij_current(155,2)=39;
  nzij_current(156,1)=32; nzij_current(156,2)=39;
  nzij_current(157,1)=25; nzij_current(157,2)=40;
  nzij_current(158,1)=31; nzij_current(158,2)=40;
  nzij_current(159,1)=51; nzij_current(159,2)=40;
  nzij_current(160,1)=26; nzij_current(160,2)=41;
  nzij_current(161,1)=31; nzij_current(161,2)=41;
  nzij_current(162,1)=32; nzij_current(162,2)=41;
  nzij_current(163,1)=27; nzij_current(163,2)=42;
  nzij_current(164,1)=28; nzij_current(164,2)=42;
  nzij_current(165,1)=29; nzij_current(165,2)=43;
  nzij_current(166,1)=38; nzij_current(166,2)=43;
  nzij_current(167,1)=44; nzij_current(167,2)=43;
  nzij_current(168,1)=40; nzij_current(168,2)=44;
  nzij_current(169,1)=42; nzij_current(169,2)=44;
  nzij_current(170,1)=43; nzij_current(170,2)=44;
  nzij_current(171,1)=36; nzij_current(171,2)=45;
  nzij_current(172,1)=39; nzij_current(172,2)=45;
  nzij_current(173,1)=40; nzij_current(173,2)=45;
  nzij_current(174,1)=41; nzij_current(174,2)=45;
  nzij_current(175,1)=34; nzij_current(175,2)=46;
  nzij_current(176,1)=36; nzij_current(176,2)=46;
  nzij_current(177,1)=37; nzij_current(177,2)=46;
  nzij_current(178,1)=38; nzij_current(178,2)=46;
  nzij_current(179,1)=39; nzij_current(179,2)=46;
  nzij_current(180,1)=40; nzij_current(180,2)=46;
  nzij_current(181,1)=34; nzij_current(181,2)=47;
  nzij_current(182,1)=37; nzij_current(182,2)=47;
  nzij_current(183,1)=39; nzij_current(183,2)=47;
  nzij_current(184,1)=40; nzij_current(184,2)=47;
  nzij_current(185,1)=42; nzij_current(185,2)=48;
  nzij_current(186,1)=47; nzij_current(186,2)=48;
  nzij_current(187,1)=49; nzij_current(187,2)=48;
  nzij_current(188,1)=43; nzij_current(188,2)=49;
  nzij_current(189,1)=47; nzij_current(189,2)=49;
  nzij_current(190,1)=49; nzij_current(190,2)=49;
  nzij_current(191,1)=49; nzij_current(191,2)=50;
  nzij_current(192,1)=55; nzij_current(192,2)=50;
  nzij_current(193,1)=57; nzij_current(193,2)=50;
  nzij_current(194,1)=18; nzij_current(194,2)=51;
  nzij_current(195,1)=20; nzij_current(195,2)=51;
  nzij_current(196,1)=23; nzij_current(196,2)=51;
  nzij_current(197,1)=20; nzij_current(197,2)=52;
  nzij_current(198,1)=60; nzij_current(198,2)=52;
  nzij_current(199,1)=59; nzij_current(199,2)=53;
  nzij_current(200,1)=3; nzij_current(200,2)=54;
  nzij_current(201,1)=6; nzij_current(201,2)=54;
  nzij_current(202,1)=10; nzij_current(202,2)=54;
  nzij_current(203,1)=19; nzij_current(203,2)=54;
  nzij_current(204,1)=17; nzij_current(204,2)=55;
  nzij_current(205,1)=21; nzij_current(205,2)=55;
  nzij_current(206,1)=22; nzij_current(206,2)=55;
  nzij_current(207,1)=23; nzij_current(207,2)=55;
  nzij_current(208,1)=35; nzij_current(208,2)=55;
  nzij_current(209,1)=23; nzij_current(209,2)=56;
  nzij_current(210,1)=34; nzij_current(210,2)=57;
  nzij_current(211,1)=41; nzij_current(211,2)=57;
  nzij_current(212,1)=44; nzij_current(212,2)=57;
  nzij_current(213,1)=52; nzij_current(213,2)=57;
  nzij_current(214,1)=15; nzij_current(214,2)=58;
  nzij_current(215,1)=16; nzij_current(215,2)=58;
  nzij_current(216,1)=53; nzij_current(216,2)=58;
  nzij_current(217,1)=14; nzij_current(217,2)=59;
  nzij_current(218,1)=16; nzij_current(218,2)=59;
  nzij_current(219,1)=4; nzij_current(219,2)=60;
  nzij_current(220,1)=5; nzij_current(220,2)=60;
  nzij_current(221,1)=5; nzij_current(221,2)=61;
  nzij_current(222,1)=6; nzij_current(222,2)=61;
  nzij_current(223,1)=14; nzij_current(223,2)=61;
  nzij_current(224,1)=56; nzij_current(224,2)=61;
  nzij_current(225,1)=6; nzij_current(225,2)=62;
  nzij_current(226,1)=9; nzij_current(226,2)=62;
  nzij_current(227,1)=13; nzij_current(227,2)=63;
  nzij_current(228,1)=14; nzij_current(228,2)=63;
  nzij_current(229,1)=53; nzij_current(229,2)=63;
  nzij_current(230,1)=60; nzij_current(230,2)=64;
  nzij_current(231,1)=67; nzij_current(231,2)=64;
  nzij_current(232,1)=63; nzij_current(232,2)=65;
  nzij_current(233,1)=69; nzij_current(233,2)=65;
  nzij_current(234,1)=64; nzij_current(234,2)=66;
  nzij_current(235,1)=68; nzij_current(235,2)=66;
  nzij_current(236,1)=67; nzij_current(236,2)=67;
  nzij_current(237,1)=72; nzij_current(237,2)=67;
  nzij_current(238,1)=69; nzij_current(238,2)=68;
  nzij_current(239,1)=70; nzij_current(239,2)=68;
  nzij_current(240,1)=68; nzij_current(240,2)=69;
  nzij_current(241,1)=71; nzij_current(241,2)=69;
  nzij_current(242,1)=61; nzij_current(242,2)=70;
  nzij_current(243,1)=62; nzij_current(243,2)=71;
  nzij_current(244,1)=65; nzij_current(244,2)=72;
  nzij_current(245,1)=66; nzij_current(245,2)=72;
  nzij_current(246,1)=73; nzij_current(246,2)=73;
  nzij_current(247,1)=74; nzij_current(247,2)=74;
  nzij_current(248,1)=75; nzij_current(248,2)=75;
  nzij_current(249,1)=76; nzij_current(249,2)=76;
  nzij_current(250,1)=77; nzij_current(250,2)=77;
  nzij_current(251,1)=78; nzij_current(251,2)=78;
  nzij_current(252,1)=79; nzij_current(252,2)=79;
  nzij_current(253,1)=80; nzij_current(253,2)=80;
  nzij_current(254,1)=81; nzij_current(254,2)=81;
  nzij_current(255,1)=82; nzij_current(255,2)=82;
  nzij_current(256,1)=83; nzij_current(256,2)=83;
  nzij_current(257,1)=84; nzij_current(257,2)=84;
  nzij_current(258,1)=85; nzij_current(258,2)=85;
  nzij_current(259,1)=86; nzij_current(259,2)=86;
  nzij_current(260,1)=87; nzij_current(260,2)=87;
  nzij_current(261,1)=88; nzij_current(261,2)=88;
  nzij_current(262,1)=89; nzij_current(262,2)=89;
  nzij_current(263,1)=90; nzij_current(263,2)=90;
  nzij_current(264,1)=91; nzij_current(264,2)=91;
  nzij_current(265,1)=92; nzij_current(265,2)=92;
  nzij_current(266,1)=93; nzij_current(266,2)=93;
  nzij_current(267,1)=94; nzij_current(267,2)=94;
  nzij_current(268,1)=95; nzij_current(268,2)=95;
  nzij_current(269,1)=96; nzij_current(269,2)=96;
  nzij_current(270,1)=97; nzij_current(270,2)=97;
  nzij_current(271,1)=98; nzij_current(271,2)=98;
  nzij_current(272,1)=99; nzij_current(272,2)=99;
  nzij_current(273,1)=100; nzij_current(273,2)=100;
  nzij_current(274,1)=101; nzij_current(274,2)=101;
  nzij_current(275,1)=102; nzij_current(275,2)=102;
  nzij_current(276,1)=103; nzij_current(276,2)=103;
  nzij_current(277,1)=104; nzij_current(277,2)=104;
  nzij_current(278,1)=105; nzij_current(278,2)=105;
  nzij_current(279,1)=106; nzij_current(279,2)=106;
  nzij_current(280,1)=107; nzij_current(280,2)=107;
  nzij_current(281,1)=108; nzij_current(281,2)=108;
  nzij_current(282,1)=109; nzij_current(282,2)=109;
  nzij_current(283,1)=110; nzij_current(283,2)=110;
  nzij_current(284,1)=111; nzij_current(284,2)=111;
  nzij_current(285,1)=112; nzij_current(285,2)=112;
  nzij_current(286,1)=113; nzij_current(286,2)=113;
  nzij_current(287,1)=114; nzij_current(287,2)=114;
  nzij_current(288,1)=115; nzij_current(288,2)=115;
  nzij_current(289,1)=116; nzij_current(289,2)=116;
  nzij_current(290,1)=117; nzij_current(290,2)=117;
  nzij_current(291,1)=118; nzij_current(291,2)=118;
  nzij_current(292,1)=119; nzij_current(292,2)=119;
  nzij_current(293,1)=120; nzij_current(293,2)=120;
  nzij_current(294,1)=121; nzij_current(294,2)=121;
  nzij_current(295,1)=122; nzij_current(295,2)=122;
  nzij_current(296,1)=123; nzij_current(296,2)=123;
  nzij_current(297,1)=124; nzij_current(297,2)=124;
  nzij_current(298,1)=125; nzij_current(298,2)=125;
  nzij_current(299,1)=126; nzij_current(299,2)=126;
  nzij_current(300,1)=127; nzij_current(300,2)=127;
  nzij_current(301,1)=128; nzij_current(301,2)=128;
  nzij_current(302,1)=129; nzij_current(302,2)=129;
  nzij_current(303,1)=130; nzij_current(303,2)=130;
  nzij_current(304,1)=131; nzij_current(304,2)=131;
  nzij_current(305,1)=132; nzij_current(305,2)=132;
  nzij_current(306,1)=133; nzij_current(306,2)=133;
  nzij_current(307,1)=134; nzij_current(307,2)=134;
  nzij_current(308,1)=135; nzij_current(308,2)=135;
  nzij_current(309,1)=136; nzij_current(309,2)=136;
  nzij_current(310,1)=137; nzij_current(310,2)=137;
  nzij_current(311,1)=138; nzij_current(311,2)=138;
  nzij_current(312,1)=139; nzij_current(312,2)=139;
  nzij_current(313,1)=140; nzij_current(313,2)=140;
  nzij_current(314,1)=141; nzij_current(314,2)=141;
  nzij_current(315,1)=142; nzij_current(315,2)=142;
  nzij_current(316,1)=143; nzij_current(316,2)=143;
  nzij_current(317,1)=144; nzij_current(317,2)=144;
  nzij_current(318,1)=145; nzij_current(318,2)=145;
  nzij_current(319,1)=146; nzij_current(319,2)=146;
  nzij_current(320,1)=147; nzij_current(320,2)=147;
  nzij_current(321,1)=148; nzij_current(321,2)=148;
  nzij_current(322,1)=149; nzij_current(322,2)=149;
  nzij_current(323,1)=150; nzij_current(323,2)=150;
  nzij_current(324,1)=151; nzij_current(324,2)=151;
  nzij_current(325,1)=152; nzij_current(325,2)=152;
  nzij_fwrd = zeros(33, 2, 'int32');
  nzij_fwrd(1,1)=50; nzij_fwrd(1,2)=2;
  nzij_fwrd(2,1)=50; nzij_fwrd(2,2)=3;
  nzij_fwrd(3,1)=45; nzij_fwrd(3,2)=4;
  nzij_fwrd(4,1)=22; nzij_fwrd(4,2)=5;
  nzij_fwrd(5,1)=2; nzij_fwrd(5,2)=19;
  nzij_fwrd(6,1)=1; nzij_fwrd(6,2)=20;
  nzij_fwrd(7,1)=3; nzij_fwrd(7,2)=21;
  nzij_fwrd(8,1)=7; nzij_fwrd(8,2)=21;
  nzij_fwrd(9,1)=7; nzij_fwrd(9,2)=22;
  nzij_fwrd(10,1)=7; nzij_fwrd(10,2)=23;
  nzij_fwrd(11,1)=10; nzij_fwrd(11,2)=23;
  nzij_fwrd(12,1)=12; nzij_fwrd(12,2)=23;
  nzij_fwrd(13,1)=10; nzij_fwrd(13,2)=24;
  nzij_fwrd(14,1)=11; nzij_fwrd(14,2)=24;
  nzij_fwrd(15,1)=22; nzij_fwrd(15,2)=24;
  nzij_fwrd(16,1)=1; nzij_fwrd(16,2)=28;
  nzij_fwrd(17,1)=2; nzij_fwrd(17,2)=28;
  nzij_fwrd(18,1)=3; nzij_fwrd(18,2)=28;
  nzij_fwrd(19,1)=6; nzij_fwrd(19,2)=28;
  nzij_fwrd(20,1)=7; nzij_fwrd(20,2)=28;
  nzij_fwrd(21,1)=22; nzij_fwrd(21,2)=28;
  nzij_fwrd(22,1)=37; nzij_fwrd(22,2)=28;
  nzij_fwrd(23,1)=38; nzij_fwrd(23,2)=28;
  nzij_fwrd(24,1)=39; nzij_fwrd(24,2)=28;
  nzij_fwrd(25,1)=40; nzij_fwrd(25,2)=28;
  nzij_fwrd(26,1)=38; nzij_fwrd(26,2)=43;
  nzij_fwrd(27,1)=39; nzij_fwrd(27,2)=43;
  nzij_fwrd(28,1)=40; nzij_fwrd(28,2)=43;
  nzij_fwrd(29,1)=37; nzij_fwrd(29,2)=44;
  nzij_fwrd(30,1)=39; nzij_fwrd(30,2)=44;
  nzij_fwrd(31,1)=40; nzij_fwrd(31,2)=44;
  nzij_fwrd(32,1)=6; nzij_fwrd(32,2)=62;
  nzij_fwrd(33,1)=7; nzij_fwrd(33,2)=62;
end