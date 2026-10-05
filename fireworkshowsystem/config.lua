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