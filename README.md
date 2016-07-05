# docker-cloudprint

To run:
`docker create --name=cloudprint -p 6631:631 -v /opt/cloudprint/cloudprint:/config -v /opt/cloudprint/cups/config:/etc/cups -v /opt/cloudprint/cups/log:/var/log/cups -v /opt/cloudprint/cups/spool:/var/spool/cups -v /opt/cloudprint/cups/cache:/var/cache/cups kmlucy/docker-cloudprint`

To create config: 
`docker run -it -v /opt/cloudprint/cloudprint:/config -w /config kmlucy/docker-cloudprint gcp-connector-util init`
