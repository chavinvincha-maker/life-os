-- Life OS – Gentle Bloom Cloud Starter
-- Run in Supabase SQL Editor. One JSON workspace per authenticated user.
create table if not exists public.lifeos_workspaces (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.lifeos_workspaces enable row level security;
drop policy if exists "Users can read own Life OS workspace" on public.lifeos_workspaces;
create policy "Users can read own Life OS workspace" on public.lifeos_workspaces for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can insert own Life OS workspace" on public.lifeos_workspaces;
create policy "Users can insert own Life OS workspace" on public.lifeos_workspaces for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users can update own Life OS workspace" on public.lifeos_workspaces;
create policy "Users can update own Life OS workspace" on public.lifeos_workspaces for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
grant select, insert, update on public.lifeos_workspaces to authenticated;
