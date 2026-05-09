## GitHub Copilot Chat

- Extension: 0.41.2 (prod)
- VS Code: 1.113.0 (cfbea10c5ffb233ea9177d34726e6056e89913dc)
- OS: win32 10.0.26200 x64
- GitHub Account: dock9dupatrick00

## Network

User Settings:
```json
  "http.systemCertificatesNode": true,
  "github.copilot.advanced.debug.useElectronFetcher": true,
  "github.copilot.advanced.debug.useNodeFetcher": false,
  "github.copilot.advanced.debug.useNodeFetchFetcher": true
```

Connecting to https://api.github.com:
- DNS ipv4 Lookup: 140.82.121.6 (2 ms)
- DNS ipv6 Lookup: Error (10 ms): getaddrinfo ENOTFOUND api.github.com
- Proxy URL: None (1 ms)
- Electron fetch (configured): 
timed out after 10 seconds
- Node.js https: HTTP 200 (166 ms)
- Node.js fetch: Error (5116 ms): TypeError: fetch failed
	at node:internal/deps/undici/undici:14902:13
	at process.processTicksAndRejections (node:internal/process/task_queues:103:5)
	at async t._fetch (c:\Users\triggertrash\.vscode\extensions\github.copilot-chat-0.41.2\dist\extension.js:5139:5228)
	at async t.fetch (c:\Users\triggertrash\.vscode\extensions\github.copilot-chat-0.41.2\dist\extension.js:5139:4540)
	at async u (c:\Users\triggertrash\.vscode\extensions\github.copilot-chat-0.41.2\dist\extension.js:5171:186)
	at async cg._executeContributedCommand (file:///c:/Users/triggertrash/AppData/Local/Programs/Microsoft%20VS%20Code/cfbea10c5f/resources/app/out/vs/workbench/api/node/extensionHostProcess.js:501:48675)
  SocketError: HTTP/2: "GOAWAY" frame received with code 0
  	at ClientHttp2Session.onHttp2SessionGoAway (c:\Users\triggertrash\AppData\Local\Programs\Microsoft VS Code\cfbea10c5f\resources\app\node_modules\undici\lib\dispatcher\client-h2.js:322:31)
  	at ClientHttp2Session.emit (node:events:519:28)
  	at ClientHttp2Session.emit (node:domain:489:12)
  	at Http2Session.onGoawayData (node:internal/http2/core:739:11)

Connecting to https://api.githubcopilot.com/_ping:
- DNS ipv4 Lookup: 140.82.113.22 (2 ms)
- DNS ipv6 Lookup: Error (8 ms): getaddrinfo ENOTFOUND api.githubcopilot.com
- Proxy URL: None (2 ms)
- Electron fetch (configured): HTTP 200 (391 ms)
- Node.js https: HTTP 200 (431 ms)
- Node.js fetch: HTTP 200 (426 ms)

Connecting to https://copilot-proxy.githubusercontent.com/_ping:
- DNS ipv4 Lookup: 20.250.119.64 (39 ms)
- DNS ipv6 Lookup: Error (11 ms): getaddrinfo ENOTFOUND copilot-proxy.githubusercontent.com
- Proxy URL: None (92 ms)
- Electron fetch (configured): HTTP 200 (426 ms)
- Node.js https: HTTP 200 (129 ms)
- Node.js fetch: HTTP 200 (178 ms)

Connecting to https://mobile.events.data.microsoft.com: HTTP 404 (345 ms)
Connecting to https://dc.services.visualstudio.com: HTTP 404 (310 ms)
Connecting to https://copilot-telemetry.githubusercontent.com/_ping: timed out after 10 seconds
Connecting to https://copilot-telemetry.githubusercontent.com/_ping: HTTP 200 (459 ms)
Connecting to https://default.exp-tas.com: HTTP 400 (205 ms)

Number of system certificates: 363

## Documentation

In corporate networks: [Troubleshooting firewall settings for GitHub Copilot](https://docs.github.com/en/copilot/troubleshooting-github-copilot/troubleshooting-firewall-settings-for-github-copilot).