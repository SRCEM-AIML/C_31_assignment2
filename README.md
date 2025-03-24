# Multi-App Django Project with Docker and Jenkins

## 📌 Project Overview

This project is a **Multi-App Django Web Application** containerized using **Docker** and automated with **Jenkins** for CI/CD deployment. It consists of multiple Django applications and is built for seamless deployment in a **Docker environment**.

---

## 📁 Project Structure

```
StudentProject/
│── app1/                # First Django App
│── app2/                # Second Django App
│── StudentProject/      # Django Project Settings
│── Dockerfile           # Docker Configuration File
│── requirements.txt     # Dependencies
│── Jenkinsfile          # CI/CD Pipeline Definition
│── manage.py            # Django Management Script
│── README.md            # Project Documentation
```

---

## 🚀 How to Run the Project

### **1️⃣ Install Dependencies**

Make sure you have **Docker** installed on your system.

- Check if Docker is installed:
  ```sh
  docker --version
  ```
- If not installed, download and install it from [Docker's official site](https://www.docker.com/products/docker-desktop/).

### **2️⃣ Build and Run the Docker Container**

Run the following command to build and run the application in a container:

```sh
docker build -t student_project .
docker run -p 8000:8000 student_project
```

After running the container, visit **[http://localhost:8000](http://localhost:8000)** in your browser.

### **3️⃣ Running with Docker Compose (Optional)**

If using **Docker Compose**, create a `docker-compose.yml` file and run:

```sh
docker-compose up -d
```

---

## 🔧 Setting Up Jenkins for CI/CD

1. **Run Jenkins using Docker**:

   ```sh
   docker run -d -p 8080:8080 -p 50000:50000 --name jenkins \
     -v jenkins_home:/var/jenkins_home \
     -v //var/run/docker.sock:/var/run/docker.sock \
     jenkins/jenkins:lts
   ```

2. **Get the Jenkins Admin Password**:

   ```sh
   docker logs jenkins
   ```

3. **Access Jenkins**:

   - Open **[http://localhost:8080](http://localhost:8080)** in your browser.
   - Complete the Jenkins setup by installing the recommended plugins.

4. **Add a Jenkins Pipeline Job**:

   - Create a new Pipeline Job in Jenkins.
   - Link it to your GitHub repository containing `Jenkinsfile`.

---

## 📦 Deploying the Project on Docker Hub

1. **Log in to Docker Hub**:
   ```sh
   docker login
   ```
2. **Tag and Push Docker Image**:
   ```sh
   docker tag student_project your_dockerhub_username/student_project
   docker push your_dockerhub_username/student_project
   ```
3. **Run from Docker Hub**:
   ```sh
   docker run -p 8000:8000 your_dockerhub_username/student_project
   ```

---

## 🛠 Technologies Used

- **Django** (Backend Framework)
- **Docker** (Containerization)
- **Jenkins** (CI/CD Automation)
- **Docker Hub** (Image Hosting)

---

##

---

##
