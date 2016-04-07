# neo4j-wrapper
default['neo4j']['config']['neo4j-wrapper.conf']['wrapper.java.additional'] = %w(
  -Dorg.neo4j.server.properties=conf/neo4j.conf
  -XX:+UseG1GC
  -XX:-OmitStackTraceInFastThrow
  -XX:hashCode=5
  -XX:+AlwaysPreTouch
  -XX:+UnlockExperimentalVMOptions
  -XX:+TrustFinalNonStaticFields
  -XX:+DisableExplicitGC
  -Dorg.neo4j.cluster.logdirectory=data/log
)

default['neo4j']['config']['neo4j-wrapper.conf']['wrapper.pidfile'] = node['neo4j']['pid_file']
default['neo4j']['config']['neo4j-wrapper.conf']['wrapper.name'] = 'neo4j'
default['neo4j']['config']['neo4j-wrapper.conf']['wrapper.user'] = 'neo4j'

# neo4j.conf
default['neo4j']['config']['neo4j.conf']['dbms.directories.data'] = "/var/lib/neo4j/data"
default['neo4j']['config']['neo4j.conf']['dbms.active_database'] = "graph.db"
#default['neo4j']['config']['neo4j.conf']['org.neo4j.server.database.mode'] = "SINGLE"
default['neo4j']['config']['neo4j.conf']['org.neo4j.server.webserver.address'] = node['ipaddress']
default['neo4j']['config']['neo4j.conf']['dbms.security.auth_enabled'] = true
default['neo4j']['config']['neo4j.conf']['dbms.connector.0.enabled'] = true
default['neo4j']['config']['neo4j.conf']['dbms.connector.0.tls.level'] = "OPTIONAL"
default['neo4j']['config']['neo4j.conf']['dbms.connector.0.address'] = "0.0.0.0:7687"
default['neo4j']['config']['neo4j.conf']['org.neo4j.server.webserver.port'] = "7474"
default['neo4j']['config']['neo4j.conf']['org.neo4j.server.webserver.https.enabled'] = true
default['neo4j']['config']['neo4j.conf']['org.neo4j.server.webserver.https.port'] = 7473
default['neo4j']['config']['neo4j.conf']['dbms.security.tls_certificate_file'] = "conf/ssl/snakeoil.cert"
default['neo4j']['config']['neo4j.conf']['dbms.security.tls_key_file'] = "conf/ssl/snakeoil.key"
default['neo4j']['config']['neo4j.conf']['org.neo4j.server.http.log.enabled'] = true
default['neo4j']['config']['neo4j.conf']['org.neo4j.server.http.log.config'] = "conf/neo4j-http-logging.xml"
default['neo4j']['config']['neo4j.conf']['dbms.browser.remote_content_hostname_whitelist'] = "http://guides.neo4j.com,https://guides.neo4j.com,http://localhost,https://localhost"
default['neo4j']['config']['neo4j.conf']['dbms.security.allow_outgoing_browser_connections'] = true
default['neo4j']['config']['neo4j.conf']['allow_store_upgrade'] = false
default['neo4j']['config']['neo4j.conf']['dbms.pagecache.memory'] = nil
default['neo4j']['config']['neo4j.conf']['cypher_parser_version'] = nil
default['neo4j']['config']['neo4j.conf']['dbms.security.load_csv_file_url_root'] = nil
default['neo4j']['config']['neo4j.conf']['keep_logical_logs'] = nil
default['neo4j']['config']['neo4j.conf']['remote_shell_enabled'] = nil
default['neo4j']['config']['neo4j.conf']['remote_shell_host'] = nil
default['neo4j']['config']['neo4j.conf']['remote_shell_port'] = nil
default['neo4j']['config']['neo4j.conf']['online_backup_enabled'] = true
default['neo4j']['config']['neo4j.conf']['online_backup_server'] = "127.0.0.1:6362"
default['neo4j']['config']['neo4j.conf']['ha.server_id'] = nil
default['neo4j']['config']['neo4j.conf']['ha.initial_hosts'] = nil
default['neo4j']['config']['neo4j.conf']['ha.cluster_server'] = nil
default['neo4j']['config']['neo4j.conf']['ha.server'] = nil
default['neo4j']['config']['neo4j.conf']['ha.pull_interval'] = 10
default['neo4j']['config']['neo4j.conf']['ha.tx_push_factor'] = nil
default['neo4j']['config']['neo4j.conf']['ha.tx_push_strategy'] = nil
default['neo4j']['config']['neo4j.conf']['branched_data_policy'] = nil
default['neo4j']['config']['neo4j.conf']['ha.default_timeout'] = nil
default['neo4j']['config']['neo4j.conf']['ha.heartbeat_interval'] = nil
default['neo4j']['config']['neo4j.conf']['heartbeat_timeout'] = nil
default['neo4j']['config']['neo4j.conf']['dbms.security.ha_status_auth_enabled'] = nil
