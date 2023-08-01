# Gabbro-CE

This is the cloud environment (CE) for Gabbro, my home server. The intent is for this to offer all the infrastructural applications required to deploy applications on my "working" server (e.g. secret management, gitlab runners, etc).

Files that need to be added with secrets

- `gitlab-runner/config-1.toml`
- `gitlab-runner/config-2.toml`
- `.env`

The following subdomains need to be mapped in dns

- `portainer.domain`
- `infisical.domain`
