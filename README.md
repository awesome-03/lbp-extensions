# Bastion Practice Map Extensions

A datapack to extend the features of llama's bastion practice map.

## Features

- Right click menu items to go back
- Starting saturation selector (0-20)
- Guarantee triple rampart and good gap functions for bridge and stables
- Enchant glint to indicate that an option is enabled
- Dimmed item colors to indicate overridden settings
- Made returning back from edit menus put you back to where you entered them from
- Fixed breaking blocks in lobby after resetting
- Added a tutorial to set up a bastion practice instance to the help message
- Choosing the randomized option pool for every setting that applies
  - Shift click items with multiple options to edit the 'Custom' random pool for it
- Added an option to configure pickaxe reset behavior:
  - Normal → throw pickaxe = lobby, crouch throw = rerun
  - Reversed → throw pickaxe = rerun, crouch throw = lobby
  - Confirm → show a chat message you can click on to rerun or go back to lobby
- Added save states using the `/function #states:save` command:
  - 'Rerun' (shift throw pick on Normal mode) to return to the exact saved state
  - Dying puts you back in the saved state
  - Reset the run to exit the saved state
- Added an option to enable Ranked Guaranteed Loot (enabled by default):
  - Guarantees 5 obsidian and 3 iron across all bastion chests
  - Iron can be in the form of nuggets, and lower treasure is never intended
- Added a Bastion Info option (Advanced Settings, or `/function #info:toggle`) that labels the bastion in game:
  - Every piglin and hoglin spot in the outer parts, with what it rolls and how likely
  - What each outer slot (ramparts, gaps, treasure center, ...) rolled, its odds, and how many spots it has
  - Only the piece that's there gets labelled, use the Shuffle Wand to see the others
  - 'Everything' also labels the spots inside the bastion
- Added Bounding Boxes and Entity Markers options next to it, like the ones on bastionvisualizer.com, both only while Bastion Info is on:
  - Bounding Boxes outlines every outer piece and every piece the wand can shuffle inside with a structure block's box, the structure block hidden inside a piece. The game only draws those in creative or spectator, so runs start in creative while it's on. Turning it off puts back the blocks they replaced
  - Entity Markers puts a glowing block on every mob spot that shows through walls (orange piglin, red melee piglin, magenta hoglin)
  - F3+N switches to spectator to fly through walls, the visualizer's Noclip
- Added a Shuffle Wand (Advanced Settings) to swap pieces in place:
  - Right-click a rampart, gap or treasure center for its next piece, sneak + right-click for the previous one
  - The stalls in the stables, the housing units and center piece, and the treasure room's walls and corners go through their vanilla variants the same way. LBP builds those as one of 100 prebuilt layouts, which got matched back to vanilla's pieces
  - Mobs, chests and labels come with the new piece, the rest of the bastion stays as it is
  - Resetting brings back what LBP rolled, unless you save a state, then the shuffled layout is what resets go back to
- Added a Block Decay option to the treasure settings: Vanilla, High-Roll (decay chances x2) or Low-Roll (x0.5)
  - Covers cracked bricks, gilded blackstone, missing blocks in the roof, outer walls and top ramparts, and the magma and gold blocks that turn into bricks
  - LBP saves the treasure room's decay with each of its 100 layouts, so the same layout always had the same gilded blackstone. The room's decay is now rolled again every run with vanilla's rules
  - The top rampart's holes get likelier the higher up they are, like in vanilla, instead of one flat chance

## Planned Changes
- Custom piedar options (Half done, not merged)
- Additional run info after a run is done (e.g. fire res count)

### Disclaimer

I would like to state that I will be using AI features to assist development of this datapack. I was not using it at all at earlier stages, however I came to the conclusion that I should probably try it out and see if it helps out, as this project has a lot of aspects where I have to copy over files and commands and make tweaks etc. and I unfortunately have too much going at once right now, and I don't want to abandon this project.
