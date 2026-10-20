# Life OS — Elegant Edition

Responsive Thai-first personal life planner prototype.

## Run locally
Open `index.html` in a modern browser. For PWA installation, serve the folder over HTTPS or localhost.

## Features in this prototype
- Responsive desktop sidebar and mobile bottom navigation
- Dashboard, Tasks/Planner, Goals, Study/Vocabulary, Habits, Finance/Donation, Journal/Review, Analytics
- Add/delete tasks, goals, habits, vocabulary, transactions, journal entries and reviews
- Mark tasks complete, track habits and vocabulary status
- Basic derived stats, dark mode, JSON backup export
- Browser-local persistence via localStorage

## Important limitations
This is a front-end prototype, not a deployed production service. Data stays in the current browser and does not sync across devices. No login, remote database, push notifications, automatic cloud backups, recurring schedules, or real calendar integration is included. Sample data is illustrative. For multi-device sync and production use, connect a backend such as Supabase/PostgreSQL, add authentication and row-level security, server-side scheduled jobs, tests, and data migration/export controls.
