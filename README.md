# ctf-rs
ctf-rs is ctf platform inspired by CTFd, but w/o any price gated features, and built from the ground up as cloud native.

## Components

- AuthZ as a Service: OSO, AuthZed, Cerbos, Permit.io
- Database: (Must be embeddable)
  - Main: Kuzu (Graph DBMS)
  - KV/Cache: Valkey/Redis/RocksDB (Might be overkill; thinking of Real Time distributed system)
- GraphQL API: Juniper
- Web UI: Leptos
- Desktop Apps: Tauri

## Install

### macOS

- Homebrew:
  - `brew tap libctf/ctf-rs`
  - `brew install ctf-rs`
