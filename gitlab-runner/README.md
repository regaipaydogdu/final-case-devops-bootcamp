## Own Gitlab Runner

### :hammer: Configuration

In this project, we implement GitLab CI/CD for our pipeline. Instead of relying on GitLab's shared runners, we have set up our own dedicated machines for processing computations. To achieve this, we have chosen to use AWS EC2 instances. While I opted for the Amazon Linux 2 distribution on the EC2 machines, you have the flexibility to use other Linux distributions. However, it's worth noting that the choice of distribution may impact the required dependencies.

![Gitlab CI/CD Runner][#gitlab-runners]
![Gitlab CI/CD Runner AWS][#gitlab-runner-aws]

[#gitlab-runners]: ./assets/images/gitlab-runners.PNG
[#gitlab-runner-aws]: ./assets/images/gitlab-runner-aws.png
