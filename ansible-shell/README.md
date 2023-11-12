## Send Email Notification on Disk Usage Exceeding 90%

**_Built with;_**

![linux][#linux]

### :arrow_forward: Run on Ubuntu


| Files | Description|
| :-------- |:------------------------- |
| `ansible_playbook.yaml` |A YAML file defining Ansible tasks to be executed if disk usage exceeds 90%.|
| `disk_usage_alert.sh` | A Shell script for monitoring disk usage on Linux systems and sending an email notification if it surpasses 90%.|

 Go to the directory with the files and run the following code

```bash
  ansible-playbook ansible_playbook.yaml
```


![ansible][#ansible]



[#ansible]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/ansible-command.PNG

[#linux]: https://img.shields.io/badge/-Linux-grey?logo=linux

