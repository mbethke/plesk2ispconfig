SET NAMES utf8
SELECT 1 FROM access WHERE type = 'host' AND LOWER('157.55.33.49') LIKE LOWER(mask) AND status = 0 LIMIT 0, 1
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'variables'
SELECT data, created, headers, expire, serialized FROM cache_page WHERE cid = 'http://www.incahacienda.com/'
SELECT name, filename, throttle FROM system WHERE type = 'module' AND status = 1 AND bootstrap = 1 ORDER BY weight ASC, filename ASC
SELECT * FROM languages ORDER BY weight ASC, name ASC
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'variables:es'
SELECT name, filename, throttle FROM system WHERE type = 'module' AND status = 1 AND bootstrap = 1 ORDER BY weight ASC, filename ASC
SELECT COUNT(pid) FROM url_alias
SELECT src FROM url_alias WHERE dst = 'node/1' AND language IN('es', '') ORDER BY language DESC, pid DESC
UPDATE node_counter SET daycount = daycount + 1, totalcount = totalcount + 1, timestamp = 1349589962 WHERE nid = 1
INSERT INTO accesslog (title, path, url, hostname, uid, sid, timer, timestamp) values('', 'node/1', '', '157.55.33.49', 0, '1bkenlpal9nks03sq58qss7uh4', 8495, 1349589962)

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="25bc4bf44434278731b3fd8a310eb96c"
select * from sessions where sess_id="25bc4bf44434278731b3fd8a310eb96c" and click_time >= NOW() - INTERVAL 1800 SECOND
delete from sessions where sess_id="25bc4bf44434278731b3fd8a310eb96c"

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT id FROM locales WHERE id = "en-US"
SELECT id FROM locales WHERE active = "true" AND id != "en-US" LIMIT 3
SELECT login, type, ip_address FROM sessions WHERE sess_id="25bc4bf44434278731b3fd8a310eb96c"
select `id`,`name`,`place` from Skins where `id`=18
select cl_id from domains where name='zonarix.com'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=18
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =18
select `id`,`type`,`password` from accounts where `id`=76
SELECT `param`, `val` FROM cl_param WHERE cl_id = 18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=1
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=18

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="25bc4bf44434278731b3fd8a310eb96c"
select `id`,`name`,`place` from Skins where `id`=18
select cl_id from domains where name='zonarix.com'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=18
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =18
select `id`,`type`,`password` from accounts where `id`=76
SELECT `param`, `val` FROM cl_param WHERE cl_id = 18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=1
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="25bc4bf44434278731b3fd8a310eb96c"
select `id`,`name`,`place` from Skins where `id`=18
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:09:09'
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
select cl_id from domains where name='zonarix.com'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=18
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =18
select `id`,`type`,`password` from accounts where `id`=76
select logo_id from clients where id='18'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=1
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`fake`,`url` from Logos where `id`=1
SELECT login, type, ip_address FROM sessions WHERE sess_id="25bc4bf44434278731b3fd8a310eb96c"

select `id`,`name`,`place` from Skins where `id`=18
SELECT id FROM locales WHERE id = "en-US"
SELECT id FROM locales WHERE active = "true" AND id != "en-US" LIMIT 3
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = '/login_up.php3-#formPageCache' AND `uid` = '1024-0'
select cl_id from domains where name='zonarix.com'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=18
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =18
select `id`,`type`,`password` from accounts where `id`=76
SELECT `param`, `val` FROM cl_param WHERE cl_id = 18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=1
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
DELETE FROM PersistentCache WHERE `key` = '/login_up.php3-#formPageCache' AND `uid` = '1024-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('/login_up.php3-#formPageCache','1024-0','2012-10-08 02:09:11','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=18

INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590159), 'MAINMEM_USAGE', 28864, 12)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590159), 'CPU_USAGE', 0, 12)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590159), 'MAINMEM_USAGE', 20608, 2)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590159), 'CPU_USAGE', 0, 2)
INSERT INTO module_watchdog_sys_stat (time, type, value) VALUES(FROM_UNIXTIME(1349590159), 'MAINMEM_USAGE', 4041852)
INSERT INTO module_watchdog_sys_stat (time, type, value) VALUES(FROM_UNIXTIME(1349590159), 'CPU_USAGE', 0)
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="25bc4bf44434278731b3fd8a310eb96c"
select `id`,`name`,`place` from Skins where `id`=18
delete from lockout where (UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(last_wrong)) > (30 * 60)
SELECT id, netaddr, netmask FROM cp_access WHERE type="allow"
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SELECT s.sess_id, s.type, s.login_time, s.login, s.ip_address, s.click_time FROM sessions s WHERE 1 = 1
replace into sessions (sess_id, type, login, ip_address, login_time, click_time) VALUES ("13f8977145422635e85109194a4a31b2", "1", "admin", "200.93.212.74", NOW(), NOW())
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
delete from sessions where click_time < NOW() - INTERVAL 1800 SECOND
SELECT id, name, descr, enabled FROM actions
insert into log_actions(date, ip_address, user, action_id, object_id) values (NOW(), '200.93.212.74', 'admin', '66', '0')
INSERT INTO log_components (action_id, component, old_value, new_value) VALUES (4860,'Contact Name','','Andres Salgado')
select `name`,`version` from Components
SELECT user, command FROM event_handlers WHERE action_id='66' ORDER BY priority ASC
SELECT id FROM locales WHERE id = "en-US"
SELECT id FROM locales WHERE active = "true" AND id != "en-US" LIMIT 3
SELECT COUNT(*) FROM clients where type <> "admin"
SELECT COUNT(*) FROM domains
delete from lockout where login='admin'

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:09:59'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:10:01'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:10:03'
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
select `id`,`name`,`fake`,`url` from Logos where `id`=1
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"

select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:10:04'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = '/left.php3-dashboard#formPageCache' AND `uid` = '1-0'
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
DELETE FROM PersistentCache WHERE `key` = '/left.php3-dashboard#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('/left.php3-dashboard#formPageCache','1-0','2012-10-08 02:10:08','ui_update,api_update')
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND

