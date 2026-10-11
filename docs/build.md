# Building a patch

1. Put your clean dump outside the repo, for example `../base/soulsilver.nds`, and run `scripts/verify-base.sh ../base/soulsilver.nds`.
2. Copy it to `build/psoulsilver.nds` and make your edits on the copy with DSPRE, Tinke and NitroPaint.
3. Record each change in `docs/rom-map.md` and `text/dialogue-changes.md`.
4. Run `scripts/make-patch.sh ../base/soulsilver.nds build/psoulsilver.nds vX.Y`.
5. Test the patched ROM, then commit the patch and tag the version.
