-- Virtual Host Setup for hosting Virtuoso Server Pages (VSP) based Identity Authenticity Service that uses NetIDTLS 
-- Basically, this is an example of adding NetIDTLS to TLS support within Virtuoso's HTTP Server Module.

DB.DBA.VHOST_REMOVE (
	 lhost=>':8443',
	 vhost=>'localhost',
	 lpath=>'/webid'
);

DB.DBA.VHOST_DEFINE (
	 lhost=>':8443',
	 vhost=>'localhost',
	 lpath=>'/webid',
	 ppath=>'/webid_demo/',
	 def_page=>'webid_demo.vsp',
	 sec=>'SSL',
	 vsp_user=>'dba',
	 auth_opts=>vector ('https_key', 'db:https_key_localhost', 'https_cert', 'db:https_key_localhost', 'https_verify', 0, 'https_cv_depth', 10),
	 opts=>vector ('cors', '*', 'cors_allow_headers', '*', 'cors_restricted', 0)
);
