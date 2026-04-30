---
title: "About"
description: "About RF HiRes Dash"
draft: false
---

# About RF HiRes Dash

## Mission

RF HiRes Dash makes professional-grade RF propagation planning accessible to every RF engineer. We believe radio coverage analysis shouldn't require expensive software licenses or complex installations.

## How It Started

RF engineers traditionally used desktop tools (SPLAT!, RadioMobile, ITURVPROP) that required local installation, complicated setup, and expensive licenses. In 2024, we set out to build a modern, web-based alternative using:

- **ITU-R P.368-9** — the international standard for ground wave propagation
- **SRTM elevation data** — 90 m resolution terrain modeling
- **Open-source tools** — Python, Dash, PostgreSQL, Supabase

The result: **RF HiRes Dash** — a fast, accurate, and accessible tool for RF planning.

## Who Uses It

- **RF engineers** — site planning, coverage analysis
- **Broadcasters** — station coverage verification
- **Amateur radio operators** — repeater and link planning
- **Maritime/Aviation** — communication link budgets
- **Emergency services** — frequency coordination
- **Students** — learning RF propagation concepts

## Technology

Built with modern, open-source tools:

| Component | Technology | Why |
|-----------|-----------|-----|
| Frontend | Dash (Python + React) | Rapid development, Python-native |
| Mapping | Leaflet / Mapbox | Lightweight, customizable |
| Backend | Python + Flask | Fast propagation calculations |
| Database | PostgreSQL (Supabase) | Reliable, managed, scalable |
| Auth | Supabase Auth | Passwordless, secure |
| Hosting | Render | Simple, fast, auto-deploy |
| Propagation | Custom P.368-9 implementation | ITU-R standard, terrain-aware |
| Elevation | SRTM + OpenTopography | Free, global coverage |

## Open & Extensible

RF HiRes Dash is built on open standards:

- **REST API** — integrate into your workflow
- **Standard export formats** — PDF, DOCX, KMZ (not proprietary)
- **Python source** — audit, fork, extend on GitHub
- **Open-source dependencies** — no hidden vendor lock-in

## The Team

RF HiRes Dash is developed by a small team of RF engineers and software developers passionate about making RF tools better.

### Contact

- **Email**: contact@rf-hires-dash.com
- **GitHub**: https://github.com/your-org/rf-hires-dash
- **Issues/Feedback**: [GitHub Issues](https://github.com/your-org/rf-hires-dash/issues)

---

## Acknowledgments

RF HiRes Dash builds on decades of RF engineering research:

- **ITU-R P.368-9** recommendation for ground wave propagation
- **SRTM** elevation data from NASA/USGS
- **OpenTopography** for elevation fallback data
- **Mapbox** for mapping tiles and API
- **Supabase** for managed PostgreSQL and authentication
- **Render** for reliable hosting

---

## Roadmap

### Current (v1.0)
- ✅ Point-to-point propagation analysis
- ✅ Coverage heatmap visualization
- ✅ Multi-format export (PDF, DOCX, KMZ)
- ✅ Auto-save and session persistence
- ✅ Passwordless authentication

### Coming Soon (v1.1)
- 🔜 REST API for integrations
- 🔜 Batch processing (multiple TX/RX sets)
- 🔜 Saved projects and templates
- 🔜 Collaborative planning (team workspaces)
- 🔜 Custom coverage contours

### Future (v2.0+)
- 🔮 Sky wave propagation (ionospheric reflection)
- 🔮 Multipath and fading analysis
- 🔮 Signal quality metrics (SNR, BER)
- 🔮 Regulatory compliance checking (FCC, ACMA, etc.)
- 🔮 Mobile app (iOS/Android)

---

## License & Terms

RF HiRes Dash is provided as-is for RF planning purposes. Results are predictions based on mathematical models; always verify with field measurements before deployment.

For full terms, see the [Terms of Service](/terms/).

---

[**Start Planning →**](https://rf-hires-dash-prod.onrender.com)
