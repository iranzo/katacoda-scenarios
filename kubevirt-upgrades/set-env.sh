launch.sh

# Get lateste KubeVirt virtctl
export KUBEVIRT_LATEST_VERSION=$(curl -s https://api.github.com/repos/kubevirt/kubevirt/releases/latest | jq -r .tag_name)

# Download virctl
wget -O virtctl https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_LATEST_VERSION}/virtctl-${KUBEVIRT_LATEST_VERSION}-linux-amd64
chmod +x virtctl
clear

echo "Environment is ready and virtctl is installed, go ahead"
