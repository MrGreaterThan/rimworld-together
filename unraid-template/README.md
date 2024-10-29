# Rimworld Together Unraid App Template

This Unraid app template allows you to easily install and run the **Rimworld Together** game server on your Unraid server using Docker. The container is hosted on GitHub Container Registry (GHCR).

## Prerequisites

- **Community Applications** Plugin installed on Unraid (if not installed, please refer to Unraid documentation).
- A working Unraid server (version 6.9.0 or newer recommended).
- Internet access for your server to pull Docker images.

## Step-by-Step Instructions

### 1. Add the App Template Repository

1. In the Unraid web interface, navigate to the **Apps** tab.
2. Click on **Settings** in the top-right corner of the Apps tab.
3. Scroll down to **Repositories** and click **Add**.
4. In the **Repository URL** field, enter the URL for this GitHub repository containing the app template: https://github.com/MrGreaterThan/rimworld-together
5. Click **Save**. This will add the Rimworld Together app template to Unraid.

### 2. Install the Rimworld Together App

1. Go to the **Apps** tab in Unraid and search for `Rimworld Together`.
2. Click on the **Rimworld Together** app from the search results.
3. Click **Install**.

### 3. Configure the Docker Container

After clicking **Install**, you'll be presented with a configuration screen. Review and adjust the following settings as needed:

#### Ports:
- **Game Port**: The port used for the game server (default: `25555`).

#### Volume Mappings:
- **Backups**: Path to store game backups. Default: `/mnt/user/appdata/rimworld-together/Backups`.
- **Caravans**: Path for caravans. Default: `/mnt/user/appdata/rimworld-together/Caravans`.
- **Core**: Path for most configuration files. Default: `/mnt/user/appdata/rimworld-together/Core`.
- **Events**: Path for game events. Default: `/mnt/user/appdata/rimworld-together/Events`.
- **Factions**: Path for factions. Default: `/mnt/user/appdata/rimworld-together/Factions`.
- **Logs**: Path for logs. Default: `/mnt/user/appdata/rimworld-together/Logs`.
- **Maps**: Path for maps. Default: `/mnt/user/appdata/rimworld-together/Maps`.
- **Saves**: Path for saved games. Default: `/mnt/user/appdata/rimworld-together/Saves`.
- **Settlements**: Path for settlements. Default: `/mnt/user/appdata/rimworld-together/Settlements`.
- **Sites**: Path for sites. Default: `/mnt/user/appdata/rimworld-together/Sites`.
- **Users**: Path for user data. Default: `/mnt/user/appdata/rimworld-together/Users`.

#### Environment Variables:
- **Game Version**: Set the `VERSION` environment variable to specify a game version (default: `latest`).

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