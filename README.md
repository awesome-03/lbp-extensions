# Bastion Practice Map Extensions

A datapack to extend the features of llama's bastion practice map.

## How to use

1. Download the latest release [here](https://github.com/awesome-03/lbp-extensions/releases/latest/download/lbp_extensions.zip/)
2. Open your instance folder, click the `saves` folder and find your bastion map folder
3. Extract the zip you downloaded and put it in your world's `datapacks` folder
4. Join the world and run the `/reload` command

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
- Added save states by crouch throwing an axe:
  - 'Rerun' (shift throw pick on Normal mode) to return to the exact saved state
  - Dying puts you back in the saved state
  - Reset the run to exit the saved state
- Added an option to enable Ranked Guaranteed Loot (enabled by default):
  - Guarantees 5 obsidian and 3 iron across all bastion chests
  - Iron can be in the form of nuggets, and lower treasure is never intended
- Ways to access some features using commands in runs:
  - `/function #states:save` -> Does the same thing as crouch throwing an axe to save state
  - `/function #mode:toggle` -> Toggles between 'Normal' and 'Reversed' modes

## Planned Changes
- Custom piedar options (Half done, not merged)
- Additional run info after a run is done (e.g. fire res count)
- Helper commands:
  - Make mode toggle able to switch to Confirm mode
  - Command to get crossbow, sword, and paralyzed piglin spawn eggs
  - Command to give potion (?) to spawn a pig on a specific block (?) for testing late pig states
  - Command to be able to one shot piglins with a weapon or punch (?)
  - Command to not let you reset at all so you don't accidentally get rid of a savestate
- Option to auto savestate at load so when you die it doesn't go to a different bastion
- Option to revoke pre-bastion advancements on run start to simulate advancement toasts
- Reorganize the function tags, add/remove some to easily change things mid run without the GUI

**Fixes:**
- Remove the body of the dead duplicated piglins so they don't appear
- A bug causing you to stay in creative after resetting to savestate while tick warp is enabled
- Verify that the piglin aggro timers don't get messed up by savestates (I forgot if I did this or not)

## SUGGESTIONS

If you have any suggestions, you can make an issue here or ping me on discord with them.

### Disclaimer

I would like to state that I will be using AI features to assist development of this datapack. I was not using it at all at earlier stages, however I came to the conclusion that I should probably try it out and see if it helps out, as this project has a lot of aspects where I have to copy over files and commands and make tweaks etc. and I unfortunately have too much going at once right now, and I don't want to abandon this project.
