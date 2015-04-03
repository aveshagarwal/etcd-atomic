# etcd-atomic

Building etcd server container for an atomic host:

```
# git clone https://github.com/aveshagarwal/etcd-atomic
# cd etcd-container
# docker build --rm -t etcd .
```

Installing etcd container on atomic host:

```
#atomic install --name etcd1 etcd
```

Running etcd container on atomic host:

```
#atomic run --name etcd1 etcd
```

Stopping etcd container on atomic host:

```
#atomic stop --name etcd1 etcd
```

Uninstalling etcd container on atomic host:

```
#atomic uninstall --name etcd1 etcd
```


