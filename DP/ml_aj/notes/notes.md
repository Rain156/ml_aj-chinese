
# Summary:

- The Animated Java Model Assistant makes it easy to setup Animated Java models in minecraft.

- Features:
  - Select from various mobs to use as the AI for the model, with options to customize things such as mob scale, hostility, speed, health, and more.
  - Set animations to use for your model, and let the system handle switching between idle, walk, attack, and death animations automatically.
  - Customize the attack animations for precise attack styles.
  - Set various callback commands to have better control over how your model reacts to events in the world.
  - Set other properties for the model, such as its shadow, brightness, and if the head rotates separately from the body to face the player.

## Important: This datapack requires models that have been exported using Animated Java version 0.4.0+

***

# Setup: First Steps

- First, you must become an editor by typing this command in your chat window:
  /function ml_aj:editor

- Then, you can set up your model by either editing an existing model in the world, or spawning in a new one:
  - To edit an existing model, look at it and right-click the AJ Model Editor item to bring up the menu.
  - To spawn in a model, type this command in your chat window, and change the MODEL value to the project name of the model (which was set in your Animated Java Project Settings):
    /function ml_aj:model {name:"MODEL"}

***

# Basics:

- When the AJ Model Editor menu pops up in your chat, there are many different options to choose from. You can:
  - Set the custom name. This is the name that will appear for a player if they are killed by this mob, or if this mob is their pet and it dies.
  - Set a variant if needed (requires that the Include Apply Variant Functions option be checked in the Animated Java Project Settings when exporting the model).
  - Set if the model should be auto-reloaded when it's outdated. If set to False, an option to reload the model will appear in the AJ Model Editor menu when the model is outdated.
  - Reposition the model in the world by moving/looking around.
  - If the mob type is a cat or wolf, an option to set the pet owner will appear.
  - If the mob type is a bee, wolf, polar bear, or iron golem, an option to set the attack target selector will appear. An example selector would be '@e[tag=enemy,limit=1,sort=nearest]'

***

# Mob Choice:

- Select the [Model AI] option from the AJ Model Editor menu to set the mob type and other parameters. From the menu, you can:
  - Adjust the mob settings, such as speed, health amount, attack damage, hostility, etc.
  - You can also set the scale of the mob, but in order to use the [Visualize] option, you must first click the [◆Confirm◆] option when you are ready, then return to the AI Settings and click [Visualize] to see an outline of the mob. (Note: mob scale only works in Minecraft 1.20.5+)
  - If the model has a damage variant that can be used as a visual effect when it takes damage, you can set it as well.

***

# Animations:

- When the model is initially setup by the system, it detects if there are any common animations. These are the common names that are checked for: idle, walk, swim, death, attack, attack1, attack2, attack3, sit, sit_idle, and stand. For ease of use, make sure you name your animations with this naming convention in your Animated Java project before exporting.

  Select the [Animation] option from the AJ Model Editor menu to adjust animation settings. In the Animations menu, you can:
  - Set the name for the idle, walk, swim, and death animations. If the mob type is a cat or wolf, you can also set the name for the sit, sit idle, and stand animations that will play when the pet owner right-clicks on the model.
  - Click the [Custom Animations] option to edit custom animations that can be played for the model using commands.
  - Click the [Attack Animations] option to edit the mob attack settings (See more details below).

- Attack Animations:
  - In the Attack Animations menu, you can set all your attacks for the model.
  - When there are attack animations set, you can select the [Settings] option for each one.
  
  The Attack Animation Settings menu offers a great deal of control over your model's attacks. You can set things like:
    - If the attack is directional, meaning the model must be facing the target within the distance range
    - How much damage the attack will do (2 = one player heart)
    - The distance a target must be within in order to use the attack
    - The timing in which the target will be hurt during the animation
    - The amount of cooldown time to wait before attacking again
    - If the attack uses a projectile
    - A callback command to run during the animation

***

# Extras:

- Select the [Extras] option from the AJ Model Editor menu to edit things like:
  - If the model's head rotates separately from the body to follow the player (Does not work for all models, and the datapack that contains your models must be loaded before the ml_aj one by running a command such as /datapack enable "file/name" before "file/ml_aj"). Note: if more than one bone needs to rotate for the head, you can set a tag instead of the bone name.
  - The model's brightness, view range, shadow, and various callback commands
  - You can also select the [Uninstall] option which will uninstall the scoreboard objectives for the model (Requires that the Include Uninstall Function be checked in your Animated Java Project Settings when exporting).

***

# Save & Spawn:

