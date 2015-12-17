
default[:iis][:docRoot]='C:\inetpub\wwwroot\quietrack'
default[:iis][:appPoolName]='QuieTrackPool'
default[:iis][:siteName]='QuieTrack'
default[:iis][:domainName]='rt.quietrack.com'
default[:iis][:siteBinds]='http/*:80:www.quietrack.com,http/*:80:rt.quietrack.com,http/*:80:quietrack.com,http/*:80:beta.quietrack.com,https/*:443:rt.quietrack.com'
default[:iis][:pfx_path]='c:\rt.quietrack.com.pfx'
default[:iis][:pfx_pwd]=''
default[:iis][:cert_subject]='it.quietrack.com'

default[:quietrack][:s3][:bucket_name]='quietrack-deploy'
default[:quietrack][:s3][:ssl_cert_path]='/QuietrackApplicationSource/rt.quietrack.com.pfx'
default[:quietrack][:s3][:webapp_path]='/QuietrackApplicationSource/QuieTrack.zip'
default[:quietrack][:webapp][:path]='c:\inetpub\wwwroot\QuieTrack'
default[:quietrack][:webapp][:wwwroot]='c:\inetpub\wwwroot'
default[:quietrack][:webapp][:arch]='c:\inetpub\wwwroot\QuieTrack.zip'
default[:quietrack][:webapp][:webconf_stag]='c:\inetpub\wwwroot\QuieTrack\web.config'
default[:quietrack][:s3][:webconf_stag]='/QuietrackApplicationSource/web.config'
default[:quietrack][:webapp][:dbconn_stag]='c:\inetpub\wwwroot\QuieTrack\ConnectionStrings.config'
default[:quietrack][:s3][:dbconn_stag]='/QuietrackApplicationSource/ConnectionStrings.config'
default[:quietrack][:webapp][:appsettings_stag]='c:\inetpub\wwwroot\QuieTrack\AppSettings.config'
default[:quietrack][:s3][:appsettings_stag]='/QuietrackApplicationSource/AppSettings.config'














