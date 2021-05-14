INSERT INTO "data.account" (id, name, secret) VALUES
(1, 'user1', 'password'),
(2, 'user2', 'password');
INSERT INTO "data.agent" (id, key, name) VALUES
(1, 'PNWWARKMYPUL', 'agent1'),
(2, 'YPIHISUYLAQEVSZI', 'spbkit agent');
INSERT INTO "data.collect" (node, metric, intval) VALUES
(11, 1, 10),
(11, 2, 10),
(11, 3, 30),
(11, 4, 20),
(11, 5, 15),
(12, 1, 10),
(12, 2, 10),
(12, 3, 30);
INSERT INTO "data.link" (id, node_a, node_b) VALUES
(1, 1, 2),
(2, 2, 3),
(4, 6, 7),
(5, 8, 9),
(6, 8, 10);
INSERT INTO "data.map" (id, account, name) VALUES
(1, 1, 'map1'),
(2, 1, 'map2,),
(3, 2, 'map3'),
(4, 2, 'map4'),
(5, 2, 'spbkit network');
INSERT INTO "data.metric" (id, name, vmin, vmax, unit, snmp_oid, agnt_scale) VALUES
(1, 'cpu0', 0, 100, '%', '1.3.6.1.2.1.25.3.3.1.2.1', 1),
(2, 'cpu1', 0, 100, '%', '1.3.6.1.2.1.25.3.3.1.2.2', 1),
(3, 'memory', 0, , 'mb', '1.3.6.1.2.1.25.2.3.1.6.65536', 0.001),
(4, 'voltage', 0, , 'v', '1.3.6.1.4.1.14988.1.1.3.8.0', 0.1),
(5, 'temp', , , 'c', '1.3.6.1.4.1.14988.1.1.3.10.0', 0.1),
(6, 'cpu-temp', , , 'c', '1.3.6.1.4.1.14988.1.1.3.11.0', 0.1);
INSERT INTO "data.node" (id, map, x, y, ip, name, agent) VALUES
(1, 1, 632, 284, '192.168.35.101', 'host1', 1),
(2, 1, 742, 767, '192.168.35.102', 'host2', 1),
(3, 1, 426, 887, '192.168.35.103', 'host3', 1),
(5, 2, 107, 662, '192.168.35.105', 'host5', 1),
(6, 3, 90, 40, '192.168.35.106', 'host6', 1),
(7, 3, 40, 90, '192.168.35.107', 'host7', 1),
(8, 4, 20, 40, '192.168.35.108', 'host8', 1),
(9, 4, 70, 30, '192.168.35.109', 'host9', 1);
INSERT INTO "data.permission" (account, func) VALUES
(1, 'open_session'),
(1, 'close_session'),
(1, 'get_maps'),
(1, 'get_nodes'),
(1, 'get_links'),
(1, 'delete_map'),
(1, 'delete_node'),
(1, 'delete_node');
INSERT INTO "data.sample" (ts, node, metric, value) VALUES
('2021-05-11 23:52:32.180975', 12, 1, 0),
('2021-05-11 23:52:32.27094', 12, 4, 23.9),
('2021-05-12 04:41:08.3895901', 16, 6, 66),
('2021-05-12 04:41:09.480588', 11, 3, 45.644),
('2021-05-12 04:41:11.563711', 11, 2, 6),
('2021-05-12 04:41:11.653017', 16, 3, 28.968),
('2021-05-12 04:41:11.730221', 16, 3, 28.986),
('2021-05-12 04:41:12.815681', 11, 1, 1);
INSERT INTO "data.session" (key, account, t_begin, t_end) VALUES
('BEBSVETTPDFASGOM', 1, '2021-05-09 19:40:45.696141', ),
('BHSOSQOAIKGJLTSS', 1, '2021-05-09 09:17:55.066723', ),
('BWFMKMEQRLCRDOAL', 1, '2021-05-09 17:48:54.460959', ),
('BYZQDLIOCNVGMDSH', 1, '2021-05-09 12:34:59.914845', ),
('CHPNWPGFAKTTETCJ', 1, '2021-05-09 17:34:11.090809', ),
('CICSYGRFGOCOXFFV', 1, '2021-05-09 12:35:12.460811', ),
('CNWLOVETSMUYKUDS', 1, '2021-05-09 14:09:50.977107', ),
('CPQHERATHVCQGGJQ', 1, '2021-05-09 12:44:41.075449', );











