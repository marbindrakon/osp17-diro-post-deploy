oc cp cinder-storage-tiers.yaml openstackclient:/home/cloud-admin/
oc cp cgroup-tiered-flavors.yaml openstackclient:/home/cloud-admin/
oc cp playbook.yml openstackclient:/home/cloud-admin/post-deploy-playbook.yml
oc cp oidc-mapping.json openstackclient:/home/cloud-admin/oidc-mapping.json
oc cp dev-hugepages.mount openstackclient:/home/cloud-admin/dev-hugepages.mount

oc rsh openstackclient ansible-galaxy collection install openstack.cloud:==1.10.0
oc rsh openstackclient sed -i s/overcloud/osp2/g /home/cloud-admin/.config/openstack/clouds.yaml
oc rsh openstackclient ansible-playbook -i /home/cloud-admin/ctlplane-ansible-inventory /home/cloud-admin/post-deploy-playbook.yml
