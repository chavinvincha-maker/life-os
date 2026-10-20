# Life OS – Gentle Bloom v3

A Thai-first, responsive pastel/kawaii personal life organizer.

## Start
Open `index.html` in a modern browser. No build step is required. Data is stored in the current browser's localStorage.

## Features
- Dashboard with monthly master calendar connected to tasks, appointments, bills, and document expiry dates
- Tasks with status, priority, category, date/time, projects, and goals
- Study vocabulary bank, habit tracker, and journal
- Finance: bank/cash account balances, income/expense/donation records, debt tracking, bills, savings goals
- Health: water, sleep, exercise, mood, energy, weight/symptom logs, medication list, and appointments
- Personal document expiry tracking and lead-time reminders shown when the app is open
- Weekly/monthly review notes and history
- JSON backup and restore; imports existing `lifeos-elegant-v1` local data on first launch if v3 data is absent

## Limitations to know
- **Cloud sync is not active yet.** Cross-device sync needs a real backend, authentication, per-user database security rules, and integration/testing. The Settings page gives setup notes; saving Firebase config alone does not enable sync.
- Expiry reminders are visible inside the app when opened, not push notifications while it is closed.
- No automatic bank connection, medication alarm, or automatic recurring bill generation.
- Data remains in this browser unless exported. Export a backup before clearing browser data or moving devices.
- Avoid entering bank passwords/PINs, full identity numbers, or unnecessary sensitive medical information.
