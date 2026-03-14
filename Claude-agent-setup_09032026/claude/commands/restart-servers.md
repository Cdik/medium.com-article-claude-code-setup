---
allowed-tools: Bash
description: Restarts all servers for local or host usage
---

1. Kill all servers on ports [3000] and [3001]
2. If $ARGUMENTS is empty or equals "local", restart all servers using script npm run dev:all, if $ARGUMENTS equals "host", use npm run dev:all:host

## Output

Simply confirms that all servers have restarted succesfully. No need to give any detail.
