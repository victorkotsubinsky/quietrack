
default[:iis][:docRoot]='C:\inetpub\wwwroot'
default[:iis][:appPoolName]='QuieTrackPool'
default[:iis][:siteName]='QuieTrack'
default[:iis][:domainName]='rt.quietrack.com'
default[:iis][:siteBinds]='http/*:80:www.quietrack.com,http/*:80:rt.quietrack.com,http/*:80:quietrack.com,http/*:80:beta.quietrack.com,https/*:443:rt.quietrack.com'