### Wait for the cluster to be ready

Before we can start, we need to wait for the Kubernetes cluster to be ready

`launch.sh`{{execute}}

Now we are ready to continue.

#### Deploy KubeVirt

Provide some initial configuration

`kubectl create configmap -n kube-system kubevirt-config --from-literal debug.useEmulation=true`{{execute}}

And finally deploy KubeVirt operator

`export KUBEVIRT_VERSION="v0.15.0"
kubectl create -f https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/kubevirt-operator.yaml`{{execute}}

Now let's deploy kubevirt by creating a custom resource:

`kubectl create -f https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/kubevirt-cr.yaml`{{execute}}

Let's check the deployment:
`kubectl get pods -n kubevirt`{{execute}}

#### Install Virtctl

`virtctl` is a client utility to provide some more convenient ways to interact with the VM:

`https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/virtctl-${KUBEVIRT_VERSION}-linux-amd64`{{execute}}

`chmod +x virtctl`{{execute}}

Now everything is ready to continue and launch a VM.
