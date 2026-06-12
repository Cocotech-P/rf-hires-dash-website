---
title: "MW Broadcast Coverage Planning — Medium Wave Propagation Software"
description: "Plan AM and medium wave broadcast coverage with ITU-R P.368-9 ground wave propagation. Accurate MW coverage maps accounting for ground conductivity, terrain, and bilateral reciprocity."
draft: false
---

## MW Broadcast Coverage Planning

### ITU-R P.368-9 Ground Wave Propagation — In a Browser, For Free to Try

Planning medium wave broadcast coverage is fundamentally different from VHF or UHF. Get it wrong and your coverage map looks plausible but bears no relation to what listeners actually receive.

RF HiRes Dash is built from the ground up for MW — using the same ITU-R P.368-9 standard that regulators and broadcast engineers have relied on for decades.

[**Try Free — plan your first MW coverage map in minutes →**](https://app.rftransmission.net/coverage)

---

## Why MW Propagation Is Different

At medium wave frequencies (520 kHz–1710 kHz), the dominant propagation mechanism is **ground wave** — the signal travels along the Earth's surface, not through the air. This makes MW coverage uniquely sensitive to factors that VHF/UHF tools simply ignore:

**Ground conductivity matters enormously.**
A transmitter over seawater (conductivity ~5000 mS/m) achieves dramatically greater range than the same transmitter over dry, rocky terrain (conductivity ~1 mS/m). A tool that ignores conductivity can be off by 20–30 dB at useful distances — the difference between solid coverage and no signal at all.

**Frequency within the MW band matters.**
Ground wave attenuation increases with frequency. A 540 kHz station covers significantly more ground than a 1600 kHz station at the same power. Your planning tool must handle this correctly across the full AM band.

**Terrain still plays a role.**
While ground wave dominates, terrain obstacles still introduce diffraction loss — particularly at the upper end of the MW band and for paths over significant ridgelines. Ignoring terrain entirely overestimates coverage in hilly areas.

**Bilateral reciprocity.**
The ground wave path loss between two points is the same in both directions. ITU-R P.368-9 accounts for this correctly; simpler models often don't.

---

## What Most RF Tools Get Wrong

Generic RF planning tools — even expensive ones — are designed for VHF and UHF. When applied to MW they typically:

- Use simplified free-space or Hata path-loss models that assume line-of-sight propagation
- Ignore ground conductivity entirely, or apply a single fixed value
- Fail to model the transition between ground wave and sky wave propagation
- Produce circular coverage maps that look neat but are physically meaningless

The result is a coverage prediction that looks like a planning tool output but isn't grounded in MW propagation physics.

---

## How RF HiRes Dash Handles MW

RF HiRes Dash implements **ITU-R P.368-9** — the international standard for ground wave propagation from 10 kHz to 30 MHz — as its core MW propagation engine.

**Ground conductivity selection**
Choose from standard ITU ground conductivity zones — seawater, wet soil, average ground, dry/rocky terrain — or set a custom value. The propagation model applies the correct conductivity-dependent attenuation across the full coverage area.

**Full MW band support**
Plan coverage from 300 kHz through to 30 MHz. The model correctly handles the frequency-dependent attenuation characteristics across the entire LF/MF spectrum.

**Terrain interaction**
SRTM elevation data is integrated to apply terrain diffraction loss where significant obstacles exist — giving a more realistic picture than flat-Earth ground wave models alone.

**Bilateral reciprocity**
Path loss is computed correctly in both directions, consistent with ITU-R P.368-9.

**Interactive coverage maps**
Signal strength is visualised as colour-coded contours over real topography — zoomable, pannable, and exportable.

{{< figure src="/images/screenshots/Coverage MW 100 km.jpg" alt="MW broadcast coverage map showing ground wave signal strength" caption="MW coverage map — 100 km radius, ITU-R P.368-9 ground wave model" >}}

{{< figure src="/images/screenshots/Coverage MW Detail.jpg" alt="Detailed MW coverage map with signal strength contours" caption="Detailed MW coverage — signal strength contours over terrain" >}}

---

## Terrain Profile Analysis

For point-to-point MW links — remote transmitter feeds, studio-to-transmitter links, or monitoring receiver placement — the terrain profile tool shows the full path geometry with Fresnel zone analysis.

{{< figure src="/images/screenshots/Point to Point Profile 1.jpg" alt="Terrain profile for MW point-to-point link analysis" caption="Terrain profile — elevation, Fresnel zones, and obstruction analysis" >}}

---

## Export for Regulatory Filing and Reporting

Coverage maps and analysis can be exported in formats suitable for regulatory submissions and internal reporting:

- **KMZ** — overlay your coverage map directly in Google Earth or GIS software
- **DOCX** — full professional report with coverage map, terrain profiles, and calculation parameters
- **CSV** — raw field strength data for further analysis

{{< figure src="/images/screenshots/Google Earth Overlay.jpg" alt="MW coverage map overlaid in Google Earth via KMZ export" caption="KMZ export — MW coverage overlay in Google Earth" >}}

---

## Who It's For

RF HiRes Dash MW coverage planning is used by:

- **AM broadcast engineers** — planning new stations, evaluating site options, or producing coverage maps for licence applications
- **National broadcasters** — mapping coverage for existing networks and identifying weak-signal areas
- **RF consultants** — producing professional coverage analysis for clients without the cost of enterprise software
- **Regulators and frequency coordinators** — verifying coverage claims and interference assessments

---

## Pricing

RF HiRes Dash is free to use — no credit card required, just your email address. A Pro tier is available for high-volume users and organisations requiring additional features.

[**Start Planning MW Coverage Free →**](https://app.rftransmission.net/coverage)

---

## Questions?

[Contact us](/contact) or check the [documentation](/docs) for technical details on the propagation models used.
