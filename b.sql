<<<<<<< HEAD
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











=======
CREATE TABLE "data"."metric"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "vmin" DOUBLE PRECISION NULL,
    "vmax" DOUBLE PRECISION NULL,
    "unit" VARCHAR(255) NOT NULL,
    "snmp_old" VARCHAR(255) NOT NULL,
    "agnt_scale" DOUBLE PRECISION NULL,
    "metric_pkey" INTEGER NULL
);
ALTER TABLE
    "data"."metric" ADD PRIMARY KEY("id");
CREATE INDEX "data_metric_metric_pkey_index" ON
    "data"."metric"("metric_pkey");
CREATE TABLE "data"."collect"(
    "node" INTEGER NOT NULL,
    "metric" INTEGER NOT NULL,
    "intval" INTEGER NOT NULL,
    "node_id" INTEGER NULL,
    "metric_id" INTEGER NULL
);
CREATE INDEX "data_collect_node_id_index" ON
    "data"."collect"("node_id");
CREATE INDEX "data_collect_metric_id_index" ON
    "data"."collect"("metric_id");
CREATE TABLE "data"."node"(
    "id" INTEGER NOT NULL,
    "map" INTEGER NOT NULL,
    "x" DOUBLE PRECISION NOT NULL,
    "y" DOUBLE PRECISION NOT NULL,
    "ip" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "agent" INTEGER NOT NULL,
    "node_pkey" INTEGER NULL,
    "map_id" INTEGER NULL,
    "agent_id" INTEGER NULL
);
ALTER TABLE
    "data"."node" ADD PRIMARY KEY("id");
CREATE INDEX "data_node_node_pkey_index" ON
    "data"."node"("node_pkey");
CREATE INDEX "data_node_map_id_index" ON
    "data"."node"("map_id");
CREATE INDEX "data_node_agent_id_index" ON
    "data"."node"("agent_id");
CREATE TABLE "data"."agent"(
    "id" INTEGER NOT NULL,
    "key" CHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "agent_pkey" INTEGER NOT NULL,
    "agent_key_key" INTEGER NOT NULL
);
ALTER TABLE
    "data"."agent" ADD PRIMARY KEY("id");
CREATE INDEX "data_agent_agent_pkey_index" ON
    "data"."agent"("agent_pkey");
ALTER TABLE
    "data"."agent" ADD CONSTRAINT "data_agent_agent_key_key_unique" UNIQUE("agent_key_key");
CREATE TABLE "data"."account"(
    "id" INTEGER NOT NULL,
    "account" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "account_pkey" INTEGER NOT NULL
);
ALTER TABLE
    "data"."account" ADD PRIMARY KEY("id");
CREATE INDEX "data_account_account_pkey_index" ON
    "data"."account"("account_pkey");
CREATE TABLE "data"."map"(
    "id" INTEGER NOT NULL,
    "account" INTEGER NOT NULL,
    "name" INTEGER NOT NULL,
    "map_pkey" INTEGER NULL,
    "account_id" INTEGER NULL
);
ALTER TABLE
    "data"."map" ADD PRIMARY KEY("id");
CREATE INDEX "data_map_map_pkey_index" ON
    "data"."map"("map_pkey");
CREATE INDEX "data_map_account_id_index" ON
    "data"."map"("account_id");
CREATE TABLE "data"."link"(
    "id" INTEGER NOT NULL,
    "node_a" INTEGER NOT NULL,
    "node_b" INTEGER NOT NULL,
    "link_pkey" INTEGER NOT NULL,
    "node_a_id" INTEGER NOT NULL,
    "node_b_id" INTEGER NOT NULL
);
ALTER TABLE
    "data"."link" ADD PRIMARY KEY("id");
CREATE INDEX "data_link_link_pkey_index" ON
    "data"."link"("link_pkey");
CREATE INDEX "data_link_node_a_id_index" ON
    "data"."link"("node_a_id");
CREATE INDEX "data_link_node_b_id_index" ON
    "data"."link"("node_b_id");
CREATE TABLE "data"."permission"(
    "account" INTEGER NOT NULL,
    "func" VARCHAR(255) NOT NULL,
    "account_id" INTEGER NOT NULL
);
ALTER TABLE
    "data"."permission" ADD PRIMARY KEY("account");
CREATE INDEX "data_permission_account_id_index" ON
    "data"."permission"("account_id");
CREATE TABLE "data"."session"(
    "key" CHAR(255) NOT NULL,
    "account" INTEGER NOT NULL,
    "t_begin" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "t_end" TIMESTAMP(0) WITHOUT TIME ZONE NULL,
    "session_key" INTEGER NULL,
    "account_id" INTEGER NULL
);
ALTER TABLE
    "data"."session" ADD PRIMARY KEY("key");
CREATE INDEX "data_session_session_key_index" ON
    "data"."session"("session_key");
CREATE INDEX "data_session_account_id_index" ON
    "data"."session"("account_id");
CREATE TABLE "data"."sample"(
    "ts" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "node" INTEGER NOT NULL,
    "metric" INTEGER NOT NULL,
    "value" DOUBLE PRECISION NOT NULL,
    "idx_ts" INTEGER NOT NULL,
    "idx_node" INTEGER NOT NULL
);
ALTER TABLE
    "data"."sample" ADD PRIMARY KEY("ts");
CREATE INDEX "data_sample_idx_ts_index" ON
    "data"."sample"("idx_ts");
CREATE INDEX "data_sample_idx_node_index" ON
    "data"."sample"("idx_node");
ALTER TABLE
    "data"."collect" ADD CONSTRAINT "data_collect_node_id_foreign" FOREIGN KEY("node_id") REFERENCES "data"."node"("id");
ALTER TABLE
    "data"."collect" ADD CONSTRAINT "data_collect_metric_id_foreign" FOREIGN KEY("metric_id") REFERENCES "data"."metric"("id");
ALTER TABLE
    "data"."link" ADD CONSTRAINT "data_link_node_b_id_foreign" FOREIGN KEY("node_b_id") REFERENCES "data"."node"("id");
ALTER TABLE
    "data"."link" ADD CONSTRAINT "data_link_node_a_id_foreign" FOREIGN KEY("node_a_id") REFERENCES "data"."node"("id");
ALTER TABLE
    "data"."sample" ADD CONSTRAINT "data_sample_idx_node_foreign" FOREIGN KEY("idx_node") REFERENCES "data"."node"("id");
ALTER TABLE
    "data"."node" ADD CONSTRAINT "data_node_agent_id_foreign" FOREIGN KEY("agent_id") REFERENCES "data"."agent"("id");
ALTER TABLE
    "data"."session" ADD CONSTRAINT "data_session_account_id_foreign" FOREIGN KEY("account_id") REFERENCES "data"."account"("id");
ALTER TABLE
    "data"."permission" ADD CONSTRAINT "data_permission_account_id_foreign" FOREIGN KEY("account_id") REFERENCES "data"."account"("id");
ALTER TABLE
    "data"."map" ADD CONSTRAINT "data_map_account_id_foreign" FOREIGN KEY("account_id") REFERENCES "data"."account"("id");
ALTER TABLE
    "data"."node" ADD CONSTRAINT "data_node_map_id_foreign" FOREIGN KEY("map_id") REFERENCES "data"."map"("id");
>>>>>>> b4ae614483894686ae9fd922a6a6893f3b783df9