update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:10:08'
SELECT `key`, `uid` FROM PersistentCache WHERE `events` LIKE '%ui_update%'
DELETE FROM PersistentCache WHERE `events` LIKE '%ui_update%'

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:10:09'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/dashboard-dashboard#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=1
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/dashboard' AND `uid` = '1-0'
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=1 ORDER BY `parent_id`, `ord` DESC
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
select `id`,`ip_address`,`mask`,`iface`,`ssl_certificate_id`,`default_domain_id`,`ftps` from IP_Addresses where `id`=1
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
SELECT count(*) FROM clients WHERE type="reseller"
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT count(*) FROM clients WHERE type="client"
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (1)
SELECT COUNT(*) FROM domains
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id) 1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
SELECT count(*) FROM domains
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
SELECT sum(ct.http_in) + sum(ct.ftp_in) + sum(ct.smtp_in) + sum(ct.pop3_imap_in) + sum(ct.http_out) + sum(ct.ftp_out) + sum(ct.smtp_out) + sum(ct.pop3_imap_out) FROM ClientsTraffic ct WHERE (ct.date between '2012-10-01' and '2012-10-07')
select c.id as `id`, c.login as `name`, c.parent_id as `parent_id` from clients c where  1=1
select id as `id`, login as `name`, NULL as `parent_id` from clients where  1=1
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and  1=1
select `name`,`version` from Components
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id, name, packname, display_name, version, `release`, description, icon FROM Modules ORDER BY name
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "admin" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(id) FROM SiteAppPackages
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT COUNT(id) FROM SiteAppPackages
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
DELETE FROM PersistentCache WHERE `key` = 'plesk/dashboard' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/dashboard','1-0','2012-10-08 02:10:14','ui_update,api_update')
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select count(*) from DashboardPresetConfig where id=2888
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6663, `uri`="/plesk/dashboard/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Home Page", `description`= "Home page of Andres Salgado."  where `id`=2888
DELETE FROM PersistentCache WHERE `key` = 'plesk/dashboard-dashboard#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/dashboard-dashboard#formPageCache','1-0','2012-10-08 02:10:14','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:11:22'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@any/domain@-dashboard#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
SELECT d.id, d.status, d.overuse, d.htype, d.displayName, UNIX_TIMESTAMP(d.cr_date), d.real_size, c.id, c.type, c.pname, c.cname FROM domains d, clients c WHERE d.cl_id = c.id AND   1
SELECT d.id, sd.id, sd.displayName FROM domains d, clients c, subdomains sd WHERE d.cl_id = c.id AND sd.dom_id = d.id AND   1=1
SELECT d.id, da.id, da.displayName FROM domains d, clients c, domainaliases da WHERE d.cl_id = c.id AND da.dom_id = d.id AND   1=1
SELECT dt.dom_id, sum(dt.http_in) + sum(dt.ftp_in) + sum(dt.smtp_in) + sum(dt.pop3_imap_in) + sum(dt.http_out) + sum(dt.ftp_out) + sum(dt.smtp_out) + sum(dt.pop3_imap_out) FROM DomainsTraffic dt WHERE (dt.date between '2012-10-01' and '2012-10-07') GROUP BY dt.dom_id
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (1)
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
SELECT COUNT(*) FROM domains
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select count(*) from DashboardPresetConfig where id=2916
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6664, `uri`="/plesk/client@any/domain@/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Domains", `description`= "Manage domains."  where `id`=2916
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@any/domain@-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@any/domain@-domains#formPageCache','1-0','2012-10-08 02:11:24','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:12:08'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60-domains#formPageCache','1-0','2012-10-08 02:12:08','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:12:10'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/dashboard-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select `dom_id`,`state`,`account_id`,`card_id`,`perm_id` from dom_level_usrs where `dom_id`=60
SELECT `param`, `val` FROM dom_param WHERE dom_id = 60
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=3
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/dashboard' AND `uid` = '1-0'
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=3 ORDER BY `parent_id`, `ord` DESC
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, login as `name`, NULL as `parent_id` from clients where  1=1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select `dom_id`,`sys_user_id`,`ip_address_id`,`ssl`,`same_ssl`,`fp`,`fp_ssl`,`fp_enable`,`fp_adm`,`fp_pass`,`ssi`,`php`,`php_safe_mode`,`php_handler_type`,`cgi`,`perl`,`python`,`fastcgi`,`miva`,`coldfusion`,`asp`,`asp_dot_net`,`webstat`,`traffic_bandwidth`,`max_connection` from hosting where `dom_id`=60
select `id`,`ip_address`,`mask`,`iface`,`ssl_certificate_id`,`default_domain_id`,`ftps` from IP_Addresses where `id`=1
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
select `id`,`limit_name`,`value` from Limits where `id`=88
SELECT sum(dt.http_in) + sum(dt.ftp_in) + sum(dt.smtp_in) + sum(dt.pop3_imap_in) + sum(dt.http_out) + sum(dt.ftp_out) + sum(dt.smtp_out) + sum(dt.pop3_imap_out) FROM DomainsTraffic dt WHERE (dt.date between '2012-10-01' and '2012-10-07') AND (dt.dom_id='60')
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where dom_id = 60 and  1=1
select `name`,`version` from Components
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
select `id`,`permission`,`value` from Permissions where `id`=144
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `id`, `product_id`, `name`, `version`, `release`, `docroot`, `enabled` FROM Webmails
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where  1=1
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT cl_id, displayName, name, cert_rep_id FROM domains WHERE id='60'
select `id`,`login`,`home`,`shell`,`quota`,`account_id` from sys_users where `id`=57
select `id`,`type`,`password` from accounts where `id`=257
select pool_id from clients where id='7'
SELECT ip.id, ip.ip_address, pool.type, cert.id, cert.name FROM (IP_Addresses ip LEFT JOIN certificates cert ON cert.id = ip.ssl_certificate_id) INNER JOIN ip_pool pool ON ip.id=pool.ip_address_id WHERE pool.id=7
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, hosting h, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=7 AND h.ip_address_id=ip.id GROUP BY ip.id
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, forwarding f, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=7 AND f.ip_address_id=ip.id GROUP BY ip.id
SELECT cert.id, cert.name FROM domains d, certificates cert, Repository r WHERE d.cl_id=7 AND d.cert_rep_id=r.rep_id AND r.component_id=cert.id AND !ISNULL(cert.pvt_key) AND cert.pvt_key!="" AND !ISNULL(cert.cert) AND cert.cert!=""
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT `sb_site_id`, `sb_siteowner_login`, `sb_siteowner_id` FROM `SBSites` WHERE `virtualHost_id` =60
select `id`,`ip_address_id`,`type` from ip_pool where `id`=7
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'sysinfo:getshell'
SELECT cl_id, displayName, name, cert_rep_id FROM domains WHERE id='60'
select pool_id from clients where id='7'
SELECT ip.id, ip.ip_address, pool.type, cert.id, cert.name FROM (IP_Addresses ip LEFT JOIN certificates cert ON cert.id = ip.ssl_certificate_id) INNER JOIN ip_pool pool ON ip.id=pool.ip_address_id WHERE pool.id=7
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, hosting h, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=7 AND h.ip_address_id=ip.id GROUP BY ip.id
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, forwarding f, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=7 AND f.ip_address_id=ip.id GROUP BY ip.id
SELECT cert.id, cert.name FROM domains d, certificates cert, Repository r WHERE d.cl_id=7 AND d.cert_rep_id=r.rep_id AND r.component_id=cert.id AND !ISNULL(cert.pvt_key) AND cert.pvt_key!="" AND !ISNULL(cert.cert) AND cert.cert!=""
SELECT `sb_site_id`, `sb_siteowner_login`, `sb_siteowner_id` FROM `SBSites` WHERE `virtualHost_id` =60
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "domain" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT cb.id FROM custom_buttons cb, domains d, clients c, clients r WHERE cb.place = "domain" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND (d.cl_id = c.id OR d.cl_id = r.id) AND c.parent_id = r.id AND r.type = "reseller" AND r.id = cb.level_id AND d.id = 60 AND cb.level =2 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT cb.id FROM custom_buttons cb, domains d WHERE cb.place = "domain" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND d.cl_id = cb.level_id AND d.id = 60 AND cb.level =4 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "domain" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level_id = 60 AND cb.level =8 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
select `id`,`name`,`displayName`,`email`,`status`,`type`,`ttl`,`ttl_unit`,`refresh`,`refresh_unit`,`retry`,`retry_unit`,`expire`,`expire_unit`,`minimum`,`minimum_unit`,`serial`,`serial_format` from dns_zone where `id`=92
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT ai.id, sap.id, sap.name, cai.id, cai.instances_limit FROM ((SiteAppPackages AS sap		LEFT JOIN siteapppackages_apscategories as sap_cat ON sap_cat.siteapppackage_id = sap.id)		INNER JOIN APSApplicationItems as ai ON sap.id = ai.pkg_id)		LEFT JOIN APSClientApplicationItems AS cai ON (ai.id=cai.app_item_id AND cai.client_id=7)	WHERE (cai.client_id=7 OR (cai.id IS NULL ))
select `client_id`,`app_item_id`,`instances_limit`,`id`,`broadcast` from APSClientApplicationItems where `client_id`=7
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=1
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `client_id`,`app_item_id`,`instances_limit`,`id`,`broadcast` from APSClientApplicationItems where `client_id`=1
SELECT id FROM SiteApps WHERE dom_type="domain" AND dom_id="60" AND htdocs_directory = "httpdocs" AND install_prefix = _ascii"."
SELECT id, displayName, same_ssl, `ssl` FROM subdomains WHERE dom_id=60
select data_bases.id as `id`, data_bases.name as `name`, data_bases.dom_id as `parent_id`, DatabaseServers.host, DatabaseServers.port from DatabaseServers, data_bases where data_bases.dom_id = 60 and (data_bases.db_server_id = DatabaseServers.id) and  1=1
SELECT ai.id, sap.id, sap.name, cai.id, cai.instances_limit FROM ((SiteAppPackages AS sap		LEFT JOIN siteapppackages_apscategories as sap_cat ON sap_cat.siteapppackage_id = sap.id)		INNER JOIN APSApplicationItems as ai ON sap.id = ai.pkg_id)		LEFT JOIN APSClientApplicationItems AS cai ON (ai.id=cai.app_item_id AND cai.client_id=7)	WHERE (cai.client_id=7 OR (cai.id IS NULL ))
SELECT id FROM SiteApps WHERE dom_type="domain" AND dom_id="60" AND htdocs_directory = "httpdocs" AND install_prefix = _ascii"."
SELECT id, displayName, same_ssl, `ssl` FROM subdomains WHERE dom_id=60
select data_bases.id as `id`, data_bases.name as `name`, data_bases.dom_id as `parent_id`, DatabaseServers.host, DatabaseServers.port from DatabaseServers, data_bases where (data_bases.db_server_id = DatabaseServers.id) and  1=1
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/dashboard' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60/dashboard','1-0','2012-10-08 02:12:15','ui_update,api_update')
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=14
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =14
select `id`,`type`,`password` from accounts where `id`=57
SELECT d.id as id, d.displayName as name FROM domains d WHERE d.cl_id= 7 AND d.id <> 60
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (13)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (15)
DELETE FROM DashboardPresetConfig WHERE id = 2919
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6665, "/plesk/client@7/domain@60/dashboard/",  423, "true", "shortcut",  "Domain tastefunatic.com",  "Home page of domain tastefunatic.com. Here you can manage this domain.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/dashboard-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60/dashboard-domains#formPageCache','1-0','2012-10-08 02:12:15','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:12:15'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@any/domain@-domains#formPageCache' AND `uid` = '1-0'
SELECT d.id, d.status, d.overuse, d.htype, d.displayName, UNIX_TIMESTAMP(d.cr_date), d.real_size, c.id, c.type, c.pname, c.cname FROM domains d, clients c WHERE d.cl_id = c.id AND   1
SELECT d.id, sd.id, sd.displayName FROM domains d, clients c, subdomains sd WHERE d.cl_id = c.id AND sd.dom_id = d.id AND   1=1
SELECT d.id, da.id, da.displayName FROM domains d, clients c, domainaliases da WHERE d.cl_id = c.id AND da.dom_id = d.id AND   1=1
SELECT dt.dom_id, sum(dt.http_in) + sum(dt.ftp_in) + sum(dt.smtp_in) + sum(dt.pop3_imap_in) + sum(dt.http_out) + sum(dt.ftp_out) + sum(dt.smtp_out) + sum(dt.pop3_imap_out) FROM DomainsTraffic dt WHERE (dt.date between '2012-10-01' and '2012-10-07') GROUP BY dt.dom_id
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (1)
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
SELECT COUNT(*) FROM domains
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select count(*) from DashboardPresetConfig where id=2916
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6666, `uri`="/plesk/client@any/domain@/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Domains", `description`= "Manage domains."  where `id`=2916

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:12:37'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60-domains#formPageCache' AND `uid` = '1-0'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:12:39'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/dashboard-domains#formPageCache' AND `uid` = '1-0'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select `dom_id`,`state`,`account_id`,`card_id`,`perm_id` from dom_level_usrs where `dom_id`=60
SELECT `param`, `val` FROM dom_param WHERE dom_id = 60
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=3
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/dashboard' AND `uid` = '1-0'
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select count(*) from DashboardPresetConfig where id=2924
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6667, `uri`="/plesk/client@7/domain@60/dashboard/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Domain tastefunatic.com", `description`= "Home page of domain tastefunatic.com. Here you can manage this domain."  where `id`=2924

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590459), 'MAINMEM_USAGE', 33908, 12)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590459), 'CPU_USAGE', 0, 12)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590459), 'MAINMEM_USAGE', 20608, 2)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590459), 'CPU_USAGE', 0, 2)
INSERT INTO module_watchdog_sys_stat (time, type, value) VALUES(FROM_UNIXTIME(1349590459), 'MAINMEM_USAGE', 4022740)
INSERT INTO module_watchdog_sys_stat (time, type, value) VALUES(FROM_UNIXTIME(1349590459), 'CPU_USAGE', 0)
SET NAMES utf8
SELECT 1 FROM access WHERE type = 'host' AND LOWER('66.249.73.73') LIKE LOWER(mask) AND status = 0 LIMIT 0, 1
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'variables'
SELECT name, filename, throttle FROM system WHERE type = 'module' AND status = 1 AND bootstrap = 1 ORDER BY weight ASC, filename ASC
SELECT * FROM languages ORDER BY weight ASC, name ASC
SELECT COUNT(pid) FROM url_alias
SELECT src FROM url_alias WHERE dst = 'content/de-que-manera-puedes-intervenir-para-la-aprobacion-del-presupuesto' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT name, filename, throttle FROM system WHERE type = 'module' AND status = 1 ORDER BY weight ASC, filename ASC
SELECT uid_from FROM masquerade WHERE sid = '6n1ualrrtufp1ef13i0tcviug7' AND uid_as = 0
SELECT p.perm FROM role r INNER JOIN permission p ON p.rid = r.rid WHERE r.rid IN (1)
SELECT * FROM adv_taxonomy_menu
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'context'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'plugins:context:plugins'
SELECT * FROM menu_router WHERE path IN ('node/185','node/%','node') ORDER BY fit DESC LIMIT 0, 1
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'schema'
SELECT n.nid, n.type, n.language, n.uid, n.status, n.created, n.changed, n.comment, n.promote, n.moderate, n.sticky, n.tnid, n.translate, r.vid, r.uid AS revision_uid, r.title, r.body, r.teaser, r.log, r.timestamp AS revision_timestamp, r.format, u.name, u.picture, u.data FROM node n INNER JOIN users u ON u.uid = n.uid INNER JOIN node_revisions r ON r.vid = n.vid WHERE n.nid = 185
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'locale:es'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'A <em>blog entry</em> is a single post to an online journal, or <em>blog</em>.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'A <em>poll</em> is a question with a set of possible responses. A <em>poll</em>, once created, automatically provides a simple running count of the number of votes received for each response.' AND s.textgroup = 'default'
SELECT nt.type, nt.* FROM node_type nt ORDER BY nt.type ASC
SELECT question, detailed_question FROM faq_questions WHERE nid = 185 AND vid = 185
SELECT last_comment_timestamp, last_comment_name, comment_count FROM node_comment_statistics WHERE nid = 185
SELECT t.*,v.weight AS v_weight_unused FROM term_node r INNER JOIN term_data t ON r.tid = t.tid INNER JOIN vocabulary v ON t.vid = v.vid WHERE r.vid = 185 ORDER BY v.weight, t.weight, t.name
SELECT * FROM files f INNER JOIN upload r ON f.fid = r.fid WHERE r.vid = 185 ORDER BY r.weight, f.fid
SELECT * FROM adv_taxonomy_menu
SELECT data, created, headers, expire, serialized FROM cache_content WHERE cid = 'content_type_info:es'
SELECT imported, guid, url, feed_nid FROM feeds_node_item WHERE nid = 185
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = '_feeds_importer_digest'
SELECT v.vid, v.*, n.type FROM vocabulary v LEFT JOIN vocabulary_node_types n ON v.vid = n.vid WHERE n.type = 'faq' ORDER BY v.weight, v.name
SELECT theme FROM themekey_ui_node_theme WHERE nid = 185 AND vid = 185
SELECT sid FROM workflow_node WHERE nid = 185
SELECT wid FROM workflow_type_map WHERE type = 'faq'
SELECT sid FROM workflow_states WHERE wid = 0 AND sysid = 1
SELECT * FROM workflow_scheduled_transition WHERE nid = 185
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1 LIMIT 0, 1
SELECT DISTINCT b.* FROM blocks b LEFT JOIN blocks_roles r ON b.module = r.module AND b.delta = r.delta WHERE b.theme = 'activate' AND (r.rid IN (1) OR r.rid IS NULL) ORDER BY b.region, b.weight, b.module
SELECT filename FROM system WHERE name = 'activate' AND type = 'theme'
SELECT src FROM url_alias WHERE dst = 'node/137' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT rid FROM path_redirect WHERE source = 'node/185' AND language IN ('es', '') ORDER BY language DESC, source DESC, rid DESC
SELECT * FROM themekey_properties WHERE enabled = 1 AND parent = 0 AND value <> '' ORDER BY weight
SELECT * FROM node WHERE nid = 185
SELECT theme FROM themekey_ui_node_theme WHERE nid = 185 AND vid = 185
SELECT data, created, headers, expire, serialized FROM cache_filter WHERE cid = '2:e502dd309e48e45fe0c55c5de4ac86de'
SELECT cache FROM filter_formats WHERE format = 2
SELECT * FROM filters WHERE format = 2 ORDER BY weight, module, delta
UPDATE cache_filter SET data = '<p>Todas las dependencias de los GAD deben preparar antes del 10 de septiembre de cada a&ntilde;o su plan operativo anual y el correspondiente presupuesto para el a&ntilde;o siguiente, que contemple los ingresos y egresos de conformidad con las prioridades establecidas en el Plan de Desarrollo y Ordenamiento Territorial y bajo los principios de la Participaci&oacute;n definidos en la Constituci&oacute;n y la ley (Art. 233, COOTAD). La Asamblea Local o la m&aacute;xima instancia de participaci&oacute;n conocer&aacute; el anteproyecto de presupuesto y expresar&aacute; su conformidad con las prioridades de inversi&oacute;n que consten en este documento. Posteriormente, el &oacute;rgano legislativo local conocer&aacute; toda esta documentaci&oacute;n (Art. 241, COOTAD).</p>\n', created = 1349590521, expire = 1349676921, headers = '', serialized = 0 WHERE cid = '2:e502dd309e48e45fe0c55c5de4ac86de'
INSERT INTO cache_filter (cid, data, created, expire, headers, serialized) VALUES ('2:e502dd309e48e45fe0c55c5de4ac86de', '<p>Todas las dependencias de los GAD deben preparar antes del 10 de septiembre de cada a&ntilde;o su plan operativo anual y el correspondiente presupuesto para el a&ntilde;o siguiente, que contemple los ingresos y egresos de conformidad con las prioridades establecidas en el Plan de Desarrollo y Ordenamiento Territorial y bajo los principios de la Participaci&oacute;n definidos en la Constituci&oacute;n y la ley (Art. 233, COOTAD). La Asamblea Local o la m&aacute;xima instancia de participaci&oacute;n conocer&aacute; el anteproyecto de presupuesto y expresar&aacute; su conformidad con las prioridades de inversi&oacute;n que consten en este documento. Posteriormente, el &oacute;rgano legislativo local conocer&aacute; toda esta documentaci&oacute;n (Art. 241, COOTAD).</p>\n', 1349590521, 1349676921, '', 0)
SELECT data, created, headers, expire, serialized FROM cache_filter WHERE cid = '2:d41d8cd98f00b204e9800998ecf8427e'
SELECT aa.aid, a.type FROM trigger_assignments aa LEFT JOIN actions a ON aa.aid = a.aid WHERE aa.hook = 'nodeapi' AND aa.op = 'view' ORDER BY weight
SELECT data, created, headers, expire, serialized FROM cache_content WHERE cid = 'fieldgroup_data:es'
SELECT control_field_name, field_name, trigger_values FROM conditional_fields WHERE type = 'faq'
SELECT * FROM system WHERE type = 'theme'
SELECT filename FROM system WHERE name = 'blueprint' AND type = 'theme'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'theme_registry:activate'
SELECT * FROM custom_breadcrumb WHERE node_type = 'faq' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM custom_breadcrumbs_paths WHERE language IN ('es','') ORDER BY language ASC
SELECT dst FROM url_alias WHERE src = 'content/de-que-manera-puedes-intervenir-para-la-aprobacion-del-presupuesto' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT SUBSTRING(name, 30, 3) AS vid FROM variable WHERE name LIKE 'taxonomy_hierarchical_select_%' AND value LIKE 'i:1\;'
SELECT vid FROM vocabulary
SELECT * FROM menu_custom ORDER BY title
SELECT mlid FROM menu_links WHERE link_path = 'node/185' AND menu_name = 'primary-links' AND module = 'menu' ORDER BY mlid ASC LIMIT 0, 1
SELECT mlid FROM menu_links WHERE link_path = 'node/185' AND module = 'menu' ORDER BY mlid ASC LIMIT 0, 1
SELECT name, mail FROM users WHERE uid = 1
SELECT v.*, n.type FROM vocabulary v LEFT JOIN vocabulary_node_types n ON v.vid = n.vid WHERE v.vid = 3
SELECT vid, name 
SELECT t.* FROM term_node r INNER JOIN term_data t ON r.tid = t.tid INNER JOIN vocabulary v ON t.vid = v.vid WHERE r.vid = 185 ORDER BY v.weight, t.weight, t.name LIMIT 0, 1
SELECT * FROM term_data WHERE tid = 135
SELECT t.tid, t.* FROM term_data t INNER JOIN term_hierarchy h ON h.parent = t.tid WHERE h.tid = 135 ORDER BY weight, name
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/135' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = '¬øC√≥mo es' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT * FROM contemplate WHERE type = 'faq'
SELECT data FROM contemplate_files WHERE site = 'sites/default'
SELECT v.*, n.type FROM vocabulary v LEFT JOIN vocabulary_node_types n ON v.vid = n.vid WHERE v.vid = 4
SELECT dst FROM url_alias WHERE src = 'comment/reply/185' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/157' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'node' AND language IN ('es','') ORDER BY language ASC
SELECT COUNT(*) FROM comments c WHERE c.nid = 185 AND c.status = 0
SELECT c.cid as cid, c.pid, c.nid, c.subject, c.comment, c.format, c.timestamp, c.name, c.mail, c.homepage, u.uid, u.name AS registered_name, u.signature, u.signature_format, u.picture, u.data, c.thread, c.status FROM comments c INNER JOIN users u ON c.uid = u.uid WHERE c.nid = 185 AND c.status = 0 ORDER BY c.thread DESC LIMIT 0, 50
SELECT comment FROM node WHERE nid = 185
SELECT name,type,info FROM system
SELECT info FROM system WHERE type = 'theme' AND name = 'activate'
SELECT module,weight,delta,region,status FROM blocks WHERE theme = 'activate' ORDER BY weight ASC
SELECT DISTINCT b.* FROM blocks b LEFT JOIN blocks_roles r ON b.module = r.module AND b.delta = r.delta WHERE b.theme = 'activate' AND b.status = 1 AND (r.rid IN (1) OR r.rid IS NULL) ORDER BY b.region, b.weight, b.module
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'om_maximenu_tabbed' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'om_maximenu_tabbed_links' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'om_maximenu_tabbed_content' AND language IN ('es','') ORDER BY language ASC
SELECT mid, menu_name FROM jquerymenus
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-judicial:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-judicial:tree-data:f85234321a535f21d3dd57887950912c'
SELECT * FROM views_view WHERE name = 'taxonomy_term'
SELECT * FROM views_display WHERE vid = 5 ORDER BY position
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Makes the view results available as a context for use in Panels and other applications.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Date back/next navigation to attach to other displays. Requires the Date argument.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Display a JQuery accordion with the results. The first field will be used as the header and trigger.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Calendar page. Attach Calendar period attachments to this page, set to show the year, month, day, and week views.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Calendar page. Attach a Calendar period attachment to this block, set to show the year, month, day, or week view.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'An attachment for a Year, Month, Day, or Week calendar display, using any style you choose. Attach to a Calendar page and/or a Calendar block.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Attachments added to other displays to achieve multiple views in the same view.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Displays the summary unformatted, with option for one after another or inline.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Use Drupal core t() function. Not recommended, as it doesn\'t support updates to existing strings.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'If you need to translate Views labels into other languages, consider installing the <a href=\"!path\">Internationalization</a> package\'s Views translation module.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Puts all of the results into a select box and allows the user to go to a different page based upon the results.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Display the view as a page, with a URL and the option to select a background image.' AND s.textgroup = 'default'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'autoload'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'unpack_options:5cf4e4329428956ae61a9573cbb5ec08:es'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'unpack_options:b909d2e3a77d187f6e28b09b63b1ccfb:es'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'unpack_options:a6f9b5e1c7a0cc33335d9aa77d2f9abf:es'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'unpack_options:527db7b88cee7adfd888a8451f8b4180:es'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'unpack_options:835d433d924a9fa752987840ec091045:es'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_data:es'
SELECT * FROM term_data WHERE tid = 68
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 69
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 70
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 71
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 77
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 76
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 75
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 73
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 74
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 72
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-ejecutiva:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-ejecutiva:tree-data:6fb853b43322c6b82078d89a7fdfb00b'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 1
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 2
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 3
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 174
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 5
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 18
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 14
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 20
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 17
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 15
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 13
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 19
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 21
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 16
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 6
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 25
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 22
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 29
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 24
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 30
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 27
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 28
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 26
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 7
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 52
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 36
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 49
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 50
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 35
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 31
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 41
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 47
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 33
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 53
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 51
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 40
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 48
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 32
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 43
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 42
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 39
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 38
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 37
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 44
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 45
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 46
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 34
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 8
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 54
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 56
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 57
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 55
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 58
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 9
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 59
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 10
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 61
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 63
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 62
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 60
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 11
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 64
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 12
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 65
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-legislativa:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-legislativa:tree-data:288f60b13f7304496e602263fe2d33cc'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 4
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 66
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 67
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-electoral:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-electoral:tree-data:1e86fc78ab48a6433979286899619b4c'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 78
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 79
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 80
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 85
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 83
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 81
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 82
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 84
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 86
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-transparencia:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-funcion-transparencia:tree-data:7525400f830ab74969f25df837d2a01c'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 87
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 88
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 89
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 94
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 90
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 92
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 91
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 93
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-sistemas-nacionales:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-sistemas-nacionales:tree-data:4f54fa1a59960410b95e9c277cfde147'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 121
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 122
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 123
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 124
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 125
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 126
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 127
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 128
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 129
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 130
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 131
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 132
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 133
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 134
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-gobiernos-autonomos:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-gobiernos-autonomos:tree-data:9b701058ab9a8e74a81c158c47c02635'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 95
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 100
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 101
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 102
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 103
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 98
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 99
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 96
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 97
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 104
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 108
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 105
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 106
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 107
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-otras-instituciones:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-otras-instituciones:tree-data:ac101ca0f77026f8ecb4ae1ab979e40a'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 109
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 111
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 110
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-consejos-sectoriales:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-consejos-sectoriales:tree-data:0beec42c351fce75818221c93ce6fade'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 112
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 113
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 114
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 115
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 116
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 117
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 118
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 119
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 120
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-participacion-ciudadana:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-participacion-ciudadana:tree-data:01a5210ad032ec53ccfe3c36a2394306'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 149
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 146
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 152
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 147
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 153
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 154
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 155
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 156
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 157
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 162
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 161
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 158
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 159
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 160
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 148
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 163
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 164
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 165
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 151
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 145
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 144
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 143
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 139
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 142
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 141
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 140
SELECT title FROM menu_custom WHERE menu_name = 'menu-participacion-ciudadana'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-participacion-ciudadana:page-cid:node/185:1'
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'menu-participacion-ciudadana' AND link_path IN ('node/185')
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'menu-participacion-ciudadana' AND link_path = 'node/%'
SELECT mlid FROM menu_links WHERE menu_name = 'menu-participacion-ciudadana' AND expanded = 1 AND has_children = 1 AND plid IN (0) AND mlid NOT IN (0)
SELECT m.load_functions, m.to_arg_functions, m.access_callback, m.access_arguments, m.page_callback, m.page_arguments, m.title, m.title_callback, m.title_arguments, m.type, m.description, ml.*s ml LEFT JOIN menu_router m ON m.path = ml.router_pathname = 'menu-participacion-ciudadana' AND ml.plid IN (0)C, p2 ASC, p3 ASC, p4 ASC, p5 ASC, p6 ASC, p7 ASC, p8 ASC, p9 ASC
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-participacion-ciudadana:tree-data:65012ff1203b5da9b3af350873a41d28'
UPDATE cache_menu SET data = 'links:menu-participacion-ciudadana:tree-data:65012ff1203b5da9b3af350873a41d28', created = 1349590524, expire = 0, headers = '', serialized = 0 WHERE cid = 'links:menu-participacion-ciudadana:page-cid:node/185:1'
INSERT INTO cache_menu (cid, data, created, expire, headers, serialized) VALUES ('links:menu-participacion-ciudadana:page-cid:node/185:1', 'links:menu-participacion-ciudadana:tree-data:65012ff1203b5da9b3af350873a41d28', 1349590524, 0, '', 0)
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/152' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/146' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/153' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/154' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/155' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/156' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/162' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/161' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/158' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/160' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/159' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/147' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/164' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/165' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/163' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/148' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/145' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/144' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/143' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/139' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/142' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/141' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/140' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'taxonomy/term/151' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-tus-derechos:all-cid:0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-tus-derechos:tree-data:6399cb7dd038b9a8dc5d49ef63987804'
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 175
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 186
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 187
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 176
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 188
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 189
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 190
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 191
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 192
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 193
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 194
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 195
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 196
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 197
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 198
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 199
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 177
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 200
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 201
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 202
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 203
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 204
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 205
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 206
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 207
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 208
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 209
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 210
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 211
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 212
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 178
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 213
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 214
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 215
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 216
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 217
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 218
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 219
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 220
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 221
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 222
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 223
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 224
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 225
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 226
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 227
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 228
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 229
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 230
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 231
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 232
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 179
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 233
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 234
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 235
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 236
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 237
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 238
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 239
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 240
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 241
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 242
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 243
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 244
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 245
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 246
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 247
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 248
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 250
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 249
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 251
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 253
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 338
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 180
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 254
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 255
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 256
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 257
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 258
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 259
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 260
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 261
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 262
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 263
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 264
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 265
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 266
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 267
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 268
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 181
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 269
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 270
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 271
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 272
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 273
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 274
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 275
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 276
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 277
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 278
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 279
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 280
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 281
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 182
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 282
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 283
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 284
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 285
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 286
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 287
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 288
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 289
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 290
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 291
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 292
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 183
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 293
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 294
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 295
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 296
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 297
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 298
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 300
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 299
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 301
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 184
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 185
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 302
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 303
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 304
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 305
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 306
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 307
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 308
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 309
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 310
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 311
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 312
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 313
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 314
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 315
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 316
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 317
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 318
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 319
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 320
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 321
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 322
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 323
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 324
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 325
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 326
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 327
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 328
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 329
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 330
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 331
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 332
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 333
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 334
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 335
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 336
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 337
SELECT data, created, headers, expire, serialized FROM cache_views WHERE cid = 'views_default:taxonomy_term:es'
SELECT * FROM term_data WHERE tid = 252
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'om_maximenu_content' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'om_maximenu_wrapper' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'context_block_editable_region' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'block' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM menu_custom ORDER BY title
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-preface-menu:page-cid:node/185:1'
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'menu-preface-menu' AND link_path IN ('node/185')
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'menu-preface-menu' AND link_path = 'node/%'
SELECT mlid FROM menu_links WHERE menu_name = 'menu-preface-menu' AND expanded = 1 AND has_children = 1 AND plid IN (0) AND mlid NOT IN (0)
SELECT m.load_functions, m.to_arg_functions, m.access_callback, m.access_arguments, m.page_callback, m.page_arguments, m.title, m.title_callback, m.title_arguments, m.type, m.description, ml.*s ml LEFT JOIN menu_router m ON m.path = ml.router_pathname = 'menu-preface-menu' AND ml.plid IN (0)C, p2 ASC, p3 ASC, p4 ASC, p5 ASC, p6 ASC, p7 ASC, p8 ASC, p9 ASC
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:menu-preface-menu:tree-data:18957f48367788b3e2048ce1385d9e1f'
UPDATE cache_menu SET data = 'links:menu-preface-menu:tree-data:18957f48367788b3e2048ce1385d9e1f', created = 1349590525, expire = 0, headers = '', serialized = 0 WHERE cid = 'links:menu-preface-menu:page-cid:node/185:1'
INSERT INTO cache_menu (cid, data, created, expire, headers, serialized) VALUES ('links:menu-preface-menu:page-cid:node/185:1', 'links:menu-preface-menu:tree-data:18957f48367788b3e2048ce1385d9e1f', 1349590525, 0, '', 0)
SELECT COUNT(*) FROM node_access WHERE nid = 0 AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1
SELECT n.nid FROM node n WHERE n.status = 1 AND n.nid IN (261)
SELECT dst FROM url_alias WHERE src = 'node/261' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT * FROM menu_router WHERE tab_root = 'node/%' ORDER BY weight, title
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1 LIMIT 0, 1
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1 LIMIT 0, 1
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_update >= 1 LIMIT 0, 1
SELECT COUNT(vid) FROM node_revisions WHERE nid = 185
SELECT dst FROM url_alias WHERE src = 'admin/settings/actions' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'Triggers are system events, such as when new content is added or when a user logs in. Trigger module combines these triggers with actions (functional tasks), such as unpublishing content or e-mailing an administrator. The <a href=\"@url\">Actions settings page</a> contains a list of existing actions and provides the ability to create and configure additional actions.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'For every page request Drupal steps through this Theme Switching Rule Chain until an activated rule matches or it reaches the end. If a rule matches, the theme associated with this rule will be applied to render the requested page.' AND s.textgroup = 'default'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:primary-links:page-cid:node/185:1'
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'primary-links' AND link_path IN ('node/185')
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'primary-links' AND link_path = 'node/%'
SELECT m.load_functions, m.to_arg_functions, m.access_callback, m.access_arguments, m.page_callback, m.page_arguments, m.title, m.title_callback, m.title_arguments, m.type, m.description, ml.*s ml LEFT JOIN menu_router m ON m.path = ml.router_pathname = 'primary-links' AND ml.plid IN (0)C, p2 ASC, p3 ASC, p4 ASC, p5 ASC, p6 ASC, p7 ASC, p8 ASC, p9 ASC
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:primary-links:tree-data:5d6d3aaaaef5fba302ce62698fa37bbe'
UPDATE cache_menu SET data = 'links:primary-links:tree-data:5d6d3aaaaef5fba302ce62698fa37bbe', created = 1349590525, expire = 0, headers = '', serialized = 0 WHERE cid = 'links:primary-links:page-cid:node/185:1'
INSERT INTO cache_menu (cid, data, created, expire, headers, serialized) VALUES ('links:primary-links:page-cid:node/185:1', 'links:primary-links:tree-data:5d6d3aaaaef5fba302ce62698fa37bbe', 1349590525, 0, '', 0)
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:secondary-links:page-cid:node/185:1'
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'secondary-links' AND link_path IN ('node/185')
SELECT p1, p2, p3, p4, p5, p6, p7, p8 FROM menu_links WHERE menu_name = 'secondary-links' AND link_path = 'node/%'
SELECT m.load_functions, m.to_arg_functions, m.access_callback, m.access_arguments, m.page_callback, m.page_arguments, m.title, m.title_callback, m.title_arguments, m.type, m.description, ml.*s ml LEFT JOIN menu_router m ON m.path = ml.router_pathname = 'secondary-links' AND ml.plid IN (0)C, p2 ASC, p3 ASC, p4 ASC, p5 ASC, p6 ASC, p7 ASC, p8 ASC, p9 ASC
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:secondary-links:tree-data:5d6d3aaaaef5fba302ce62698fa37bbe'
UPDATE cache_menu SET data = 'links:secondary-links:tree-data:5d6d3aaaaef5fba302ce62698fa37bbe', created = 1349590525, expire = 0, headers = '', serialized = 0 WHERE cid = 'links:secondary-links:page-cid:node/185:1'
INSERT INTO cache_menu (cid, data, created, expire, headers, serialized) VALUES ('links:secondary-links:page-cid:node/185:1', 'links:secondary-links:tree-data:5d6d3aaaaef5fba302ce62698fa37bbe', 1349590525, 0, '', 0)
SELECT ws.sid, ws.state, w.name FROM workflow_states ws INNER JOIN workflows w ON ws.wid = w.wid WHERE status = 1 ORDER BY sid
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'plugins:feeds:plugins'
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'search_theme_form' AND language IN ('es','') ORDER BY language ASC
SELECT * FROM menu_router WHERE tab_root = 'node/%' ORDER BY weight, title
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1 LIMIT 0, 1
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1 LIMIT 0, 1
SELECT 1 FROM node_access WHERE (nid = 0 OR nid = 185) AND ((gid = 0 AND realm = 'all')) AND grant_update >= 1 LIMIT 0, 1
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'page' AND language IN ('es','') ORDER BY language ASC
SELECT dst FROM url_alias WHERE src = 'faq/157' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT t.tid, t.* FROM term_data t INNER JOIN term_hierarchy h ON h.parent = t.tid WHERE h.tid = 157 ORDER BY weight, name
SELECT dst FROM url_alias WHERE src = 'faq/147' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT t.tid, t.* FROM term_data t INNER JOIN term_hierarchy h ON h.parent = t.tid WHERE h.tid = 147 ORDER BY weight, name
SELECT dst FROM url_alias WHERE src = 'faq' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT * FROM custom_breadcrumbsapi WHERE module_page = 'noie6_widget' AND language IN ('es','') ORDER BY language ASC
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'page_title:settings'
SELECT mlid FROM menu_links WHERE link_path = 'node/185' AND menu_name = 'primary-links' AND module = 'menu' ORDER BY mlid ASC LIMIT 0, 1
SELECT mlid FROM menu_links WHERE link_path = 'node/185' AND module = 'menu' ORDER BY mlid ASC LIMIT 0, 1
SELECT name, mail FROM users WHERE uid = 1
SELECT vid, name 
SELECT t.* FROM term_node r INNER JOIN term_data t ON r.tid = t.tid INNER JOIN vocabulary v ON t.vid = v.vid WHERE r.vid = 185 ORDER BY v.weight, t.weight, t.name LIMIT 0, 1
SELECT t.tid, t.* FROM term_data t INNER JOIN term_hierarchy h ON h.parent = t.tid WHERE h.tid = 135 ORDER BY weight, name
SELECT title FROM taxonomy_title WHERE tid = 135
SELECT t.tid, t.* FROM term_data t INNER JOIN term_hierarchy h ON h.parent = t.tid WHERE h.tid = 135 ORDER BY weight, name
INSERT INTO accesslog (title, path, url, hostname, uid, sid, timer, timestamp) values('¬øDe qu√© manera puedes intervenir para la aprobaci√≥n del presupuesto? ', 'node/185', '', '66.249.73.73', 0, '6n1ualrrtufp1ef13i0tcviug7', 7624, 1349590526)

SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'A gallery is a article type similar in the form to a story or a page and is expanded with gallery functionalities.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'A gallery is a article type similar in the form to a story or a page and is expanded with gallery functionalities.' AND s.textgroup = 'default'
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'An image (with thumbnail). This is ideal for publishing photographs or screenshots.' AND s.textgroup = 'default'
SELECT s.lid, t.translation, s.version FROM locales_source s LEFT JOIN locales_target t ON s.lid = t.lid AND t.language = 'es' WHERE s.source = 'An image (with thumbnail). This is ideal for publishing photographs or screenshots.' AND s.textgroup = 'default'
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT nt.type, nt.* FROM node_type nt ORDER BY nt.type ASC
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
SELECT nt.type, nt.* FROM node_type nt ORDER BY nt.type ASC
SELECT dst FROM url_alias WHERE src = 'sitemap.xml' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'sitemap.xml' AND language IN('es', '') ORDER BY language DESC, pid DESC
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT src FROM url_alias WHERE dst = 'node/1' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT src FROM url_alias WHERE dst = 'node/1' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT rid FROM path_redirect WHERE source = 'sitemap.xml' AND language IN ('es', '') ORDER BY language DESC, source DESC, rid DESC
SELECT rid FROM path_redirect WHERE source = 'sitemap.xml' AND language IN ('es', '') ORDER BY language DESC, source DESC, rid DESC
SELECT * FROM menu_router WHERE path IN ('sitemap.xml') ORDER BY fit DESC LIMIT 0, 1
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM menu_router WHERE path IN ('sitemap.xml') ORDER BY fit DESC LIMIT 0, 1
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'xmlsitemap:registry:xmlsitemap.inc'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'xmlsitemap:registry:xmlsitemap.inc'
SELECT smid FROM xmlsitemap_sitemap WHERE smid = 't9UQ7FvqR0wMQMnd5n2XukH0kM9liAM9wOhfSLRl2qw' LIMIT 0, 1
SELECT smid FROM xmlsitemap_sitemap WHERE smid = 't9UQ7FvqR0wMQMnd5n2XukH0kM9liAM9wOhfSLRl2qw' LIMIT 0, 1
SELECT * FROM clients WHERE type = 'admin'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'schema'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'schema'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
SELECT * FROM xmlsitemap_sitemap WHERE smid IN ('')
INSERT INTO watchdog variables, severity, link, location, referer, hostname, timestamp), 'sitemap.xml', 'N;', 4, '', 'http://www.incahacienda.com/sitemap.xml', '', '157.55.116.45', 1349590589)
select `id`,`name`,`place` from Skins where `id`=11
SELECT * FROM xmlsitemap_sitemap WHERE smid IN ('')
INSERT INTO watchdog variables, severity, link, location, referer, hostname, timestamp), 'sitemap.xml', 'N;', 4, '', 'http://www.incahacienda.com/sitemap.xml', '', '157.55.116.45', 1349590591)
SELECT * FROM system WHERE type = 'theme'
SELECT * FROM system WHERE type = 'theme'
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:16:31'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'theme_registry:san_agustin'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'theme_registry:san_agustin'
SELECT info FROM system WHERE type = 'theme' AND name = 'san_agustin'
SELECT info FROM system WHERE type = 'theme' AND name = 'san_agustin'
SELECT DISTINCT b.* FROM blocks b LEFT JOIN blocks_roles r ON b.module = r.module AND b.delta = r.delta WHERE b.theme = 'san_agustin' AND b.status = 1 AND (r.rid IN (1) OR r.rid IS NULL) ORDER BY b.region, b.weight, b.module
SELECT DISTINCT b.* FROM blocks b LEFT JOIN blocks_roles r ON b.module = r.module AND b.delta = r.delta WHERE b.theme = 'san_agustin' AND b.status = 1 AND (r.rid IN (1) OR r.rid IS NULL) ORDER BY b.region, b.weight, b.module
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
SELECT module, captcha_type FROM captcha_points WHERE form_id = 'search_block_form'
SELECT module, captcha_type FROM captcha_points WHERE form_id = 'search_block_form'
SELECT dst FROM url_alias WHERE src = 'misc/powered-blue-80x15.png' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'misc/powered-blue-80x15.png' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:navigation:page-cid:sitemap.xml:1'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:navigation:page-cid:sitemap.xml:1'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail-domains#formPageCache' AND `uid` = '1-0'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:navigation:tree-data:e681afbd95007146be5c6708637e2912'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:navigation:tree-data:e681afbd95007146be5c6708637e2912'
SELECT * FROM users u WHERE uid = 0
SELECT * FROM users u WHERE uid = 0
SELECT r.rid, r.name FROM role r INNER JOIN users_roles ur ON ur.rid = r.rid WHERE ur.uid = 0
SELECT r.rid, r.name FROM role r INNER JOIN users_roles ur ON ur.rid = r.rid WHERE ur.uid = 0
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select id from DomainServices where dom_id='60' and type="mail"
SELECT * FROM nodewords WHERE type = 8 AND id = 0
SELECT * FROM nodewords WHERE type = 8 AND id = 0
select `id`,`dom_id`,`type`,`status`,`parameters_id` from DomainServices where `id`=60
select `id`,`parameter`,`value` from Parameters where `id`=60
select `name`,`version` from Components
SELECT * FROM menu_router WHERE tab_root = 'sitemap.xml' ORDER BY weight, title
SELECT * FROM menu_router WHERE tab_root = 'sitemap.xml' ORDER BY weight, title
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:primary-links:page-cid:sitemap.xml:1'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:primary-links:page-cid:sitemap.xml:1'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:primary-links:tree-data:384299e24e863bc1b5d02ce8d4fad8fa'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:primary-links:tree-data:384299e24e863bc1b5d02ce8d4fad8fa'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `param`, `val` FROM dom_param WHERE dom_id = 60
SELECT `id`, `product_id`, `name`, `version`, `release`, `docroot`, `enabled` FROM Webmails
SELECT	m.id,	m.mail_name,	d.cl_id,	c.pname,	d.id,	d.displayName,	d.name,	p.value,	m.postbox,	m.redirect,	m.mail_group,	m.autoresponder,	m.spamfilter,	dp.val,	m.virusfilterFROM	clients c,	domains d,	mail mLEFT JOIN Permissions p ON p.id = m.perm_id AND p.permission="cp_access"LEFT JOIN dom_param dp ON dp.dom_id = m.dom_id AND dp.param="gl_filter"WHERE d.id = m.dom_id AND c.id = d.cl_id AND m.dom_id='60'
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
SELECT COUNT(*) FROM node_access WHERE nid = 0 AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1
select `id`,`limit_name`,`value` from Limits where `id`=88
SELECT n.nid FROM node n   WHERE (n.language ='es' OR n.language ='' OR n.language IS NULL) AND (  n.status = 1 AND n.nid IN (1, 6))
SELECT COUNT(*) FROM node_access WHERE nid = 0 AND ((gid = 0 AND realm = 'all')) AND grant_view >= 1
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:secondary-links:page-cid:sitemap.xml:1'
SELECT n.nid FROM node n   WHERE (n.language ='es' OR n.language ='' OR n.language IS NULL) AND (  n.status = 1 AND n.nid IN (1, 6))
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:secondary-links:page-cid:sitemap.xml:1'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:secondary-links:tree-data:31a955c857fefd56cd096e9342230c7d'
SELECT data, created, headers, expire, serialized FROM cache_menu WHERE cid = 'links:secondary-links:tree-data:31a955c857fefd56cd096e9342230c7d'
SELECT n.nid FROM node n   WHERE (n.language ='es' OR n.language ='' OR n.language IS NULL) AND (  n.status = 1 AND n.nid IN (7, 8))
SELECT module, captcha_type FROM captcha_points WHERE form_id = 'search_theme_form'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT n.nid FROM node n   WHERE (n.language ='es' OR n.language ='' OR n.language IS NULL) AND (  n.status = 1 AND n.nid IN (7, 8))
SELECT module, captcha_type FROM captcha_points WHERE form_id = 'search_theme_form'
SELECT * FROM menu_router WHERE tab_root = 'sitemap.xml' ORDER BY weight, title
SELECT * FROM menu_router WHERE tab_root = 'sitemap.xml' ORDER BY weight, title
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'page_title:settings'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'page_title:settings'
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT * FROM menu_custom ORDER BY title
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
SELECT * FROM menu_custom ORDER BY title
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=14
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =14
select `id`,`type`,`password` from accounts where `id`=57
SELECT d.id as id, d.displayName as name FROM domains d WHERE d.cl_id= 7 AND d.id <> 60
SELECT * FROM nodewords WHERE type = 2 AND id = 404
SELECT * FROM nodewords WHERE type = 2 AND id = 404
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (13)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (13)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
DELETE FROM DashboardPresetConfig WHERE id = 2917
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6668, "/plesk/client@7/domain@60/mail/",  423, "true", "shortcut",  "Mail accounts",  "Manage mail accounts on domain tastefunatic.com.")
SELECT * FROM nodewords WHERE type = 1 AND id = 0
SELECT * FROM nodewords WHERE type = 1 AND id = 0
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60/mail-domains#formPageCache','1-0','2012-10-08 02:16:43','ui_update,api_update')
SELECT dst FROM url_alias WHERE src = 'the-san-agustin-story' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'the-san-agustin-story' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/accommodations/inca-house' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/accommodations/inca-house' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/excursions-and-activities-activities-detail' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/excursions-and-activities-activities-detail' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/history-and-archaeology' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/history-and-archaeology' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/conferences/meetings' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/conferences/meetings' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/inca-chapel' AND language IN('es', '') ORDER BY language DESC, pid DESC