- Select the [Spawn] option from the AJ Model Editor menu to view the different ways you can spawn your model into the world.

  World Spawn Method:
  - Select the [Save] option once you have setup your model the way you want it. Then choose one of the spawn options:
    - The [Command] option will place the command in your chat that can be used to spawn in the model with your saved settings.
    - The [Radius Command] option will place the command in your chat that can be used to spawn in the model with your saved settings, using a random distance from the execute location (from 0 blocks to the radius amount).
    - The [Item] option will give you a spawn egg item that can be used to spawn in the model with your saved settings.
  - You can also edit the save name for the model if you need to save a different version using the model's current settings. You can also choose to overwrite existing data when asked.

  Datapack Spawn Method:
  - If you are using your model in a datapack that will be released to the public, you can select the [Datapack Command] option, which will copy the full command that you can use to spawn the model instead of using data storage (see the Advanced section below for more details).

- You can also set if the model can despawn if a player is not within range. The despawn can either be disabling the model's movement and animations, or deleting it from the world.

***

# Commands:

- Here is a list of commands that you can run on a model to perform various actions:

  * At Bone - Run a command that's executed at the position of one of the model's bones. Change the BONE value to the name of the bone, and the COMMAND value to the command you want to run:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/at_bone {name:"BONE",cmd:'COMMAND'}

  * Attack - Make the model attack an entity within range. Change the ATTACK value to the name of the attack animation, and the SELECTOR value to a selector (i.e. '@e[tag=enemy,limit=1,sort=nearest]'):
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/attack {name:"ATTACK",entity:'SELECTOR'}

  * Target Set - If the mob type for the model is set to bee, wolf, polar bear, or iron golem, an attack target can be set for the model so that it will track down the target and attack it (including entities that spawn after this command is ran). Change the SELECTOR value to a selector (i.e. '@e[tag=enemy,limit=1,sort=nearest]'):
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/target {entity:'SELECTOR'}

  * Target Clear - If the mob type for the model is set to bee, wolf, polar bear, or iron golem, you can clear a target selector that was set with the command listed above. (Note: may not work on some entities if the target is a player):
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/target_clear

  * Damage - Apply a damage amount to the model to lower its health. Change the 5 value to the amount you want to apply:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/damage {amount:5}

  * Heal - Apply a healing amount to the model to raise its health up to the maximum value that is set for the model in the Model AI Settings menu. Change the 5 value to the amount you want to apply:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/heal {amount:5}

  * Play Animation - Play a custom animation that will reset to the first frame after playing (the custom animation must be set in the Custom Animations menu). Change the PLAY value to the name of the custom animation:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/play {name:"PLAY"}

  * Hold Animation - Play a custom animation and hold it at the last frame (the custom animation must be set in the Custom Animations menu). Change the HOLD value to the name of the custom animation:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/hold {name:"HOLD"}

  * Loop Animation - Play a custom animation and loop it (the custom animation must be set in the Custom Animations menu). Change the LOOP value to the name of the custom animation:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/loop {name:"LOOP"}

  * Stop Animation - Stop the current custom animation that's playing, if there is one:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/stop

  * Pet Owner - If the mob type for the model is set to cat or wolf, a pet owner can be set for it. Change the SELECTOR value to a player selector (i.e. '@p[tag=owner]'):
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/owner {entity:'SELECTOR'}

  * Variant - Set a variant on the mob (requires that the Include Apply Variant Functions option be checked in the Animated Java Project Settings when exporting the model). Change the VARIANT value to the name of the variant:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/variant {name:"VARIANT"}

  * Disable/Enable - Disable or enable the model to prevent/allow its movement and animations:
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/disable
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/enable

  * Despawn - Remove the model from the world (uses despawn animation if available):
    /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function ml_aj:run/despawn

***

# Locators/Cameras:

- To access the locator or camera on a model's rig, you can use the following commands. These are useful, for example, if you need to execute a command at a locator position, or have a player spectate or ride a locator object:
  /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] on passengers if entity @s[tag=ml_aj.locator] at @s run ...
  /execute as @e[tag=aj.rig_root,limit=1,sort=nearest] on passengers if entity @s[tag=ml_aj.camera] at @s run ...

***

# Advanced:

- Custom Mob Datapack: If you are creating your own custom mob datapack, you can get the command that will spawn in your custom mob without needing to store anything in storage data. Once you've set up your custom mob with its various settings, Use the AJ Model Editor Item on your mob to bring up the menu. Then click [Spawn] in the Menus section, and click [Datapack Command] to copy the command to your clipboard. You can then use that command in your datapack to spawn in your custom mob.
  - Be sure to include the ml_aj and ml_ces datapack folders with your datapack folder so that you can spawn in models for any world that uses your custom mob datapack.

# Important Notes:

- The less bones a model has, the more efficient the game will run with a large amount of custom models in the world.
- This datapack force loads the chunk at position 0 0.
- This datapack uses the MLCES datapack.
- This datapack sets the game rule commandBlockOutput to false
- To unload the datapack, run this function (Warning: Unloading the datapack will remove all custom models from any loaded chunks):
  /function ml_aj:system/unload
- Add the tag debug to yourself if you want to receive debug warnings or error messages for this datapack.
