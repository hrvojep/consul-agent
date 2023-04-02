# consul-agent
Example of building your own Consul Agent into a Docker container.
After cloning a repo run 
```
d build -t h-consul .
```

to build a local docker image. You can replace h-consul into whatever name your want consul agent to be called

after that to deploy consul agent run
```
d run --name=h-consul h-consul -node=h-consul -retry-join=172.17.0.3
```
