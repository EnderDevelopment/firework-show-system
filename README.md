# Firework Show System

Enhance your FiveM server with spectacular firework shows featuring NPCs and dynamic effects.

## Features

- Spectacular firework shows with dynamic effects
- NPCs running up to light the fireworks
- Admin commands to start and stop the firework show
- Database logging for firework show events

## Requirements

- FiveM server
- ESX Legacy framework
- MySQL database

## Installation

1. Download the script from the repository.
2. Place the script in your FiveM server's resources folder.
3. Add `start fireworkshowsystem` to your server.cfg file.
4. Ensure your database is set up with the provided SQL file.

## Usage

### Admin Commands

| Command | Description |
|---------|-------------|
| /startfirework | Start the firework show |
| /stopfirework | Stop the firework show |

### Configuration

Edit the `config.lua` file to customize the firework show settings:

```lua
Config = {}

-- Firework show settings
Config.FireworkShowDuration = 1200 -- 20 minutes in seconds
Config.FireworkInterval = 5 -- Interval between fireworks in seconds
Config.NPCModel = 's_m_y_blackops_01' -- NPC model
Config.NPCSpawnLocation = vector3(-1829.5, 2982.6, 32.8) -- Spawn location for NPCs
Config.FireworkLocations = {
    vector3(-1829.5, 2982.6, 32.8),
    vector3(-1830.5, 2980.6, 32.8),
    vector3(-1828.5, 2981.6, 32.8)
} -- Locations for fireworks

-- Admin commands
Config.AdminCommands = {
    start = 'startfirework',
    stop = 'stopfirework'
}
```

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=firework-show-system&utm_content=bottom) — describe it in one sentence and get the full source code.