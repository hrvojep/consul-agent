# consul-agent with nginx
Example of building your own Consul Agent along side Nginx web server. While not the best practice, idea is to demonstrate two processes co-located togeter inside Docker. Instead of Nginx this could have been any other similar service.
After cloning a repo run 
```
docker build -t h-consul  --progress=plain --no-cache .
```

to build a local docker image. You can replace h-consul into whatever name your want consul agent to be called

after that to deploy consul agent run
```
docker run -d -p 80:80 --name=h-consul h-consul -node=h-docker2 -retry-join=172.17.0.3
```

This should register the consul agent with the consul server running on 172.17.0.3. Nginx webserver should be accessible on localhost:80
