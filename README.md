# 🚀 Node.js To-Do Application — DevOps & CI/CD Project

![Node.js](https://img.shields.io/badge/Node.js-Application-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?style=for-the-badge&logo=jenkins&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![Azure Pipelines](https://img.shields.io/badge/Azure-DevOps-0078D4?style=for-the-badge&logo=azuredevops&logoColor=white)

## 📌 Project Overview

This project demonstrates the implementation of DevOps practices for a Node.js To-Do application.

It brings together application development, Docker containerization, CI/CD configuration, Kubernetes deployment manifests, infrastructure as code, and DevSecOps-related configuration.

The repository includes a Jenkins pipeline, an Azure Pipelines configuration, Docker Compose, Kubernetes manifests, Kustomize configuration, and Terraform files.

The goal is to understand how application code can move through a repeatable build, test, packaging, and deployment workflow.

## 🎯 Project Objectives

- Develop and run a Node.js application.
- Manage source code using Git and GitHub.
- Containerize the application using Docker.
- Run the application using Docker Compose.
- Automate build and deployment tasks using Jenkins.
- Explore CI/CD pipelines with Azure Pipelines.
- Deploy containerized workloads to Kubernetes.
- Organize Kubernetes configurations using Kustomize.
- Explore infrastructure provisioning using Terraform.
- Understand DevSecOps and security checks in a delivery pipeline.
- Practice application troubleshooting and deployment verification.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Node.js | Application runtime |
| npm | Dependency management |
| JavaScript | Application logic |
| Docker | Containerization |
| Docker Compose | Running containerized services |
| Jenkins | CI/CD automation |
| Azure Pipelines | Pipeline configuration |
| Kubernetes | Container orchestration |
| Kustomize | Kubernetes configuration management |
| Terraform | Infrastructure as code |
| Git | Version control |
| GitHub | Source code hosting |
| DevSecOps tools | Security testing and vulnerability management, depending on configuration |

## 🏗️ Project Architecture

The following diagram represents a typical workflow for this project.

```text
                 Developer
                     |
                     v
               GitHub Repository
                     |
          +----------+-----------+
          |                      |
          v                      v
       Jenkins             Azure Pipelines
          |                      |
          +----------+-----------+
                     |
                     v
              Build and Test
                     |
                     v
              Docker Image
                     |
                     v
             Container Registry
                     |
                     v
            Kubernetes Cluster
                     |
                     v
             Node.js Application
                     |
                     v
                End Users

      Terraform  ---> Infrastructure
      Kustomize  ---> Kubernetes Configuration
      DevSecOps  ---> Security Checks
```

**Note:** This is a conceptual architecture. The actual execution flow depends on the configuration in `Jenkinsfile`, `azure-pipelines.yml`, and the other project files.

## 📂 Project Structure

```text
jenkins-project/
│
├── DevSecOps/
├── k8s/
├── kustomize/
├── terraform/
├── views/
│
├── Dockerfile
├── Jenkinsfile
├── README.md
├── app.js
├── azure-pipelines.yml
├── docker-compose.yaml
├── package.json
├── package-lock.json
└── sonar-project.properties
```

### 📁 Directory and File Explanation

| File or Directory | Purpose |
|---|---|
| `DevSecOps/` | Security-related configurations or supporting files |
| `k8s/` | Kubernetes resource manifests |
| `kustomize/` | Kustomize configuration for managing Kubernetes resources |
| `terraform/` | Terraform configuration files for infrastructure provisioning |
| `views/` | Application view templates |
| `Dockerfile` | Instructions for building the Docker image |
| `Jenkinsfile` | Jenkins pipeline definition |
| `app.js` | Node.js application entry point |
| `azure-pipelines.yml` | Azure Pipelines configuration |
| `docker-compose.yaml` | Docker Compose service configuration |
| `package.json` | Application metadata, dependencies, and npm scripts |
| `package-lock.json` | Records resolved npm dependency versions |
| `sonar-project.properties` | SonarQube project analysis configuration |
| `README.md` | Project documentation |

## ⚙️ Prerequisites

Install the tools required for the workflows you intend to run:

- Git
- Node.js and npm
- Docker Desktop or Docker Engine
- Docker Compose
- Jenkins
- kubectl
- A Kubernetes cluster, such as Kind, Minikube, or a cloud-hosted cluster
- Terraform, if using the infrastructure configuration
- Access to Azure DevOps, if running Azure Pipelines

Verify your installations:

```bash
git --version
node --version
npm --version
docker --version
docker compose version
kubectl version --client
terraform version
```

Some tools are optional and are only required for their corresponding workflows.

## 🚀 Step 1: Clone the Repository

Clone the project:

```bash
git clone https://github.com/shubhamdadwal1/jenkins-project.git
```

Navigate to the project directory:

```bash
cd jenkins-project
```

Review the files:

```bash
ls
```

On Windows PowerShell:

```powershell
Get-ChildItem
```

## 🟢 Step 2: Run the Node.js Application

Install dependencies:

```bash
npm install
```

Review the scripts in `package.json`:

```bash
npm run
```

Start the application using the script defined in the project. If the application is designed to run directly through `app.js`, use:

```bash
node app.js
```

Alternatively, if `package.json` defines a `start` script:

```bash
npm start
```

Check the terminal output for the application URL and port.

Open the application in your browser using the URL configured by the application.

> The exact URL, port, and startup command depend on the contents of `app.js` and `package.json`.

## 🐳 Step 3: Build the Docker Image

Build the application image:

```bash
docker build -t node-todo-cicd:latest .
```

List available images:

```bash
docker images
```

Run a container using the port configured by your Dockerfile and application.

For example, if the application listens on port 3000 inside the container:

```bash
docker run -d --name node-todo-app -p 3000:3000 node-todo-cicd:latest
```

Check the container:

```bash
docker ps
```

View the logs:

```bash
docker logs node-todo-app
```

Stop the container:

```bash
docker stop node-todo-app
```

Remove the container:

```bash
docker rm node-todo-app
```

**Important:** The example assumes the application listens on port 3000. Verify the actual port in your application and Dockerfile before running the command.

## 🐳 Step 4: Run with Docker Compose

The repository includes `docker-compose.yaml`.

Review the service configuration:

```bash
cat docker-compose.yaml
```

On Windows PowerShell:

```powershell
Get-Content .\docker-compose.yaml
```

Start the configured services:

```bash
docker compose -f docker-compose.yaml up -d --build
```

Check running services:

```bash
docker compose -f docker-compose.yaml ps
```

View logs:

```bash
docker compose -f docker-compose.yaml logs
```

Follow logs continuously:

```bash
docker compose -f docker-compose.yaml logs -f
```

Stop and remove the Compose-managed containers and network:

```bash
docker compose -f docker-compose.yaml down
```

Review the Compose configuration before running these commands, especially if it contains databases or persistent volumes.

## 🔄 Step 5: Jenkins CI/CD Pipeline

The repository contains a `Jenkinsfile`, which can define the automation workflow used by Jenkins.

A typical pipeline may contain these stages:

1. **Checkout:** Retrieve source code from GitHub.
2. **Install Dependencies:** Install Node.js dependencies.
3. **Test:** Execute automated tests.
4. **Code Analysis:** Run configured code-quality checks.
5. **Build:** Build the Docker image.
6. **Publish:** Push the image to a container registry.
7. **Deploy:** Deploy the application to the configured environment.
8. **Verify:** Check whether the application is running correctly.

### Jenkins Configuration

1. Install and start Jenkins.
2. Install the required plugins.
3. Configure the required tools and build agents.
4. Configure credentials for Git, Docker registry, and deployment access.
5. Create a Pipeline job.
6. Configure the GitHub repository URL.
7. Select the `Jenkinsfile` from source control.
8. Run the pipeline.
9. Review the console output for each stage.

### Jenkins Pipeline Best Practices

- Keep pipeline configuration in version control.
- Store passwords and tokens in Jenkins Credentials.
- Avoid hardcoding secrets in the `Jenkinsfile`.
- Fail the pipeline when required tests fail.
- Use versioned Docker image tags.
- Verify deployments after releasing a new image.
- Limit deployment permissions to the required resources.

> The exact Jenkins stages depend on the current contents of your `Jenkinsfile`.

## ☁️ Step 6: Azure Pipelines

The repository also contains `azure-pipelines.yml`.

Azure Pipelines can automate application builds, tests, Docker image creation, and deployment.

### General Workflow

```text
GitHub Repository
       |
       v
Azure Pipeline Trigger
       |
       v
Install Dependencies
       |
       v
Run Tests
       |
       v
Build Docker Image
       |
       v
Publish Artifact or Image
       |
       v
Deploy Application
       |
       v
Verify Deployment
```

### Configuration Steps

1. Open your Azure DevOps organization.
2. Create or select a project.
3. Connect the source repository.
4. Configure the pipeline to use `azure-pipelines.yml`.
5. Configure required service connections and credentials.
6. Run the pipeline.
7. Review the build and deployment logs.

The actual stages and triggers depend on the YAML configuration in the repository.

## ☸️ Step 7: Kubernetes Deployment

The repository contains a `k8s/` directory with Kubernetes-related configuration.

Inspect the manifests:

```bash
ls k8s
```

If the directory contains the intended application manifests, you can deploy them with:

```bash
kubectl apply -f k8s/
```

Check the resources:

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```

Check resources in all namespaces:

```bash
kubectl get pods -A
```

Inspect a Deployment:

```bash
kubectl describe deployment <deployment-name>
```

Inspect a Pod:

```bash
kubectl describe pod <pod-name>
```

View application logs:

```bash
kubectl logs <pod-name>
```

Check recent events:

```bash
kubectl get events --sort-by=.metadata.creationTimestamp
```

> Review the manifests before applying them. Ensure that the image references, namespaces, selectors, ports, and other settings match your environment.

## 🧩 Step 8: Kubernetes Configuration with Kustomize

Kustomize helps organize Kubernetes manifests and apply environment-specific configuration without manually maintaining duplicate YAML files.

Inspect the directory:

```bash
ls kustomize
```

Locate the directory containing `kustomization.yaml` or `kustomization.yml`.

Preview the generated resources:

```bash
kubectl kustomize <path-to-kustomization-directory>
```

Apply the configuration:

```bash
kubectl apply -k <path-to-kustomization-directory>
```

Check the deployed resources:

```bash
kubectl get all
```

Replace the placeholder with the actual directory containing your Kustomize configuration.

### Benefits of Kustomize

- Reuse common Kubernetes manifests.
- Maintain environment-specific overlays.
- Reduce duplicate YAML configuration.
- Customize image tags and resource settings.
- Keep development and production configuration organized.

## 🏗️ Step 9: Infrastructure as Code with Terraform

The repository contains a `terraform/` directory.

Terraform can define and manage cloud infrastructure through configuration files.

### Common Terraform Workflow

```text
Terraform Configuration
          |
          v
    terraform init
          |
          v
    terraform fmt
          |
          v
    terraform validate
          |
          v
    terraform plan
          |
          v
    terraform apply
          |
          v
  Infrastructure Resources
```

Navigate to the Terraform directory:

```bash
cd terraform
```

Initialize the configuration:

```bash
terraform init
```

Format the configuration:

```bash
terraform fmt -recursive
```

Validate the configuration:

```bash
terraform validate
```

Review the proposed infrastructure changes:

```bash
terraform plan
```

Apply changes only after reviewing the plan and confirming the target environment:

```bash
terraform apply
```

When finished, inspect the resources and decide whether they should be retained or removed.

**Important:**

- Review the Terraform provider and resource definitions first.
- Configure credentials securely.
- Never commit cloud credentials or private keys.
- Do not delete a Terraform state file as a troubleshooting shortcut.
- Do not run `terraform destroy` unless you intend to delete the resources managed by that configuration.

## 🔐 Step 10: DevSecOps and Code Quality

The repository contains a `DevSecOps/` directory and `sonar-project.properties`.

These files may support security checks and static code analysis, depending on the configuration.

### Potential Security Checks

- Static application security testing (SAST)
- Dependency vulnerability scanning
- Container image vulnerability scanning
- Secret detection
- Infrastructure-as-code security scanning
- Code-quality analysis
- Configuration and deployment security checks

### SonarQube Integration

The `sonar-project.properties` file can define settings such as:

- Project key
- Project name
- Source directories
- Source encoding
- Excluded files

Review the existing configuration before running analysis.

If SonarQube is configured, integrate the scanner into the Jenkins or Azure Pipelines workflow using securely configured credentials.

> A directory or configuration file alone does not confirm that security scanning is active. Document individual scanners as implemented only after verifying their configuration and execution.

## 🧪 Step 11: Application and Deployment Verification

After deployment, verify that the application is working as expected.

### Docker Checks

```bash
docker ps
docker logs <container-name>
```

### Kubernetes Checks

```bash
kubectl get pods
kubectl get deployments
kubectl get services
```

### Deployment Rollout Status

```bash
kubectl rollout status deployment/<deployment-name>
```

### Restart a Deployment

```bash
kubectl rollout restart deployment/<deployment-name>
```

### Inspect Application Logs

```bash
kubectl logs <pod-name>
```

Use these checks to investigate failed builds, unavailable services, container startup failures, and application errors.

## 🛠️ Common Issues and Troubleshooting

### 1. npm Install Fails

Check the Node.js and npm versions:

```bash
node --version
npm --version
```

Review the npm error output and confirm that the project's dependencies and Node.js version are compatible.

### 2. Docker Build Fails

Run:

```bash
docker build -t node-todo-cicd:latest .
```

Check the Dockerfile, build context, file paths, dependency installation, and build output.

### 3. Docker Container Exits

Inspect the container:

```bash
docker ps -a
```

Check its logs:

```bash
docker logs <container-name>
```

Review the application startup command, environment variables, dependencies, and configured ports.

### 4. Kubernetes Shows ImagePullBackOff

Inspect the Pod:

```bash
kubectl describe pod <pod-name>
```

Check whether the image exists, the image tag is correct, and registry credentials are configured where necessary.

### 5. Kubernetes Pod Is in CrashLoopBackOff

Check the logs:

```bash
kubectl logs <pod-name>
```

If the container has restarted, inspect the previous logs:

```bash
kubectl logs <pod-name> --previous
```

Review the application configuration, startup command, health probes, and dependencies.

### 6. Jenkins Pipeline Fails

Open the Jenkins job and inspect the console output.

Verify:

- Repository access
- Build agent configuration
- Node.js and Docker availability
- Jenkins credentials
- Pipeline syntax
- Registry access
- Kubernetes permissions, if deploying to Kubernetes

### 7. Terraform Initialization Fails

Run:

```bash
terraform init
```

Review provider configuration, backend settings, network access, and credentials.

Never expose secrets in terminal screenshots or GitHub commits.

## 🔒 Security Best Practices

- Do not commit passwords, API tokens, or private keys.
- Store credentials in Jenkins Credentials or an appropriate secret manager.
- Use secure Azure DevOps service connections.
- Restrict Kubernetes permissions using least privilege.
- Scan dependencies and container images for vulnerabilities.
- Use trusted and maintained base images.
- Pin dependency and image versions where appropriate.
- Protect Terraform state because it may contain sensitive values.
- Review infrastructure changes before applying them.
- Keep CI/CD credentials separate from application source code.
- Avoid exposing Jenkins or deployment dashboards directly to the public internet without suitable security controls.

## 📈 Future Improvements

Potential improvements include:

- Add automated unit and integration tests.
- Add a complete Jenkins CI/CD pipeline.
- Configure GitHub webhooks for automatic builds.
- Publish versioned Docker images to a registry.
- Automate Kubernetes deployment and rollback.
- Add Prometheus and Grafana monitoring.
- Integrate SonarQube quality gates.
- Add container image vulnerability scanning.
- Add Terraform security scanning.
- Configure notifications for failed pipeline runs.
- Add environment-specific Kubernetes overlays.
- Document deployment and recovery procedures.

These are possible enhancements, not claims that all features are already implemented.

## 💼 Skills Demonstrated

- DevOps fundamentals
- Node.js application deployment
- Git and GitHub
- Docker and Docker Compose
- Jenkins CI/CD
- Azure Pipelines
- Kubernetes Deployments and Services
- Kustomize
- Terraform
- DevSecOps concepts
- SonarQube configuration
- Linux and shell commands
- Troubleshooting and deployment verification

## 👨‍💻 Author

**Shubham Dadwal**

Cloud Computing | DevOps | AWS | Docker | Kubernetes | Jenkins | Terraform

GitHub: [@shubhamdadwal1](https://github.com/shubhamdadwal1)

## 🔗 Project Repository

[View the Jenkins Project on GitHub](https://github.com/shubhamdadwal1/jenkins-project)

## ⭐ Support

If you find this project useful for learning DevOps, CI/CD, containerization, and infrastructure automation, consider giving the repository a star.

---

**Built to practice DevOps automation, containerization, Kubernetes deployment, and infrastructure as code.**
