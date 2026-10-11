# PSoulSilver

A personal, research-only mod of Pokémon SoulSilver (Nintendo DS) where **Blue** is the playable character. The rest of the game's story and world stay mostly as they are.

> This repository contains **no ROM and no game files**. It holds xdelta patches, original sprite sources, and notes. To use a patch you need a SoulSilver ROM dumped from a cartridge you own.

## Status

Early setup. Nothing playable yet.

| Milestone | Scope | State |
|---|---|---|
| v0.1 | Blue overworld walking sprite, "BLUE" as default name | Planned |
| v0.2 | All overworld sheets, battle back sprite, trainer card | Planned |
| v0.3 | Intro and early-game dialogue (New Bark Town to Violet City) | Planned |
| Later | In-game Blue (Viridian Gym) decision, Kanto dialogue, optional Pallet Town start | Planned |

## Base ROM

| Field | Value |
|---|---|
| Game | Pokémon SoulSilver (US) |
| SHA-1 | _to be filled in from your own dump_ |

Patches only apply to this exact base. Run `scripts/verify-base.sh` before patching.

## Applying a patch

1. Dump your own SoulSilver cartridge and check its SHA-1 matches the one above.
2. Apply the patch with [xdelta3](https://github.com/jmacd/xdelta) or Delta Patcher:
   ```sh
   xdelta3 -d -s soulsilver.nds patches/<patch>.xdelta psoulsilver.nds
   ```
3. Play `psoulsilver.nds` in melonDS, DeSmuME, or on hardware.

## Tools

- [DSPRE](https://github.com/DS-Pokemon-Rom-Editor/DSPRE): text, scripts, events, and rebuilding the ROM
- Tinke: browsing the ROM's file system and NARC archives
- NitroPaint: exporting and importing DS graphics and palettes
- A pixel editor (Aseprite, LibreSprite, GIMP) for sprite work
- xdelta3: building and applying patches
- melonDS or DeSmuME for testing

## Layout

```
patches/          xdelta patches, one per tagged version
assets/sprites/   PNG sources for Blue's sprites
assets/palettes/  palette files
text/             dialogue changes (original line, new line, text bank and line)
docs/             rom-map.md (every file and index changed), build.md
scripts/          make-patch.sh, verify-base.sh
```

## Building a patch

See [docs/build.md](docs/build.md). In short: edit a copy of your clean dump with the tools above, then run `scripts/make-patch.sh`.

## Credits

- Blue sprite reference: [chrisx698 on DeviantArt](https://www.deviantart.com/chrisx698/art/Pokemon-HG-SS-Sprite-Blue-165247753). Ask the artist before distributing anything derived from it.
- Pokémon is © Nintendo, Game Freak, and Creatures. This is an unofficial, non-commercial fan project and is not affiliated with them.
