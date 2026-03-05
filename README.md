# Savanna Birthday Stack
A containerized multi-site infrastructure project utilizing an Nginx Reverse Proxy to serve isolated web services.

## Architecture
- **Host OS:** Ubuntu 24.04
- **Orchestration:** Docker Compose
- **Proxy:** Nginx (Entry point for all traffic)
- **Services:** - `savanna-birthday`: Static HTML birthday page
  - `von-site-2`: Secondary static site

## Networking
- The proxy listens on Guest Port **8081**.
- Internal services are isolated on the Docker bridge network.

## Deployment
```bash
# Start the stack
sudo docker compose up -d

# Verify services
sudo docker ps
