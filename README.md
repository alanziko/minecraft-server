# Minecraft server automatic deployment
## Deployment overview
```mermaid
architecture-beta
    group cloud(cloud)[Hetzner Cloud]

    service primary(server)[Primary Node] in cloud
    service storage(disk)[Primary Backup Storage] in cloud

    primary:R -- L:storage
```
