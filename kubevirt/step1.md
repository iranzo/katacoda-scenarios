### Wait for the cluster to be ready

Before we can start, we need to wait for the Kubernetes cluster to be ready

#### Deploy KubeVirt

Provide some initial configuration

`kubectl create configmap -n kube-system kubevirt-config --from-literal debug.useEmulation=true`{{execute}}

And finally deploy KubeVirt operator using latest Kubevirt Version

`export KUBEVIRT_VERSION=$(curl -s https://api.github.com/repos/kubevirt/kubevirt/releases/latest|jq '.tag_name'|tr -d '"')
echo $KUBEVIRT_VERSION`{{execute}}

`kubectl create -f https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/kubevirt-operator.yaml`{{execute}}

Now let's deploy kubevirt by creating a custom resource:

`kubectl create -f https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/kubevirt-cr.yaml`{{execute}}

Let's check the deployment:
`kubectl get pods -n kubevirt`{{execute}}

#### Install Virtctl

`virtctl` is a client utility to provide some more convenient ways to interact with the VM:

`wget -O virtctl https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/virtctl-${KUBEVIRT_VERSION}-linux-amd64`{{execute}}

`chmod +x virtctl`{{execute}}

Now everything is ready to continue and launch a VM.
