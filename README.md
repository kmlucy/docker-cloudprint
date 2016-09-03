# docker-cloudprint

To run:
```
docker create \
  --name=cloudprint \
  -v /opt/cloudprint:/config \
  -e CUPS_SERVER=192.168.1.xxx \
  kmlucy/docker-cloudprint
```

To create config: 
```
docker run -it \
  -v /opt/cloudprint:/config \
  -w /config \
  kmlucy/docker-cloudprint \
  gcp-connector-util init
```
Based on [google/cloud-print-connector](https://github.com/google/cloud-print-connector)
