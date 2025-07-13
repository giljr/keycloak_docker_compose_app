## Rails 8 + Keycloak Integration + Docker: A Beginner’s Guide

Learn how to integrate Rails 8 with Keycloak for authentication, powered by Docker for a smooth development experience.

This guide is inspired by [Rails 8 + Keycloak Integration: A Beginner’s Guide](https://medium.com/jungletronics/rails-8-keycloak-integration-a-beginners-guide-e3b11dcaf560), updated for the latest Rails and Ubuntu 25.04 and now using 👌 Docker Technology 👌. 

🧰 Prerequisites
```
✅ Ubuntu 22.04+ (tested on 25.04)
✅ Docker & Docker Compose (docker compose version)
✅ Rails 8 (rails -v)
✅ PostgreSQL client tools (psql)
```
### 🚀 Getting Started
#### 1️⃣ Clone the project
```bash
git clone https://github.com/giljr/keycloak_docker_compose_app
cd keycloak_docker_app
```
#### 2️⃣ Running Docker Compose Inside Ruby-Based Containers in VS Code

Install VS Code Extension:
```
Dev Containers by Microsoft from the Extensions Marketplace.
```
Open Containerized Environment: Press `Ctrl + Shift + P`, then select:
```
Dev Containers: Rebuild Without Cache and Reopen in Container
Add configuration to workspace → From Docker Compose
Select ruby_container
```
Then click `OK` twice.

Make sure the containers are running:
```
docker ps -a
```
✅ Services:
    
    db →       http://172.18.0.100:5433 (postgres / postgres)

    pgAdmin →  http://172.18.0.101:5050 (admin@example.com / postgres)

    Rails →    http://172.18.0.102:3001

    Keycloak → http://172.18.0.103:8080 (admin/admin)

    Mailhog →  http://172.18.0.104:8025

    

#### 3️⃣ Configure Keycloak

Login to Keycloak admin at http://172.18.0.103:8080

Create a realm, client, and user matching your Rails app needs

Make sure your client uses openid-connect and standard flows (Authorization Code)

Folow this topic: [5. Create Users, Set Credentials, and Assign Roles](https://medium.com/jungletronics/rails-8-keycloak-integration-a-beginners-guide-e3b11dcaf560#4b44)


#### 4️⃣ Run Rails app

Enter the Rails container:

    docker compose exec rails-app bash

Setup database:

    bundle install
    rails db:setup

Start Rails (if not already):

    rails server -b 0.0.0.0 -p 3000

Visit: http://172.18.0.102:3001

#### 🔗 Useful Links

[Keycloak Documentation](https://www.keycloak.org/)

[Rails 8 + Keycloak Integration: A Beginner’s Guide](https://medium.com/jungletronics/rails-8-keycloak-integration-a-beginners-guide-e3b11dcaf560)

#### 📝 Notes

This setup uses a `docker-compose.yml` and .`devcontainer` for easy onboarding in VS Code or CLI.
Make sure your Docker installation includes the Compose plugin (`docker compose not docker-compose`).

📄 License

MIT © [Jaythree] — brougt by Jungletronics
