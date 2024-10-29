# Rimworld Together Unraid App Template

This Unraid app template allows you to easily install and run the **Rimworld Together** game server on your Unraid server using Docker. The container is hosted on GitHub Container Registry (GHCR).

## GUI Install

### 1. Navigate to the Docker tab of your Unraid server.

### 2. At the bottom of the Docker tab select "Add Container".

### 3. Configure the Docker Container
#### Recommended settings:
- **Template:** Leave blank
- **Name:** `Rimworld-Together`
- **Overview:** Leave blank
- **Additional Requirements:** leave blank
- **Repository:** `ghcr.io/mrgreaterthan/rimworld-together:latest`
    ##### Container tag may be changed from `latest` to a specific version of Rimworld Together if needed.
- **Network Type:** `bridge`
- **Console shell command:** `bash`
- **Privileged:** `false`

#### The following settings are added by using the "Add another Path, Port, Variable, Label or Device" button. Review and adjust the following settings as needed:

#### Port:
- **Name**: `game-port`
- **Container Port**: `25555`
- **Default Value:** `25555`
- **Connection Type:** `TCP`
- **Description:** `used for the game server`

#### Volume Mappings:
Make all volumes read/write
- **Backups**: Path to store game backups.
  - Container Path: `/opt/rimworld-together/Backups`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Backups`.
- **Caravans**: Path for caravans.
  - Container Path: `/opt/rimworld-together/Caravans`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Caravans`.
- **Core**: Path for most configuration files.
  - Container Path: `/opt/rimworld-together/Core`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Core`.
- **Events**: Path for game events.
  - Container Path: `/opt/rimworld-together/Events`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Events`.
- **Factions**: Path for factions.
  - Container Path: `/opt/rimworld-together/Factions`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Factions`.
- **Logs**: Path for logs.
  - Container Path: `/opt/rimworld-together/Logs`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Logs`.
- **Maps**: Path for saved maps.
  - Container Path: `/opt/rimworld-together/Maps`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Maps`.
- **Saves**: Path for saved games.
  - Container Path: `/opt/rimworld-together/Saves`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Saves`.
- **Settlements**: Path for settlements.
  - Container Path: `/opt/rimworld-together/Settlements`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Settlements`.
- **Sites**: Path for sites.
  - Container Path: `/opt/rimworld-together/Sites`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Sites`.
- **Users**: Path for user data.
  - Container Path: `/opt/rimworld-together/Users`
  - Default Host Path: `/mnt/user/appdata/rimworld-together/Users`.

### 4. Start the Container

Once you've configured the settings:

1. Click **Apply** to install the container.
2. The container will start automatically after installation.
3. You can manage the container (start, stop, restart) from the **Docker** tab in the Unraid interface.

### 5. Access the Game Server

- Connect to the game server using your Unraid server's IP address and the specified game port (default: `25555`).
- Example: `<Unraid-IP>:25555`.

### 6. Manage Game Data

All game data, such as backups, saves, and logs, will be stored in the paths you specified during the volume mapping configuration. By default, these paths are located in `/mnt/user/appdata/rimworld-together/` on your Unraid server.

You can back up, restore, and manage these files directly from the Unraid web interface or via SMB/NFS shares.

## Support

- For container issues or support, please visit [my GitHub issues](https://github.com/MrGreaterThan/rimworld-together/issues) page.
- For issues or support with the application itself, please visit [the project owner's GitHub issues](https://github.com/Byte-Nova/Rimworld-Together/issues) page.
