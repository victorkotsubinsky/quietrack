
default[:iis][:docRoot]='C:\inetpub\wwwroot\quietrack'
default[:iis][:appPoolName]='QuieTrackPool'
default[:iis][:siteName]='QuieTrack'
default[:iis][:domainName]='rt.quietrack.com'
default[:iis][:siteBinds]='http/*:80:www.quietrack.com,http/*:80:rt.quietrack.com,http/*:80:quietrack.com,http/*:80:beta.quietrack.com,https/*:443:rt.quietrack.com'
default[:iis][:pfx_path]='c:\rt.quietrack.com.pfx'
default[:iis][:pfx_pwd]='getTocloud'
default[:iis][:cert_subject]='it.quietrack.com'

default[:quietrack][:s3][:bucket_name]='quietrack-deploy'
default[:quietrack][:s3][:ssl_cert_path]='/QuietrackApplicationSource/rt.quietrack.com.pfx'


















