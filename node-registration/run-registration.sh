oc cp playbook.yml openstackclient:/home/cloud-admin/registration-playbook.yml

oc rsh openstackclient ansible-playbook -i /home/cloud-admin/ctlplane-ansible-inventory /home/cloud-admin/registration-playbook.yml
