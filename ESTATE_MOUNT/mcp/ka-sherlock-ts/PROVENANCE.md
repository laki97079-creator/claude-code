# ka-sherlock — build artifact provenance

`server.mjs` in this folder is a BUILD ARTIFACT, not canon source. It is not a second
copy of the skill and must never be edited here.

| field | value |
|---|---|
| canon source | `laki97079-creator/kosmomorphia-plugin` → `mcp-servers/ka-sherlock-ts/server.ts` |
| source commit | `8d2895b5ce9fa537337b21f792a1e0223813a5f0` |
| source SHA-256 | `1fe85a52a9e4d961c253d35c9c8394971a478a0863f59e57287c36724b0db8d6` |
| artifact SHA-256 | `a17566a5ac029ff970152864287c0975cff3371d1eebbae0fd534d6a5342c5ac` |
| built | 2026-09-19 EEST |
| bundler | `esbuild 0.24.0 --bundle --platform=node --format=esm --target=node20` |

## Why the artifact exists

A remote container is reclaimed between sessions. The previous wiring launched the
server with `npx -y tsx <path-in-the-old-container>`, so at the next session start the
path was gone and the server failed with CONNECTION_CLOSED. `@modelcontextprotocol/sdk`
and `zod` are bundled in, so this file runs on plain `node` with no `node_modules` and
no npm fetch — it starts before any clone has happened.

## Rebuild after changing canon source

```sh
cd /home/user/kosmomorphia-plugin/mcp-servers/ka-sherlock-ts
npm install && npx tsc --noEmit && npx tsx smoke-test.ts   # must be 12/12 PASS
npx -y esbuild@0.24.0 server.ts --bundle --platform=node --format=esm --target=node20 \
  --outfile="$CLAUDE_PROJECT_DIR/ESTATE_MOUNT/mcp/ka-sherlock-ts/server.mjs" \
  --banner:js='import{createRequire as __cr}from"module";const require=__cr(import.meta.url);'
```

Then update the two SHA-256 rows above. NEVER DELETE · NEVER OVERWRITE CANON.
