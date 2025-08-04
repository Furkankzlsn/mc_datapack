<!-- Use this file to provide workspace-specific custom instructions to Copilot. For more details, visit https://code.visualstudio.com/docs/copilot/copilot-customization#_use-a-githubcopilotinstructionsmd-file -->

# Minecraft Datapack Development Instructions

This workspace is for developing Minecraft datapacks. When working with this project:

## File Structure Guidelines
- All datapack content goes in the `data/` folder
- Use `data/minecraft/` for vanilla Minecraft modifications
- Use `data/custom/` (or your own namespace) for custom content
- Functions should be in `.mcfunction` files
- JSON files are used for advancements, recipes, loot tables, etc.

## Minecraft Commands
- Use proper Minecraft command syntax
- Target selectors: @s (self), @a (all players), @p (nearest player), @e (all entities)
- NBT data should follow proper JSON formatting
- Comments in .mcfunction files start with #

## Best Practices
- Keep function names descriptive and lowercase
- Use underscores for spacing in file names
- Test functions in a development world before deployment
- Use proper pack_format version for target Minecraft version
- Document complex command chains with comments

## Common Minecraft Commands
- `/give` - Give items to players
- `/tellraw` - Send formatted chat messages
- `/execute` - Run commands conditionally
- `/scoreboard` - Manage scoreboards and objectives
- `/effect` - Apply status effects
- `/time` - Control world time
- `/weather` - Control weather
