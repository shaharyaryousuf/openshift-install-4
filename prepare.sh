cd /root/ocp67
openshift-install create ignition-configs
openshift-install create manifests
sed -i '' 's/mastersSchedulable: true/mastersSchedulable: false/'  manifests/cluster-scheduler-02-config.yml
openshift-install create ignition-configs
cp *.ign /var/lib/matchbox/ignition
