# etcd-atomic

Building etcd server container on atomic host:

```
#mkdir etcd-container
#cd etcd-container
#mkdir -p root/usr/bin/
#mkdir -p root/etc/systemd/system/
```

Copy Dockerfile to etcd-container/

Copy install.sh and uninstall.sh to etcd-container/root/usr/bin/

Copy etcd_container_template.service to etcd-container/root/etc/systemd/system/

```
#cd root/etc/systemd/system/
#docker build --rm -t etcd .
```

Installing etcd container on atomic host:

```
#atomic install -n etcd1 etcd
```

Running etcd container on atomic host:

```
#atomic run -n etcd1 etcd
```

Stopping etcd container on atomic host:

```
#atomic stop -n etcd1 etcd
```

Uninstalling etcd container on atomic host:

```
#atomic uninstall -n etcd1 etcd
```