SELECT dst FROM url_alias WHERE src = 'content/inca-chapel' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'contact-us' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'contact-us' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/our-location' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/our-location' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'node/7' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'node/7' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'node/8' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'node/8' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'press' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'press' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/rates-and-reservation' AND language IN('es', '') ORDER BY language DESC, pid DESC
SELECT dst FROM url_alias WHERE src = 'content/rates-and-reservation' AND language IN('es', '') ORDER BY language DESC, pid DESC
UPDATE cache_page SET data = 'ã\0\0\0\0\0\0µXkr€8˛=>Ç)ª&$%ÍmKL9∂3IU&ìMú}îÀÂÇHêÇM\0Íëa™ˆ{é=≈ﬁdO≤\rêî)[“8Ÿ]ó%ë@˜◊4∫?;ˇÌÏÚo.–L%1˙˘’ª∑g[éÛóŒô„ú_û£øæπ¸ıj€-ÙI	Ê+«πxè¬3•≤c«Y,ˆ¢cs9óù•∆ik∆Í—íÜÀTÄΩÉ±≥L‚TN∂\0¥G£Q…á5—qL“hÇ©ƒË˛)`bÇc%\0\r°Òåí\0`™“x˝í≥˘üÒT—TYó´åb‰óo¨ËR9\Zˇ˘3\"$Uì\\Ö÷#G√‡ˇi≥Ù	\ZO∞úq°¸\\!¨Õ\r\'ÿIòÙùêÃı†\r_)Äü`ñêà:K´$§R)≈TLΩ0áRÆP»Û4@˙DRt\ZÂR˝Îü)\n(:#qÃ«NI]r\ZEJl£±/¡Ö•bjS9£Taî–Äë	ˆµÜí)*ùÄÜ$èï2†’Ã˙sCáΩ¿ß›aœù∂˚a€%·àN[4ËÖ›VØÂ˜m#eÌáßäœK’ìò∫ÉakÿjπA8jµÜ˝∞’\n}∑’Ît˚üˆ‹µ∆	∆œ,ÎäÖ(VËÌ\Z\\{Îô⁄I•ÿR*8¬Ixêkô)g¥_~ó∞Mg=2Â°≠é◊P·ä¶Ø-kC∫ÙÀTìÛñÃI9äë˛g‹ÍˇõŒtÿùíÓp‘m—ùˆIá¥áAoJF£^ﬂæïÿ;%¨»^i0~r–¥=;?Ω<ΩrO‹˛)ßbeXqx.Úåƒ6ÑΩbi$_†ﬂûI?5√«;¯¬ÁQLIJ‚ïbæÑq†RÇ¯wøÂ*‚¿CÌ’ÿØÑ≈ä7GŒ˘\"ç9	∂ç]h=$„©Ü≈ÉØ!~AÑ˛‹DÜY∞¡ä)K_ŒãÄ˚]“\"åÁEƒ¬\"˙\nˇ,+f_ñ≈-≈mF_F≈≠,íÏ–-:E∑Ä˜£\"·ÛCFè^âd…ä,ãlñ…\"K£\"ÀTÒE%/AìB\0ô§§Ä’*@*ê°∏ê0\nµT≈ÇÃãEB‡øYP,cY@ö+æ†Fﬂ¿Fg`Qö«1˙vtrP-∆5DÏ˝*ÓãËˇvÀÎÿW3ö¿£$È\r—˘Ö•sêïhΩ±∂ƒÛÿ)sÒ¡x Éh∞9Úc\"!”Î¨IXJu“6!Üﬁëá§ÿ‹\nÜÅ¸pÄ¥fñI-∑%@*‹‹9[Ÿﬁ—Pm≤é*¶Gúöô%—û-÷p¿MÃ#n√öcDb»ˇÎ‹ÀRÙ¶Ù&0o´îZ≈O „\0ëtS≈ˆŒ∏‚Y2DÇ9ƒK.Ëx*¿”cM‡!êﬂ¶>AHL|™G`ôêº[=É¿–Dc‰lq–é·MøùÅ–áNÔcØAü«ı§é0â ]\'D¨,ÛÊ«¨ûOhö[Ω—\0ÖLË5ì:ƒ@cújUNÖÊÄãˆå!`_5åÃÿ!`RÃLŸÄn∑›nµ* Ò}û@ﬁ&JÁáÅ∑¨œ%‘mSarΩ Ë9I≤ÙëÛD\"¢Pc-±∑	≤GâV∞M	∫ÙsaìE“¿\"æbs¶ïÕ«\0∫Ø’∫üÅU–=ÑVg«‘>ÕFÓ6ÕfÃ¯µTK@◊B9ƒ‚j≠ˆ*\n#©A±[TØ3⁄&	~C\niœá=î@∫—%¢!ÜÍØW!§≤∂püIÉvï\0K3Î fÙﬁ£zUc^„•!¬…cÔ«ˆ GÕ$ô! r9≥j%˜lIAÔ`œ∆È∑€è7é…†æ≤r`®ûQæ?:˚€|≈sa≈‹7¡Ωv¢ı†◊|€-\0˙ÆM¸$—ã∫∆<´ºzjVªâA	ÇVc\rıK˘æΩ›≈^Eæ~06·3Ae3\ZÕ˚>O∫˝ù°\'à¢Â>*Êõ~}õÜ\\$*ú‚ë©ÆySŒÔ`CT·o∞∑eBıqq°zÀÇñF®Œ<≠ÍZB2{©U0Ï”LYıëæ|≠œ,pÍôq¿»8ÿi–§A≥L\'`iD\\ñÙ™∞ﬂì‡GEﬁb)Ñ6-hç.@£XZõR4  z$∆j[A≤ÃÙ\n–Ãê)ç·¿#v”cØ¥6Ø°÷l,ÕÚfìíeL”HÕ&∏ÌÇ≈)Ihm¬çÅª1VÓU\r⁄qˆÿ⁄=åÊ$Œu¸‘ã}°Îß)…uV-òú!≈Q	•Õ∞ÒÜ7J›ÙI©L<äÀ|ö0U´ ≥¶nfJ+T©Ò*ó>ÅÚΩÅ^8Äg,hZk“õiŒ‚‡Ü•√\rßâiµ)•p®s√vœm”nß3Íë~⁄¶kŸO§~ä\Zµ€`-qÀ≤5úX˝é=≥›ë‚kûG€©:˜?µ\r˝ˇ˝]BH	˙%á:IîÈK\0üÁq`Æ¶¥º\r∞⁄Û”O\r[^sÆvw‘ö=¢ﬁh§!Gf–ÏC}´C‡*ˇÔ§∆\Zú˚åƒ¶∏’\'ã∆EO≠´Œu6TG∑≥oàœ\0ô¨˜—üd¨ÌπÒΩÆ\0 œ=Ï›wú\\Ãùätj…V«]v‹F\'øFÑfRÓìLQ¶¿G?l≈e…ˇ›FTrÃ¥m=bÊﬂïvDÇÁYŸ5œæwQ ˜/âa˚Ccæ∑I+„w€Å¶≠{¢Ã”«0–_≤(E”’1zE°4@±\'Ëﬂˇ2≥æ†Do7=˝ïßD∞%˙dü⁄Ü‚πœ≥’	r[mw◊\\Ê=MÀ≤ï‹íN∂ß©á£?|õ3\'›D‰öî?EÅÆÆOÙ£≠Ÿ√+|˝¡)úÖr»Å/˛|jπùˆ–ÌÙ\\À≈◊Gõ¥ÊjFﬂOŒ]hrß€Í⁄˙zÙ•NXå~F˜s›⁄usigDÕtÚﬂ:Y’Ãü~\nûlB@S!®\0=√<5ΩŒ·˙]õ0jMY.‰ELı€!Æ\\st[{\rH˘MœπJ}òT\"ß˙Ç\ZﬁÕ÷ë«M&€Ïpà˜yå^¢ä–q§Ñ∂Î∏y[éè¥Qvy9f≠o« =HÙ}›â6C6≠à®™LêØVó$z^ª7Ê™u}\"¡õ˙¢È=®ÕRhF’+\nêF‰íG\'ﬂéw]\'¡cugcn¥a‡‡‡?∞˜ûá\Z\0\0', created = 1349590603, expire = -1, headers = 'Content-Type: text/html; charset=utf-8\nHTTP/1.1 404 Not Found', serialized = 0 WHERE cid = 'http://www.incahacienda.com/sitemap.xml'
UPDATE cache_page SET data = 'ã\0\0\0\0\0\0µXkr€8˛=>Ç)ª&$%ÍmKL9∂3IU&ìMú}îÀÂÇHêÇM\0Íëa™ˆ{é=≈ﬁdO≤\rêî)[“8Ÿ]ó%ë@˜◊4∫?;ˇÌÏÚo.–L%1˙˘’ª∑g[éÛóŒô„ú_û£øæπ¸ıj€-ÙI	Ê+«πxè¬3•≤c«Y,ˆ¢cs9óù•∆ik∆Í—íÜÀTÄΩÉ±≥L‚TN∂\0¥G£Q…á5—qL“hÇ©ƒË˛)`bÇc%\0\r°Òåí\0`™“x˝í≥˘üÒT—TYó´åb‰óo¨ËR9\Zˇ˘3\"$Uì\\Ö÷#G√‡ˇi≥Ù	\ZO∞úq°¸\\!¨Õ\r\'ÿIòÙùêÃı†\r_)Äü`ñêà:K´$§R)≈TLΩ0áRÆP»Û4@˙DRt\ZÂR˝Îü)\n(:#qÃ«NI]r\ZEJl£±/¡Ö•bjS9£Taî–Äë	ˆµÜí)*ùÄÜ$èï2†’Ã˙sCáΩ¿ß›aœù∂˚a€%·àN[4ËÖ›VØÂ˜m#eÌáßäœK’ìò∫ÉakÿjπA8jµÜ˝∞’\n}∑’Ît˚üˆ‹µ∆	∆œ,ÎäÖ(VËÌ\Z\\{Îô⁄I•ÿR*8¬Ixêkô)g¥_~ó∞Mg=2Â°≠é◊P·ä¶Ø-kC∫ÙÀTìÛñÃI9äë˛g‹ÍˇõŒtÿùíÓp‘m—ùˆIá¥áAoJF£^ﬂæïÿ;%¨»^i0~r–¥=;?Ω<ΩrO‹˛)ßbeXqx.Úåƒ6ÑΩbi$_†ﬂûI?5√«;¯¬ÁQLIJ‚ïbæÑq†RÇ¯wøÂ*‚¿CÌ’ÿØÑ≈ä7GŒ˘\"ç9	∂ç]h=$„©Ü≈ÉØ!~AÑ˛‹DÜY∞¡ä)K_ŒãÄ˚]“\"åÁEƒ¬\"˙\nˇ,+f_ñ≈-≈mF_F≈≠,íÏ–-:E∑Ä˜£\"·ÛCFè^âd…ä,ãlñ…\"K£\"ÀTÒE%/AìB\0ô§§Ä’*@*ê°∏ê0\nµT≈ÇÃãEB‡øYP,cY@ö+æ†Fﬂ¿Fg`Qö«1˙vtrP-∆5DÏ˝*ÓãËˇvÀÎÿW3ö¿£$È\r—˘Ö•sêïhΩ±∂ƒÛÿ)sÒ¡x Éh∞9Úc\"!”Î¨IXJu“6!Üﬁëá§ÿ‹\nÜÅ¸pÄ¥fñI-∑%@*‹‹9[Ÿﬁ—Pm≤é*¶Gúöô%—û-÷p¿MÃ#n√öcDb»ˇÎ‹ÀRÙ¶Ù&0o´îZ≈O „\0ëtS≈ˆŒ∏‚Y2DÇ9ƒK.Ëx*¿”cM‡!êﬂ¶>AHL|™G`ôêº[=É¿–Dc‰lq–é·MøùÅ–áNÔcØAü«ı§é0â ]\'D¨,ÛÊ«¨ûOhö[Ω—\0ÖLË5ì:ƒ@cújUNÖÊÄãˆå!`_5åÃÿ!`RÃLŸÄn∑›nµ* Ò}û@ﬁ&JÁáÅ∑¨œ%‘mSarΩ Ë9I≤ÙëÛD\"¢Pc-±∑	≤GâV∞M	∫ÙsaìE“¿\"æbs¶ïÕ«\0∫Ø’∫üÅU–=ÑVg«‘>ÕFÓ6ÕfÃ¯µTK@◊B9ƒ‚j≠ˆ*\n#©A±[TØ3⁄&	~C\niœá=î@∫—%¢!ÜÍØW!§≤∂püIÉvï\0K3Î fÙﬁ£zUc^„•!¬…cÔ«ˆ GÕ$ô! r9≥j%˜lIAÔ`œ∆È∑€è7é…†æ≤r`®ûQæ?:˚€|≈sa≈‹7¡Ωv¢ı†◊|€-\0˙ÆM¸$—ã∫∆<´ºzjVªâA	ÇVc\rıK˘æΩ›≈^Eæ~06·3Ae3\ZÕ˚>O∫˝ù°\'à¢Â>*Êõ~}õÜ\\$*ú‚ë©ÆySŒÔ`CT·o∞∑eBıqq°zÀÇñF®Œ<≠ÍZB2{©U0Ï”LYıëæ|≠œ,pÍôq¿»8ÿi–§A≥L\'`iD\\ñÙ™∞ﬂì‡GEﬁb)Ñ6-hç.@£XZõR4  z$∆j[A≤ÃÙ\n–Ãê)ç·¿#v”cØ¥6Ø°÷l,ÕÚfìíeL”HÕ&∏ÌÇ≈)Ihm¬çÅª1VÓU\r⁄qˆÿ⁄=åÊ$Œu¸‘ã}°Îß)…uV-òú!≈Q	•Õ∞ÒÜ7J›ÙI©L<äÀ|ö0U´ ≥¶nfJ+T©Ò*ó>ÅÚΩÅ^8Äg,hZk“õiŒ‚‡Ü•√ÌˆC:\n‹∞\Z“È`Í˝–Ô¥za0RÍØe?ë˙)j‘\nl_Äµƒ-À÷pbı;vÙÃztGäØymßÍ‹ˇ‘6Ùˇ˜w	!%ËóÍ$\rP¶/|û«Åπ\nò“Ú6¿~hœO?5lyÕπ⁄›QkRÙàz£ëÜôA≥ı≠nÅ´¸3ºê\ZkpÓ3õ‚Vü,\Z=!¥Æ:◊ŸP›Œæ!>d≤ﬁGfê±∂ÁzƒSÙ∫Ä<˜∞wﬂqr1w*“©%[wŸqù¸\ZömHπO2E-ò˝∞ó%ˇwQ…˝1–∂ıàôW⁄	ûge◊<˚ﬁE1(ﬂø$ÜÌç˘ﬁ&≠åﬂmö∂Óâ2O√@…¢MW«ËÖ“\0≈û†ˇ˝»Ã˙ÇΩ›ÙÙWû¡ñËì}jäÁ>œV\'»mµ›]wpô˜4-ÀVrK:Ÿû¶é˛mŒútë/hR˛∫∫>—è∂ndØ\rÙßp !æ@¯Û©Âv⁄C∑”s-_m“ö´}?9gt°…ùn´kÎÎ—ó:aM0˙‹œu#h◊Õ•ù5”…ÎdU3F¯y(x≤	aLÖ†Ù8Û‘Ù:áGËwmVD¿®5eπê1’oá∏rÕ—IDlÌ5 }‰7=G‰*ıaRâúÍwjx;4[Gc4ôl≥G¿!ﬁÁ1zâ*B«ë⁄Æ„Êm9>“FŸÂÂòµæ+˜ —˜u\'⁄Ÿ¥\"¢™2AæZ]íË=xÌﬁò´÷ıâoÍã¶˜<†6K°UØ(@zëHù|;:‹uùè’ùçπ—ÜÅÉÉˇ\0™‚ﬁ}\Z\0\0', created = 1349590603, expire = -1, headers = 'Content-Type: text/html; charset=utf-8\nHTTP/1.1 404 Not Found', serialized = 0 WHERE cid = 'http://www.incahacienda.com/sitemap.xml'
INSERT INTO cache_page (cid, data, created, expire, headers, serialized) VALUES ('http://www.incahacienda.com/sitemap.xml', 'ã\0\0\0\0\0\0µXkr€8˛=>Ç)ª&$%ÍmKL9∂3IU&ìMú}îÀÂÇHêÇM\0Íëa™ˆ{é=≈ﬁdO≤\rêî)[“8Ÿ]ó%ë@˜◊4∫?;ˇÌÏÚo.–L%1˙˘’ª∑g[éÛóŒô„ú_û£øæπ¸ıj€-ÙI	Ê+«πxè¬3•≤c«Y,ˆ¢cs9óù•∆ik∆Í—íÜÀTÄΩÉ±≥L‚TN∂\0¥G£Q…á5—qL“hÇ©ƒË˛)`bÇc%\0\r°Òåí\0`™“x˝í≥˘üÒT—TYó´åb‰óo¨ËR9\Zˇ˘3\"$Uì\\Ö÷#G√‡ˇi≥Ù	\ZO∞úq°¸\\!¨Õ\r\'ÿIòÙùêÃı†\r_)Äü`ñêà:K´$§R)≈TLΩ0áRÆP»Û4@˙DRt\ZÂR˝Îü)\n(:#qÃ«NI]r\ZEJl£±/¡Ö•bjS9£Taî–Äë	ˆµÜí)*ùÄÜ$èï2†’Ã˙sCáΩ¿ß›aœù∂˚a€%·àN[4ËÖ›VØÂ˜m#eÌáßäœK’ìò∫ÉakÿjπA8jµÜ˝∞’\n}∑’Ît˚üˆ‹µ∆	∆œ,ÎäÖ(VËÌ\Z\\{Îô⁄I•ÿR*8¬Ixêkô)g¥_~ó∞Mg=2Â°≠é◊P·ä¶Ø-kC∫ÙÀTìÛñÃI9äë˛g‹ÍˇõŒtÿùíÓp‘m—ùˆIá¥áAoJF£^ﬂæïÿ;%¨»^i0~r–¥=;?Ω<ΩrO‹˛)ßbeXqx.Úåƒ6ÑΩbi$_†ﬂûI?5√«;¯¬ÁQLIJ‚ïbæÑq†RÇ¯wøÂ*‚¿CÌ’ÿØÑ≈ä7GŒ˘\"ç9	∂ç]h=$„©Ü≈ÉØ!~AÑ˛‹DÜY∞¡ä)K_ŒãÄ˚]“\"åÁEƒ¬\"˙\nˇ,+f_ñ≈-≈mF_F≈≠,íÏ–-:E∑Ä˜£\"·ÛCFè^âd…ä,ãlñ…\"K£\"ÀTÒE%/AìB\0ô§§Ä’*@*ê°∏ê0\nµT≈ÇÃãEB‡øYP,cY@ö+æ†Fﬂ¿Fg`Qö«1˙vtrP-∆5DÏ˝*ÓãËˇvÀÎÿW3ö¿£$È\r—˘Ö•sêïhΩ±∂ƒÛÿ)sÒ¡x Éh∞9Úc\"!”Î¨IXJu“6!Üﬁëá§ÿ‹\nÜÅ¸pÄ¥fñI-∑%@*‹‹9[Ÿﬁ—Pm≤é*¶Gúöô%—û-÷p¿MÃ#n√öcDb»ˇÎ‹ÀRÙ¶Ù&0o´îZ≈O „\0ëtS≈ˆŒ∏‚Y2DÇ9ƒK.Ëx*¿”cM‡!êﬂ¶>AHL|™G`ôêº[=É¿–Dc‰lq–é·MøùÅ–áNÔcØAü«ı§é0â ]\'D¨,ÛÊ«¨ûOhö[Ω—\0ÖLË5ì:ƒ@cújUNÖÊÄãˆå!`_5åÃÿ!`RÃLŸÄn∑›nµ* Ò}û@ﬁ&JÁáÅ∑¨œ%‘mSarΩ Ë9I≤ÙëÛD\"¢Pc-±∑	≤GâV∞M	∫ÙsaìE“¿\"æbs¶ïÕ«\0∫Ø’∫üÅU–=ÑVg«‘>ÕFÓ6ÕfÃ¯µTK@◊B9ƒ‚j≠ˆ*\n#©A±[TØ3⁄&	~C\niœá=î@∫—%¢!ÜÍØW!§≤∂püIÉvï\0K3Î fÙﬁ£zUc^„•!¬…cÔ«ˆ GÕ$ô! r9≥j%˜lIAÔ`œ∆È∑€è7é…†æ≤r`®ûQæ?:˚€|≈sa≈‹7¡Ωv¢ı†◊|€-\0˙ÆM¸$—ã∫∆<´ºzjVªâA	ÇVc\rıK˘æΩ›≈^Eæ~06·3Ae3\ZÕ˚>O∫˝ù°\'à¢Â>*Êõ~}õÜ\\$*ú‚ë©ÆySŒÔ`CT·o∞∑eBıqq°zÀÇñF®Œ<≠ÍZB2{©U0Ï”LYıëæ|≠œ,pÍôq¿»8ÿi–§A≥L\'`iD\\ñÙ™∞ﬂì‡GEﬁb)Ñ6-hç.@£XZõR4  z$∆j[A≤ÃÙ\n–Ãê)ç·¿#v”cØ¥6Ø°÷l,ÕÚfìíeL”HÕ&∏ÌÇ≈)Ihm¬çÅª1VÓU\r⁄qˆÿ⁄=åÊ$Œu¸‘ã}°Îß)…uV-òú!≈Q	•Õ∞ÒÜ7J›ÙI©L<äÀ|ö0U´ ≥¶nfJ+T©Ò*ó>ÅÚΩÅ^8Äg,hZk“õiŒ‚‡Ü•√\rßâiµ)•p®s√vœm”nß3Íë~⁄¶kŸO§~ä\Zµ€`-qÀ≤5úX˝é=≥›ë‚kûG€©:˜?µ\r˝ˇ˝]BH	˙%á:IîÈK\0üÁq`Æ¶¥º\r∞⁄Û”O\r[^sÆvw‘ö=¢ﬁh§!Gf–ÏC}´C‡*ˇÔ§∆\Zú˚åƒ¶∏’\'ã∆EO≠´Œu6TG∑≥oàœ\0ô¨˜—üd¨ÌπÒΩÆ\0 œ=Ï›wú\\Ãùätj…V«]v‹F\'øFÑfRÓìLQ¶¿G?l≈e…ˇ›FTrÃ¥m=bÊﬂïvDÇÁYŸ5œæwQ ˜/âa˚Ccæ∑I+„w€Å¶≠{¢Ã”«0–_≤(E”’1zE°4@±\'Ëﬂˇ2≥æ†Do7=˝ïßD∞%˙dü⁄Ü‚πœ≥’	r[mw◊\\Ê=MÀ≤ï‹íN∂ß©á£?|õ3\'›D‰öî?EÅÆÆOÙ£≠Ÿ√+|˝¡)úÖr»Å/˛|jπùˆ–ÌÙ\\À≈◊Gõ¥ÊjFﬂOŒ]hrß€Í⁄˙zÙ•NXå~F˜s›⁄usigDÕtÚﬂ:Y’Ãü~\nûlB@S!®\0=√<5ΩŒ·˙]õ0jMY.‰ELı€!Æ\\st[{\rH˘MœπJ}òT\"ß˙Ç\ZﬁÕ÷ë«M&€Ïpà˜yå^¢ä–q§Ñ∂Î∏y[éè¥Qvy9f≠o« =HÙ}›â6C6≠à®™LêØVó$z^ª7Ê™u}\"¡õ˙¢È=®ÕRhF’+\nêF‰íG\'ﬂéw]\'¡cugcn¥a‡‡‡?∞˜ûá\Z\0\0', 1349590603, -1, 'Content-Type: text/html; charset=utf-8\nHTTP/1.1 404 Not Found', 0)
INSERT INTO cache_page (cid, data, created, expire, headers, serialized) VALUES ('http://www.incahacienda.com/sitemap.xml', 'ã\0\0\0\0\0\0µXkr€8˛=>Ç)ª&$%ÍmKL9∂3IU&ìMú}îÀÂÇHêÇM\0Íëa™ˆ{é=≈ﬁdO≤\rêî)[“8Ÿ]ó%ë@˜◊4∫?;ˇÌÏÚo.–L%1˙˘’ª∑g[éÛóŒô„ú_û£øæπ¸ıj€-ÙI	Ê+«πxè¬3•≤c«Y,ˆ¢cs9óù•∆ik∆Í—íÜÀTÄΩÉ±≥L‚TN∂\0¥G£Q…á5—qL“hÇ©ƒË˛)`bÇc%\0\r°Òåí\0`™“x˝í≥˘üÒT—TYó´åb‰óo¨ËR9\Zˇ˘3\"$Uì\\Ö÷#G√‡ˇi≥Ù	\ZO∞úq°¸\\!¨Õ\r\'ÿIòÙùêÃı†\r_)Äü`ñêà:K´$§R)≈TLΩ0áRÆP»Û4@˙DRt\ZÂR˝Îü)\n(:#qÃ«NI]r\ZEJl£±/¡Ö•bjS9£Taî–Äë	ˆµÜí)*ùÄÜ$èï2†’Ã˙sCáΩ¿ß›aœù∂˚a€%·àN[4ËÖ›VØÂ˜m#eÌáßäœK’ìò∫ÉakÿjπA8jµÜ˝∞’\n}∑’Ît˚üˆ‹µ∆	∆œ,ÎäÖ(VËÌ\Z\\{Îô⁄I•ÿR*8¬Ixêkô)g¥_~ó∞Mg=2Â°≠é◊P·ä¶Ø-kC∫ÙÀTìÛñÃI9äë˛g‹ÍˇõŒtÿùíÓp‘m—ùˆIá¥áAoJF£^ﬂæïÿ;%¨»^i0~r–¥=;?Ω<ΩrO‹˛)ßbeXqx.Úåƒ6ÑΩbi$_†ﬂûI?5√«;¯¬ÁQLIJ‚ïbæÑq†RÇ¯wøÂ*‚¿CÌ’ÿØÑ≈ä7GŒ˘\"ç9	∂ç]h=$„©Ü≈ÉØ!~AÑ˛‹DÜY∞¡ä)K_ŒãÄ˚]“\"åÁEƒ¬\"˙\nˇ,+f_ñ≈-≈mF_F≈≠,íÏ–-:E∑Ä˜£\"·ÛCFè^âd…ä,ãlñ…\"K£\"ÀTÒE%/AìB\0ô§§Ä’*@*ê°∏ê0\nµT≈ÇÃãEB‡øYP,cY@ö+æ†Fﬂ¿Fg`Qö«1˙vtrP-∆5DÏ˝*ÓãËˇvÀÎÿW3ö¿£$È\r—˘Ö•sêïhΩ±∂ƒÛÿ)sÒ¡x Éh∞9Úc\"!”Î¨IXJu“6!Üﬁëá§ÿ‹\nÜÅ¸pÄ¥fñI-∑%@*‹‹9[Ÿﬁ—Pm≤é*¶Gúöô%—û-÷p¿MÃ#n√öcDb»ˇÎ‹ÀRÙ¶Ù&0o´îZ≈O „\0ëtS≈ˆŒ∏‚Y2DÇ9ƒK.Ëx*¿”cM‡!êﬂ¶>AHL|™G`ôêº[=É¿–Dc‰lq–é·MøùÅ–áNÔcØAü«ı§é0â ]\'D¨,ÛÊ«¨ûOhö[Ω—\0ÖLË5ì:ƒ@cújUNÖÊÄãˆå!`_5åÃÿ!`RÃLŸÄn∑›nµ* Ò}û@ﬁ&JÁáÅ∑¨œ%‘mSarΩ Ë9I≤ÙëÛD\"¢Pc-±∑	≤GâV∞M	∫ÙsaìE“¿\"æbs¶ïÕ«\0∫Ø’∫üÅU–=ÑVg«‘>ÕFÓ6ÕfÃ¯µTK@◊B9ƒ‚j≠ˆ*\n#©A±[TØ3⁄&	~C\niœá=î@∫—%¢!ÜÍØW!§≤∂püIÉvï\0K3Î fÙﬁ£zUc^„•!¬…cÔ«ˆ GÕ$ô! r9≥j%˜lIAÔ`œ∆È∑€è7é…†æ≤r`®ûQæ?:˚€|≈sa≈‹7¡Ωv¢ı†◊|€-\0˙ÆM¸$—ã∫∆<´ºzjVªâA	ÇVc\rıK˘æΩ›≈^Eæ~06·3Ae3\ZÕ˚>O∫˝ù°\'à¢Â>*Êõ~}õÜ\\$*ú‚ë©ÆySŒÔ`CT·o∞∑eBıqq°zÀÇñF®Œ<≠ÍZB2{©U0Ï”LYıëæ|≠œ,pÍôq¿»8ÿi–§A≥L\'`iD\\ñÙ™∞ﬂì‡GEﬁb)Ñ6-hç.@£XZõR4  z$∆j[A≤ÃÙ\n–Ãê)ç·¿#v”cØ¥6Ø°÷l,ÕÚfìíeL”HÕ&∏ÌÇ≈)Ihm¬çÅª1VÓU\r⁄qˆÿ⁄=åÊ$Œu¸‘ã}°Îß)…uV-òú!≈Q	•Õ∞ÒÜ7J›ÙI©L<äÀ|ö0U´ ≥¶nfJ+T©Ò*ó>ÅÚΩÅ^8Äg,hZk“õiŒ‚‡Ü•√ÌˆC:\n‹∞\Z“È`Í˝–Ô¥za0RÍØe?ë˙)j‘\nl_Äµƒ-À÷pbı;vÙÃztGäØymßÍ‹ˇ‘6Ùˇ˜w	!%ËóÍ$\rP¶/|û«Åπ\nò“Ú6¿~hœO?5lyÕπ⁄›QkRÙàz£ëÜôA≥ı≠nÅ´¸3ºê\ZkpÓ3õ‚Vü,\Z=!¥Æ:◊ŸP›Œæ!>d≤ﬁGfê±∂ÁzƒSÙ∫Ä<˜∞wﬂqr1w*“©%[wŸqù¸\ZömHπO2E-ò˝∞ó%ˇwQ…˝1–∂ıàôW⁄	ûge◊<˚ﬁE1(ﬂø$ÜÌç˘ﬁ&≠åﬂmö∂Óâ2O√@…¢MW«ËÖ“\0≈û†ˇ˝»Ã˙ÇΩ›ÙÙWû¡ñËì}jäÁ>œV\'»mµ›]wpô˜4-ÀVrK:Ÿû¶é˛mŒútë/hR˛∫∫>—è∂ndØ\rÙßp !æ@¯Û©Âv⁄C∑”s-_m“ö´}?9gt°…ùn´kÎÎ—ó:aM0˙‹œu#h◊Õ•ù5”…ÎdU3F¯y(x≤	aLÖ†Ù8Û‘Ù:áGËwmVD¿®5eπê1’oá∏rÕ—IDlÌ5 }‰7=G‰*ıaRâúÍwjx;4[Gc4ôl≥G¿!ﬁÁ1zâ*B«ë⁄Æ„Êm9>“FŸÂÂòµæ+˜ —˜u\'⁄Ÿ¥\"¢™2AæZ]íË=xÌﬁò´÷ıâoÍã¶˜<†6K°UØ(@zëHù|;:‹uùè’ùçπ—ÜÅÉÉˇ\0™‚ﬁ}\Z\0\0', 1349590603, -1, 'Content-Type: text/html; charset=utf-8\nHTTP/1.1 404 Not Found', 0)
INSERT INTO accesslog (title, path, url, hostname, uid, sid, timer, timestamp) values('Page not found', 'sitemap.xml', '', '157.55.116.45', 0, 'k3ipu2bvdfeg9jbr3sqj7f9gb0', 59098, 1349590603)
INSERT INTO accesslog (title, path, url, hostname, uid, sid, timer, timestamp) values('Page not found', 'sitemap.xml', '', '157.55.116.45', 0, '6g50o4sf41t9mfsjd9krvrkmh6', 29529, 1349590603)


SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:17:40'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@83-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select `id`,`mail_name`,`postbox`,`account_id`,`perm_id`,`redirect`,`redir_addr`,`mail_group`,`autoresponder`,`spamfilter`,`virusfilter`,`mbox_quota`,`dom_id` from mail where `id`=83
SELECT id, alias FROM mail_aliases WHERE mn_id="83"
select `id`,`type`,`password` from accounts where `id`=251
SELECT `param`, `val` FROM dom_param WHERE dom_id = 60
select `name`,`version` from Components
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `id`, `product_id`, `name`, `version`, `release`, `docroot`, `enabled` FROM Webmails
SELECT id FROM Webmails WHERE product_id = "atmailcom"
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
select `id`,`permission`,`value` from Permissions where `id`=137
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=14
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =14
select `id`,`type`,`password` from accounts where `id`=57
SELECT d.id as id, d.displayName as name FROM domains d WHERE d.cl_id= 7 AND d.id <> 60
SELECT m.id as id, m.mail_name, d.displayName as name FROM mail m, domains d WHERE d.id = m.dom_id AND m.dom_id = 60 AND m.id <> 83
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (13)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (13)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
DELETE FROM DashboardPresetConfig WHERE id = 2918
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6669, "/plesk/client@7/domain@60/mail/mailname@83/",  423, "true", "shortcut",  "Mail account cook@tastefunatic.com",  "Manage mail account cook@tastefunatic.com.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@83-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60/mail/mailname@83-domains#formPageCache','1-0','2012-10-08 02:17:40','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

