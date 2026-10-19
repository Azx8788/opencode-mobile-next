# Search phrases we target

Written 2026-10-15 for the 1.4.0 site and store copy. These are phrases people
plausibly type; we have no search-volume data, so none is claimed. Each one must
describe something the app really does.

| Phrase | Where it appears |
| --- | --- |
| Claude Code Android | Site `<title>`, H1 ("Claude Code on your Android phone"), og/twitter titles, README first line |
| run Claude Code on phone | Site meta description, hero text, FAQ "What runs where?", store full description |
| Claude Code no Termux / Claude Code without Termux | H1 promise line, og image text, short description, comparison table |
| OpenCode Android app | Site meta description, README, store title and short description, JSON-LD name and description |
| OpenCode mobile | Brand name everywhere, site `<title>`, canonical |
| AI coding agent Android no Termux | Site hero description, comparison table, store full description |
| coding agent on phone, no computer | Hero text, FAQ, short description |
| Android Ubuntu proot coding agent | FAQ "What runs where?" (own Ubuntu inside the app), store full description |
| approve AI agent from phone | Approve section, 1.4.0 widgets card (Allow once, Reject) |
| Android widget AI agent / steer AI agent from home screen | Site "New in 1.4.0" widgets card, README New in 1.4.0, store full description |
| hand off conversation between AI agents | Continue with... card on the site, README |
| AI Team planner worker checker agents | AI Team card on the site, README, store full description |
| Obtainium coding agent app | Obtainium button and link on the site and README |
| OpenCode remote control from phone | Site hero ("or follows your computer"), FAQ, comparison table |

## Notes

- Do not claim Codex, Gemini CLI, Qwen Code, Goose or Pi work on a phone; they
  are not yet checked on a physical phone, and every page that names them says so.
- Do not use "official", and keep the independent-project line in FAQ and footer.
- Search engines read `robots.txt` only at a host root. The site lives under
  `/opencode-mobile-next/`, so submit `sitemap.xml` in Search Console instead.
- GitHub itself ranks on the repository description and topics, which are
  repository settings and are listed in `docs/marketing/repo-settings.md`.
