---
title: Use "desat" option to tweak HDR-to-SDR in Handbrake
date: 2026-01-18
---
When converting HDR video to SDR in Handbrake, e.g. for playing on a Roku TV, you can **customize the saturation** using the `desat` setting (under "Custom" for "Colorspace"). Example:

```
primaries=bt709:transfer=bt709:matrix=bt709:tonemap=hable:desat=0.5
```

I ran into this because my Roku TV would report an error (something about "couldn't retrieve the data for the selected item from the server") when trying to play some videos via Jellyfin. The culprit turned out to be that [Roku TVs don't support HDR in Jellyfin](https://jellyfin.org/docs/general/clients/codec-support/#hdr-support), and I needed to convert the HDR video to SDR.

Unfortunately, **the default tonemapping resulted in crazy saturated colors**, so I needed to decrease the saturation somehow. Fortunately, someone had already pointed out this and many other options in [this GitHub issue](https://github.com/HandBrake/HandBrake/issues/7198).

