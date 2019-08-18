# Forest

GameMaker Studio 2 Code-Along with course content from https://learn.heartbeast.co/

The game is a simple zelda-clone where you can roll, drop bombs, shoot a bow and arrow, and find a sword.

> Note that you must equip items at game start to have any actions. This includes rolling and placing bombs.

## Controls

- `<esc>` to access inventory and `z` and `x` to equip inventory items to actions
- Arrows to move
- `z` for primary action
- `x` for secondary action
- `i` to save game

## Key Features

- A sword can be found on the second level that can permanently cut trees
- A bow that can be held before firing
- Stamina is used to control how many actions can be used other than with bombs, which have a limited quantity
- Saving/loading works and saves player state and world state (in terms of cut trees)
- Hedgehog enemy spikes when player is nearby
- Bat enemy swarms when player is nearby, they never stack incorrectly
- Hornet enemy that fires projectiles
- Inventory system with player states based on inventory items
- Arrows that fire with special collision to avoid solid walls when on the same level
- Shadows that appear under enemies and player
- Tile-based level buildout
- Start positions on maps that change based on where you've entered from
