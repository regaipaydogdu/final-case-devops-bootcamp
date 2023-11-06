## Own Gitlab Runner

**_Built with;_**

[![aws][#aws]][@aws] ![gitlab][#gitlab] ![linux][#linux]

### :hammer: Configuration

In this project, we implement GitLab CI/CD for our pipeline. Instead of relying on GitLab's shared runners, we have set up our own dedicated machines for processing computations. To achieve this, we have chosen to use AWS EC2 instances. While I opted for the Amazon Linux 2 distribution on the EC2 machines, you have the flexibility to use other Linux distributions. However, it's worth noting that the choice of distribution may impact the required dependencies.
<br>
<br>
![Gitlab CI/CD Runner AWS][#gitlab-runner-aws]
<br>
<br>
<p align="center"><img src="https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/gitlab-runners.PNG" alt="Gitlab Runner"></a></p>






[#gitlab-runners]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/gitlab-runners.PNG
[#gitlab-runner-aws]: https://github.com/regaipaydogdu/final-case-devops-bootcamp/blob/main/assets/images/gitlab-runner-aws.png

[#linux]: https://img.shields.io/badge/-Linux-grey?logo=linux
[#gitlab]: https://img.shields.io/badge/GitLab%20CI/CD-330F63?style=flat&logo=gitlab&logoColor=white
[#aws]: https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white

[@react]: https://reactjs.org/
[@docker]: https://www.docker.com/
[@terraform]: https://www.terraform.io/
[@aws]: https://aws.amazon.com/
[@kubernetes]: https://kubernetes.io/
