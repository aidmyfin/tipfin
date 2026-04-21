# TIPFIN — Modern Lending Web App

## Overview
A mobile-first, app-style website for TIPFIN (PTY) LTD built as standalone HTML/CSS/JS pages — fully deployable to GitHub Pages with no server required. Integrates with Baserow for user accounts, login lookups, and loan applications.

- **Company:** TIPFIN (PTY) LTD
- **NCR Reg:** NCRCP22024
- **Legal Reg:** 2024/669652/07
- **Email:** info.tipfin@aol.com

## Pages (all in `artifacts/tipfin/`)
- `index.html` — Animated home page (hero, phone mockup, products, testimonials)
- `public/about.html` — About, mission, compliance
- `public/loans.html` — Loan products + 3% interest calculator
- `public/contact.html` — Contact form & details
- `public/faq.html` — FAQ accordion
- `public/register.html` — Account creation (creates Baserow row)
- `public/login.html` — Login by Email + ID number
- `public/apply.html` — Loan application (PATCHes existing row)
- `public/dashboard.html` — KPIs, 30-min approval timer, timeline
- `public/profile.html` — Edit profile
- `public/thank-you.html` — Submission confirmation

## Shared Files (`artifacts/tipfin/public/`)
- `style.css` — Brand red theme, mobile-first, animations, mobile bottom tabs
- `app.js` — Baserow API helpers, session management, reveal-on-scroll
- `_partials.js` — Header, footer, mobile bottom navigation
- `logo.png` — TipFin brand logo

## Baserow Integration
- API base: `https://api.baserow.io/api/database/rows/table/936442/`
- Token: `LG6hnTBxgBG78FueElsSwpHRd4Wep1oL`
- Field names: `name`, `lastname`, `Email`, `Phonenumber`, `idNo`, `loanAmount`, `loanType`, `loanTearm`, `loanPurpose`, `employ`, `income`, `reference`

## GitHub Pages Deployment
Upload everything in `artifacts/tipfin/public/` plus `artifacts/tipfin/index.html` to a GitHub repo and enable Pages. All pages are pure static HTML — no build step required.