set foreign_key_checks=0
SHOW VARIABLES LIKE 'version'
SELECT val FROM misc WHERE param='mysql41_compatible'
SET NAMES binary
select val from misc where param='disable_scheduled_backup'
select val from misc where param='max_bu_proc_number'
select val from misc where param='bu_nice'
UPDATE BackupsScheduled SET processed='false'
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT id, last, backup_day, period, last  <          ADDDATE(DATE(last), INTERVAL backup_time HOUR_SECOND)    , NOW() >=         ADDDATE(DATE(last), INTERVAL backup_time HOUR_SECOND)    , NOW() >= ADDDATE(ADDDATE(DATE(last), INTERVAL backup_time HOUR_SECOND), 1), last  <          ADDDATE(ADDDATE(DATE(last), - WEEKDAY(last) + backup_day - 1), INTERVAL backup_time HOUR_SECOND)    , NOW() >=         ADDDATE(ADDDATE(DATE(last), - WEEKDAY(last) + backup_day - 1), INTERVAL backup_time HOUR_SECOND)    , NOW() >= ADDDATE(ADDDATE(ADDDATE(DATE(last), - WEEKDAY(last) + backup_day - 1), INTERVAL backup_time HOUR_SECOND), 7), last  <          ADDDATE(ADDDATE(DATE(last), - DAY(last) + LEAST(backup_day, DAY(LAST_DAY(last)))), INTERVAL backup_time HOUR_SECOND)                   , NOW() >=         ADDDATE(ADDDATE(DATE(last), - DAY(last) + LEAST(backup_day, DAY(LAST_DAY(last)))), INTERVAL backup_time HOUR_SECOND)                   , NOW() >= ADDDATE(ADDDATE(ADDDATE(DATE(last), - DAY(last) + LEAST(backup_day, DAY(LAST_DAY(last)))), INTERVAL backup_time HOUR_SECOND), INTERVAL 1 MONTH) FROM BackupsScheduled WHERE active = 'true' AND processed = 'false' GROUP BY obj_id, obj_type ORDER BY ADDDATE(last, INTERVAL period SECOND) LIMIT 10
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:18:03'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail-domains#formPageCache' AND `uid` = '1-0'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select id from DomainServices where dom_id='60' and type="mail"
select `id`,`dom_id`,`type`,`status`,`parameters_id` from DomainServices where `id`=60
select `id`,`parameter`,`value` from Parameters where `id`=60
select `name`,`version` from Components
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `param`, `val` FROM dom_param WHERE dom_id = 60
SELECT `id`, `product_id`, `name`, `version`, `release`, `docroot`, `enabled` FROM Webmails
SELECT	m.id,	m.mail_name,	d.cl_id,	c.pname,	d.id,	d.displayName,	d.name,	p.value,	m.postbox,	m.redirect,	m.mail_group,	m.autoresponder,	m.spamfilter,	dp.val,	m.virusfilterFROM	clients c,	domains d,	mail mLEFT JOIN Permissions p ON p.id = m.perm_id AND p.permission="cp_access"LEFT JOIN dom_param dp ON dp.dom_id = m.dom_id AND dp.param="gl_filter"WHERE d.id = m.dom_id AND c.id = d.cl_id AND m.dom_id='60'
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
select `id`,`limit_name`,`value` from Limits where `id`=88
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select count(*) from DashboardPresetConfig where id=2925
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6670, `uri`="/plesk/client@7/domain@60/mail/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Mail accounts", `description`= "Manage mail accounts on domain tastefunatic.com."  where `id`=2925


SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:18:44'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
SELECT d.id, d.status, d.overuse, d.htype, d.displayName, UNIX_TIMESTAMP(d.cr_date), d.real_size, c.id, c.type, c.pname, c.cname FROM domains d, clients c WHERE d.cl_id = c.id AND  (c.parent_id = 7 OR d.cl_id = 7)  AND   1
SELECT d.id, sd.id, sd.displayName FROM domains d, clients c, subdomains sd WHERE d.cl_id = c.id AND sd.dom_id = d.id AND  (c.parent_id = 7 OR d.cl_id = 7)  AND   1=1
SELECT d.id, da.id, da.displayName FROM domains d, clients c, domainaliases da WHERE d.cl_id = c.id AND da.dom_id = d.id AND  (c.parent_id = 7 OR d.cl_id = 7)  AND   1=1
SELECT dt.dom_id, sum(dt.http_in) + sum(dt.ftp_in) + sum(dt.smtp_in) + sum(dt.pop3_imap_in) + sum(dt.http_out) + sum(dt.ftp_out) + sum(dt.smtp_out) + sum(dt.pop3_imap_out) FROM DomainsTraffic dt WHERE (dt.date between '2012-10-01' and '2012-10-07') GROUP BY dt.dom_id
select `id`,`limit_name`,`value` from Limits where `id`=7
SELECT `param`, `val` FROM cl_param WHERE cl_id = 7
select `id`,`ip_address_id`,`type` from ip_pool where `id`=7
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where cl_id = 7 and  1=1
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (13)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (13)
DELETE FROM DashboardPresetConfig WHERE id = 2915
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6671, "/plesk/client@7/domain@/",  423, "true", "shortcut",  "Domains",  "Manage domains.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@-domains#formPageCache','1-0','2012-10-08 02:18:45','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:18:53'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@85-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select `id`,`mail_name`,`postbox`,`account_id`,`perm_id`,`redirect`,`redir_addr`,`mail_group`,`autoresponder`,`spamfilter`,`virusfilter`,`mbox_quota`,`dom_id` from mail where `id`=85
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT id, alias FROM mail_aliases WHERE mn_id="85"
select `id`,`type`,`password` from accounts where `id`=253
SELECT `param`, `val` FROM dom_param WHERE dom_id = 60
select `name`,`version` from Components
SELECT `id`, `product_id`, `name`, `version`, `release`, `docroot`, `enabled` FROM Webmails
SELECT id FROM Webmails WHERE product_id = "atmailcom"
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
select `id`,`permission`,`value` from Permissions where `id`=139
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=14
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =14
select `id`,`type`,`password` from accounts where `id`=57
SELECT d.id as id, d.displayName as name FROM domains d WHERE d.cl_id= 7 AND d.id <> 60
SELECT m.id as id, m.mail_name, d.displayName as name FROM mail m, domains d WHERE d.id = m.dom_id AND m.dom_id = 60 AND m.id <> 85
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (13)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (13)
DELETE FROM DashboardPresetConfig WHERE id = 2920
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6672, "/plesk/client@7/domain@60/mail/mailname@85/",  423, "true", "shortcut",  "Mail account info@tastefunatic.com",  "Manage mail account info@tastefunatic.com.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@85-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60/mail/mailname@85-domains#formPageCache','1-0','2012-10-08 02:18:53','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:19:08'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@85-domains#formPageCache' AND `uid` = '1-0'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)

INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590759), 'MAINMEM_USAGE', 36552, 12)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590759), 'CPU_USAGE', 0, 12)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590759), 'MAINMEM_USAGE', 20608, 2)
INSERT INTO module_watchdog_sys_stat (time, type, value, service_id) VALUES(FROM_UNIXTIME(1349590759), 'CPU_USAGE', 0, 2)
INSERT INTO module_watchdog_sys_stat (time, type, value) VALUES(FROM_UNIXTIME(1349590759), 'MAINMEM_USAGE', 4073788)
INSERT INTO module_watchdog_sys_stat (time, type, value) VALUES(FROM_UNIXTIME(1349590759), 'CPU_USAGE', 1)
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:19:45'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7-domains#formPageCache','1-0','2012-10-08 02:19:45','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:19:46'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/dashboard-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
SELECT `param`, `val` FROM cl_param WHERE cl_id = 7
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=2
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/dashboard' AND `uid` = '1-0'
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=2 ORDER BY `parent_id`, `ord` DESC
SELECT * FROM BillingCache
SELECT guid FROM clients
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
replace into misc (param, val) values("billing_cache_update_time", "2012-10-07 08:19:47")
select id as `id`, login as `name`, NULL as `parent_id` from clients where  1=1
select `id`,`limit_name`,`value` from Limits where `id`=7
select `id`,`ip_address_id`,`type` from ip_pool where `id`=7
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(*) FROM domains WHERE cl_id = 7
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where cl_id = 7 and  1=1
SELECT COUNT(*) FROM mail m, domains d WHERE d.cl_id = 7 AND m.dom_id = d.id
SELECT SUM(d.real_size) FROM domains d WHERE d.cl_id=7
SELECT sum(ct.http_in) + sum(ct.ftp_in) + sum(ct.smtp_in) + sum(ct.pop3_imap_in) + sum(ct.http_out) + sum(ct.ftp_out) + sum(ct.smtp_out) + sum(ct.pop3_imap_out) FROM ClientsTraffic ct WHERE (ct.date between '2012-10-01' and '2012-10-07') AND (ct.cl_id='7')
select `id`,`permission`,`value` from Permissions where `id`=13
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 7
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 7
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where  1=1
select `name`,`version` from Components
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "client" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT cb.id FROM custom_buttons cb,clients c, clients r WHERE cb.place = "client" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND c.parent_id = r.id AND r.type = "reseller" AND c.id = 7 AND cb.level_id = r.id AND cb.level = 2 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "client" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level_id = 7 AND cb.level =4 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT ai.id, sap.id, sap.name, cai.id, cai.instances_limit FROM ((SiteAppPackages AS sap		LEFT JOIN siteapppackages_apscategories as sap_cat ON sap_cat.siteapppackage_id = sap.id)		INNER JOIN APSApplicationItems as ai ON sap.id = ai.pkg_id)		LEFT JOIN APSClientApplicationItems AS cai ON (ai.id=cai.app_item_id AND cai.client_id=7)	WHERE (cai.client_id=7 OR (cai.id IS NULL ))
select `client_id`,`app_item_id`,`instances_limit`,`id`,`broadcast` from APSClientApplicationItems where `client_id`=7
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=1
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `client_id`,`app_item_id`,`instances_limit`,`id`,`broadcast` from APSClientApplicationItems where `client_id`=1
select data_bases.id as `id`, data_bases.name as `name`, data_bases.dom_id as `parent_id`, DatabaseServers.host, DatabaseServers.port from DatabaseServers, data_bases where (data_bases.db_server_id = DatabaseServers.id) and  1=1
SELECT ai.id, sap.id, sap.name, cai.id, cai.instances_limit FROM ((SiteAppPackages AS sap		LEFT JOIN siteapppackages_apscategories as sap_cat ON sap_cat.siteapppackage_id = sap.id)		INNER JOIN APSApplicationItems as ai ON sap.id = ai.pkg_id)		LEFT JOIN APSClientApplicationItems AS cai ON (ai.id=cai.app_item_id AND cai.client_id=7)	WHERE (cai.client_id=7 OR (cai.id IS NULL ))
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/dashboard' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/dashboard','1-0','2012-10-08 02:19:49','ui_update,api_update')
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=14
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =14
select `id`,`type`,`password` from accounts where `id`=57
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
DELETE FROM DashboardPresetConfig WHERE id = 2921
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6673, "/plesk/client@7/dashboard/",  423, "true", "shortcut",  "Client Bettina & Gunnar Guckes",  "Home page of client Bettina & Gunnar Guckes. Here you can manage this client\'s account.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/dashboard-clients#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/dashboard-clients#formPageCache','1-0','2012-10-08 02:19:49','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:19:56'
select `id`,`mail_name`,`postbox`,`account_id`,`perm_id`,`redirect`,`redir_addr`,`mail_group`,`autoresponder`,`spamfilter`,`virusfilter`,`mbox_quota`,`dom_id` from mail where `id`=85
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@85/forwarding-clients#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 7 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=14
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =14
select `id`,`type`,`password` from accounts where `id`=57
SELECT d.id as id, d.displayName as name FROM domains d WHERE d.cl_id= 7 AND d.id <> 60
SELECT m.id as id, m.mail_name, d.displayName as name FROM mail m, domains d WHERE d.id = m.dom_id AND m.dom_id = 60 AND m.id <> 85
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
DELETE FROM DashboardPresetConfig WHERE id = 2922
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6674, "/plesk/client@7/domain@60/mail/mailname@85/forwarding/",  423, "true", "shortcut",  "Set Up Forwarding for Mail Account info@tastefunatic.com",  "Configure mail forwarding on info@tastefunatic.com.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@85/forwarding-clients#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@7/domain@60/mail/mailname@85/forwarding-clients#formPageCache','1-0','2012-10-08 02:19:59','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:20:07'
select `id`,`mail_name`,`postbox`,`account_id`,`perm_id`,`redirect`,`redir_addr`,`mail_group`,`autoresponder`,`spamfilter`,`virusfilter`,`mbox_quota`,`dom_id` from mail where `id`=85
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@7/domain@60/mail/mailname@85/forwarding-clients#formPageCache' AND `uid` = '1-0'
select count(*) from DashboardPresetConfig where id=2930
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6675, `uri`="/plesk/client@7/domain@60/mail/mailname@85/forwarding/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Set Up Forwarding for Mail Account info@tastefunatic.com", `description`= "Configure mail forwarding on info@tastefunatic.com."  where `id`=2930

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=60
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:20:40'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@any/domain@-clients#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
SELECT d.id, d.status, d.overuse, d.htype, d.displayName, UNIX_TIMESTAMP(d.cr_date), d.real_size, c.id, c.type, c.pname, c.cname FROM domains d, clients c WHERE d.cl_id = c.id AND   1
SELECT d.id, sd.id, sd.displayName FROM domains d, clients c, subdomains sd WHERE d.cl_id = c.id AND sd.dom_id = d.id AND   1=1
SELECT d.id, da.id, da.displayName FROM domains d, clients c, domainaliases da WHERE d.cl_id = c.id AND da.dom_id = d.id AND   1=1
SELECT dt.dom_id, sum(dt.http_in) + sum(dt.ftp_in) + sum(dt.smtp_in) + sum(dt.pop3_imap_in) + sum(dt.http_out) + sum(dt.ftp_out) + sum(dt.smtp_out) + sum(dt.pop3_imap_out) FROM DomainsTraffic dt WHERE (dt.date between '2012-10-01' and '2012-10-07') GROUP BY dt.dom_id
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (1)
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
SELECT COUNT(*) FROM domains
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 1
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)1 AND d.cl_id = 1
SELECT COUNT(c.id)c.pool_id = p.id)D p.ip_address_id = 2
SELECT COUNT(h.dom_id)IN domains d ON h.dom_id = d.id)2 AND d.cl_id = 1
SELECT COUNT(f.dom_id) JOIN domains d ON f.dom_id = d.id)2 AND d.cl_id = 1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
select count(*) from DashboardPresetConfig where id=2916
update DashboardPresetConfig SET  `preset_id`=5, `ord`=6676, `uri`="/plesk/client@any/domain@/", `parent_id`=423, `enabled`="true", `type`="shortcut", `title`= "Domains", `description`= "Manage domains."  where `id`=2916
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@any/domain@-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@any/domain@-domains#formPageCache','1-0','2012-10-08 02:20:41','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:21:15'
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@25/domain@37-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@25/domain@37-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@25/domain@37-domains#formPageCache','1-0','2012-10-08 02:21:15','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=37
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:21:17'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@25/domain@37/dashboard-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select `dom_id`,`state`,`account_id`,`card_id`,`perm_id` from dom_level_usrs where `dom_id`=37
SELECT `param`, `val` FROM dom_param WHERE dom_id = 37
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=3
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@25/domain@37/dashboard' AND `uid` = '1-0'
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=3 ORDER BY `parent_id`, `ord` DESC
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
select id as `id`, login as `name`, NULL as `parent_id` from clients where  1=1
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where  1=1
select `dom_id`,`sys_user_id`,`ip_address_id`,`ssl`,`same_ssl`,`fp`,`fp_ssl`,`fp_enable`,`fp_adm`,`fp_pass`,`ssi`,`php`,`php_safe_mode`,`php_handler_type`,`cgi`,`perl`,`python`,`fastcgi`,`miva`,`coldfusion`,`asp`,`asp_dot_net`,`webstat`,`traffic_bandwidth`,`max_connection` from hosting where `dom_id`=37
select `id`,`ip_address`,`mask`,`iface`,`ssl_certificate_id`,`default_domain_id`,`ftps` from IP_Addresses where `id`=1
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=37
SELECT `param`, `val` FROM cl_param WHERE cl_id = 25
SELECT `param`, `val` FROM cl_param WHERE cl_id = 1
SELECT sum(dt.http_in) + sum(dt.ftp_in) + sum(dt.smtp_in) + sum(dt.pop3_imap_in) + sum(dt.http_out) + sum(dt.ftp_out) + sum(dt.smtp_out) + sum(dt.pop3_imap_out) FROM DomainsTraffic dt WHERE (dt.date between '2012-10-01' and '2012-10-07') AND (dt.dom_id='37')
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where dom_id = 37 and  1=1
select `name`,`version` from Components
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where  1=1
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT `value` FROM GL_settings WHERE param = 'enabled'
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT cl_id, displayName, name, cert_rep_id FROM domains WHERE id='37'
select `id`,`login`,`home`,`shell`,`quota`,`account_id` from sys_users where `id`=29
select `id`,`type`,`password` from accounts where `id`=122
select pool_id from clients where id='25'
SELECT ip.id, ip.ip_address, pool.type, cert.id, cert.name FROM (IP_Addresses ip LEFT JOIN certificates cert ON cert.id = ip.ssl_certificate_id) INNER JOIN ip_pool pool ON ip.id=pool.ip_address_id WHERE pool.id=25
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, hosting h, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=25 AND h.ip_address_id=ip.id GROUP BY ip.id
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, forwarding f, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=25 AND f.ip_address_id=ip.id GROUP BY ip.id
SELECT cert.id, cert.name FROM domains d, certificates cert, Repository r WHERE d.cl_id=25 AND d.cert_rep_id=r.rep_id AND r.component_id=cert.id AND !ISNULL(cert.pvt_key) AND cert.pvt_key!="" AND !ISNULL(cert.cert) AND cert.cert!=""
select `id`,`ip_address_id`,`type` from ip_pool where `id`=1
SELECT `sb_site_id`, `sb_siteowner_login`, `sb_siteowner_id` FROM `SBSites` WHERE `virtualHost_id` =37
select `id`,`ip_address_id`,`type` from ip_pool where `id`=25
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'sysinfo:getshell'
SELECT cl_id, displayName, name, cert_rep_id FROM domains WHERE id='37'
select pool_id from clients where id='25'
SELECT ip.id, ip.ip_address, pool.type, cert.id, cert.name FROM (IP_Addresses ip LEFT JOIN certificates cert ON cert.id = ip.ssl_certificate_id) INNER JOIN ip_pool pool ON ip.id=pool.ip_address_id WHERE pool.id=25
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, hosting h, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=25 AND h.ip_address_id=ip.id GROUP BY ip.id
SELECT ip.id, COUNT(*) FROM IP_Addresses ip, forwarding f, ip_pool pool WHERE ip.id=pool.ip_address_id AND pool.id=25 AND f.ip_address_id=ip.id GROUP BY ip.id
SELECT cert.id, cert.name FROM domains d, certificates cert, Repository r WHERE d.cl_id=25 AND d.cert_rep_id=r.rep_id AND r.component_id=cert.id AND !ISNULL(cert.pvt_key) AND cert.pvt_key!="" AND !ISNULL(cert.cert) AND cert.cert!=""
SELECT `sb_site_id`, `sb_siteowner_login`, `sb_siteowner_id` FROM `SBSites` WHERE `virtualHost_id` =37
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11

SELECT * FROM languages ORDER BY weight ASC, name ASC
SELECT * FROM languages ORDER BY weight ASC, name ASC
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'variables:en'
SELECT data, created, headers, expire, serialized FROM cache WHERE cid = 'variables:en'
SELECT COUNT(pid) FROM url_alias
SELECT COUNT(pid) FROM url_alias
SELECT src FROM url_alias WHERE dst = 'sitemap.xml' AND language IN('en', '') ORDER BY language DESC, pid DESC
SELECT src FROM url_alias WHERE dst = 'sitemap.xml' AND language IN('en', '') ORDER BY language DESC, pid DESC
SELECT name, filename, throttle FROM system WHERE type = 'module' AND status = 1 ORDER BY weight ASC, filename ASC
SELECT name, filename, throttle FROM system WHERE type = 'module' AND status = 1 ORDER BY weight ASC, filename ASC
SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
SELECT login, type, ip_address FROM sessions WHERE sess_id="13f8977145422635e85109194a4a31b2"
select * from sessions where sess_id="13f8977145422635e85109194a4a31b2" and click_time >= NOW() - INTERVAL 1800 SECOND
update sessions set click_time=NOW() where sess_id='13f8977145422635e85109194a4a31b2'
select `id`,`name`,`displayName`,`cr_date`,`status`,`dns_zone_id`,`htype`,`cl_id`,`limits_id`,`params_id`,`cert_rep_id`,`real_size`,`guid`,`overuse` from domains where `id`=37
SELECT * FROM clients WHERE type = 'admin'
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =1
select `id`,`name`,`place` from Skins where `id`=11
SELECT `key`, `uid` FROM PersistentCache WHERE `expire` < '2012-10-07 02:22:13'
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=25
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =25
select `id`,`type`,`password` from accounts where `id`=121
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (37)
SELECT COUNT(*) AS n FROM PersistentCache WHERE `key` = 'plesk/client@25/domain@37/mail-domains#formPageCache' AND `uid` = '1-0'
SELECT cb.id FROM custom_buttons cb WHERE cb.place = "navigation" AND (cb.level >= 1 OR (cb.level < 1 AND ( (cb.options & 128) <> 0 ))) AND cb.level = 1 GROUP BY cb.id ORDER BY cb.level ASC, cb.sort_key ASC, cb.text ASC
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='url'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='login'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='password'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='version'
SELECT `param_value` FROM `SBConfig` WHERE `param_name` ='plan'
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (25)
select id from DomainServices where dom_id='37' and type="mail"
select `id`,`dom_id`,`type`,`status`,`parameters_id` from DomainServices where `id`=37
select `id`,`parameter`,`value` from Parameters where `id`=37
select `name`,`version` from Components
SELECT id FROM Webmails WHERE product_id = "atmailcom"
SELECT `param`, `val` FROM dom_param WHERE dom_id = 37
SELECT	m.id,	m.mail_name,	d.cl_id,	c.pname,	d.id,	d.displayName,	d.name,	p.value,	m.postbox,	m.redirect,	m.mail_group,	m.autoresponder,	m.spamfilter,	dp.val,	m.virusfilterFROM	clients c,	domains d,	mail mLEFT JOIN Permissions p ON p.id = m.perm_id AND p.permission="cp_access"LEFT JOIN dom_param dp ON dp.dom_id = m.dom_id AND dp.param="gl_filter"WHERE d.id = m.dom_id AND c.id = d.cl_id AND m.dom_id='37'
SELECT `key`, `data` FROM BackendCache WHERE `key` = 'listmng:checkpresence-mailman'
select `id`,`name`,`type`,`uri` from DashboardPreset where `id`=5
SELECT `id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description` FROM `DashboardPresetConfig` WHERE `preset_id`=5 ORDER BY `parent_id`, `ord` DESC
select id as `id`, login as `name`, NULL as `parent_id` from clients where (type <> "client") and id in (1)
SELECT c.id as id, c.pname as name FROM clients c LEFT JOIN clients o ON o.id = c.parent_id WHERE c.id <> 25 AND c.id <> 1 AND c.type = 'client' AND o.id = 1 AND  1=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=2
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =2
select `id`,`type`,`password` from accounts where `id`=1
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=3
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =3
select `id`,`type`,`password` from accounts where `id`=3
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=4
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =4
select `id`,`type`,`password` from accounts where `id`=6
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=5
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =5
select `id`,`type`,`password` from accounts where `id`=13
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=6
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =6
select `id`,`type`,`password` from accounts where `id`=18
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=7
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =7
select `id`,`type`,`password` from accounts where `id`=24
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=8
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =8
select `id`,`type`,`password` from accounts where `id`=33
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=9
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =9
select `id`,`type`,`password` from accounts where `id`=35
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=11
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =11
select `id`,`type`,`password` from accounts where `id`=41
select `id`,`parent_id`,`type`,`cr_date`,`cname`,`pname`,`login`,`account_id`,`status`,`phone`,`fax`,`email`,`address`,`city`,`state`,`pcode`,`country`,`locale`,`limits_id`,`params_id`,`perm_id`,`pool_id`,`logo_id`,`tmpl_id`,`sapp_pool_id`,`guid`,`overuse` from clients where `id`=13
SELECT `sb_client_login`, `sb_reseller_id` FROM `SBResellers` WHERE `client_id` =13
select `id`,`type`,`password` from accounts where `id`=48
SELECT d.id as id, d.displayName as name FROM domains d WHERE d.cl_id= 25 AND d.id <> 37
select id as `id`, displayName as `name`, cl_id as `parent_id` from domains where id in (60)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (85)
select id as `id`, login as `name`, NULL as `parent_id` from clients where id in (7)
select id as `id`, mail_name as `name`, dom_id as `parent_id` from mail where id in (83)
DELETE FROM DashboardPresetConfig WHERE id = 2888
select count(*) from DashboardPresetConfig where id=0
insert into DashboardPresetConfig (`preset_id`, `ord`, `uri`, `parent_id`, `enabled`, `type`, `title`, `description`) values (   5,  6678, "/plesk/client@25/domain@37/mail/",  423, "true", "shortcut",  "Mail accounts",  "Manage mail accounts on domain tastefunatic.de.")
DELETE FROM PersistentCache WHERE `key` = 'plesk/client@25/domain@37/mail-domains#formPageCache' AND `uid` = '1-0'
INSERT INTO PersistentCache (`key`, `uid`, `expire`, `events`) VALUES ('plesk/client@25/domain@37/mail-domains#formPageCache','1-0','2012-10-08 02:22:15','ui_update,api_update')

SHOW VARIABLES LIKE 'version'
select param, val from misc
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SET NAMES utf8
SHOW VARIABLES LIKE 'version'
SELECT * FROM misc			WHERE param = 'mysql41_compatible'				AND val <> RTRIM(TRIM('\0' FROM val))
set foreign_key_checks=0
select `id`,`name`,`place` from Skins where `id`=11
