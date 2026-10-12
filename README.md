# MKF - Simply Knock

Knocking on doors, the [Modifier Key Framework](https://github.com/eXgamble/Modifier-Key-Framework) way.

Activating a locked house door works as always: unlock it with its key, or pick the lock. Hold the
modifier key to **Knock** instead. Whoever is home answers through the door and you can talk your
way in ([Simply Knock SE](https://www.nexusmods.com/skyrimspecialedition/mods/14098) does the
knocking, the voices and the persuasion). No menu pops up in between.

While Knock shows, the prompt tells you how the people who live there feel about you (Friend, Acquaintance,
Enemy, ...) instead of the lock's level. For a household, it's the friendliest of them, the one Simply Knock
lets answer first.

The same doors as Simply Knock: an outside door into a house, dwelling or farm that's locked, that you
have no key for and whose lock can be picked, and you're not sneaking.

## Requirements

- Modifier Key Framework 1.4.0 or newer
- Simply Knock SE (and what it needs: SkyUI, PapyrusUtil)
- powerofthree's Papyrus Extender

Don't use it with Just Knock (the Dynamic Activation Key patch): this replaces it.

## How it works

- `MKF - Simply Knock.esp` empties Simply Knock's activation perk, so its Knock / Leave / Unlock menu
  never shows, and runs a small player script that receives the framework's Knock action and calls
  Simply Knock's own knock.
- `Scripts/SimplyKnockSKSE.pex` replaces Simply Knock's old SKSE function (its DLL predates
  Anniversary Edition) with powerofthree's Papyrus Extender's door lookup.
- `Source/Stubs` is only for compiling; it isn't needed in game.

## License

GPL-3.0 (see LICENSE).
