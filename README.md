# n8n-render-blueprint

Forked from [the original](https://github.com/ready4mars/n8n-render) because it has been abandoned with deprecated settings which have been removed from Render, and has a missing `WEBHOOK_URL` environment variable which should really be set or else n8n thinks it's being run on localhost.

This repository is configured to deploy a basic web service + docker container. To use it, use this repo as a template and then make the following modifications to `render.yaml`

1. Change the value of `WEBHOOK_URL` to wherever you're planning to host n8n.
2. Optional: Change the database plan to [an available option here](https://render.com/docs/blueprint-spec#essential-fields-1). Default: Starter - 0.1vcpu, 256MB RAM.
3. Optional: Change the web service plan to [an available option here](https://render.com/docs/blueprint-spec#essential-fields-1). Default: Standard - 1vcpu, 2GB RAM.

---

**Notes**
- Don't change the storage volume location, this is hardcoded in Render.
