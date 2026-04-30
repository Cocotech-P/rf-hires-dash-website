---
title: "Features"
description: "What RF HiRes Dash can do"
draft: false
---

# Features

## Interactive Map Interface

**Click to place TX and RX sites.** Pan and zoom to any location. Your map position auto-saves.

- Leaflet/Mapbox-based interactive map
- Click to place transmitter and receiver sites
- Auto-generate RX names (RX-1, RX-2, etc.)
- Marker popups show coordinates and signal strength
- Map position and zoom level auto-save

## Propagation Modeling (ITU-R P.368-9)

**Ground wave predictions for 0.15–30 MHz.** International standard, trusted by broadcasters and engineers worldwide.

- LF/MF/HF frequency range (0.15–30 MHz)
- Ground conductivity adjustment (land, sea, urban, rural)
- Antenna height configuration (TX and RX)
- Terrain diffraction via SRTM elevation
- System loss accounting (cables, feedline)

## Coverage Heatmap

**Visualize signal strength across your region.** Color-coded overlay shows coverage at a glance.

- Grid-based computation (0.5 km cells, 25 km radius)
- Adjustable threshold levels (70/60/50/40 dBµV/m)
- Terrain obstacles and diffraction losses included
- Real-time updates as you change parameters
- Export heatmap to Google Earth (KMZ)

## Elevation Data Integration

**Accurate terrain modeling for realistic predictions.** SRTM preferred; OpenTopography API fallback.

- SRTM (Shuttle Radar Topography) — 90 m resolution, most of world
- OpenTopography API fallback if SRTM unavailable
- Local tile caching for fast re-computation
- Diffraction losses from terrain obstacles
- Fresnel zone clearance analysis

## Multi-Format Export

**Share results in the format that works for you.**

| Format | Contents | Use Case |
|--------|----------|----------|
| **PDF** | Map + heatmap, results summary | Email, print, quick reference |
| **DOCX** | Full report with RF params, analysis, recommendations | Client deliverable, archival |
| **KMZ** | TX/RX markers, heatmap overlay | GIS software, Google Earth, ArcGIS |

## Session Auto-Save

**Your work is always saved.** Never lose your progress.

- Auto-save when TX placed
- Auto-save when RX placed
- Auto-save after computation
- Save on logout
- Restore on next login (all browsers, all devices)

Saved state includes:
- Map position (center, zoom)
- TX location and name
- All RX sites
- RF parameters (frequency, ERP, heights, etc.)
- Last computed results

## Passwordless Authentication

**No passwords to remember or reset.** Magic link + OTP authentication.

- Sign up with email
- Click magic link in email
- Enter 6-digit OTP code
- Logged in instantly
- No password complexity rules
- No account recovery hassles

## User Tiers

**Free tier for individuals; Pro tier for teams.**

| Feature | Free | Pro |
|---------|------|-----|
| RX sites per compute | 10 | Unlimited |
| Storage | 100 MB | 1 GB |
| Export formats | PDF, DOCX, KMZ | PDF, DOCX, KMZ |
| Support | Community | Priority email |
| Batch operations | No | Yes (coming) |

## API (Coming Soon)

Integrate RF HiRes Dash into your workflow.

- REST API for propagation calculations
- Batch processing for large studies
- Custom parameter sweeps
- Automated report generation

---

## What Makes RF HiRes Dash Different?

✅ **ITU-R P.368-9** — International standard, not approximation
✅ **Terrain-aware** — SRTM elevation data, not flat Earth
✅ **Fast** — Results in seconds, not hours
✅ **Easy** — No software installation, runs in browser
✅ **Professional** — Export reports for clients and stakeholders
✅ **Open** — Standard file formats (PDF, DOCX, KMZ)
✅ **Accessible** — Free tier for learning and small projects

---

[**Start Planning →**](https://rf-hires-dash-prod.onrender.com)
