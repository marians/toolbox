[![Docker Repository on Quay](https://quay.io/repository/marian/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/marian/toolbox)

# toolbox

Everybody must have their personal Docker image debugging, getting things done etcd. This is mine.

Execute:

```nohighlight
docker run --rm -ti quay.io/marian/toolbox
```

On Kubernetes as a Job:

```nohighlight
kubectl run marian-toolbox \
  --namespace <my-namespace> \
  --stdin \
  --tty \
  --restart Never \
  --rm \
  --image quay.io/marian/toolbox
```
