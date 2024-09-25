# New Logz.io Application Deployment Marker

### Overview

This action creates a new deployment marker in Logz.io. Deployment markers are used to mark deployments in the Logz.io
UI, allowing you to correlate deployments with changes in your logs and metrics.
Learn more about deployment
markers [here](https://docs.logz.io/docs/user-guide/log-management/opensearch-dashboards/opensearch-deployment-markers/).
Logz API documentation can be found [here](https://api-docs.logz.io/docs/logz/create-markers).

## Inputs

| Key             | Required | Description                                                                                                           | Default |
|-----------------|----------|-----------------------------------------------------------------------------------------------------------------------|---------|
| `apiToken`      | true     | Your Logz.io [personal API token](https://app.logz.io/#/dashboard/settings/manage-tokens/api)                         | -       |
| `title`         | true     | Specify a marker title, for example, a service name. The title appears in the Deployments list your Exceptions tab.   | -       |
| `tag`           | false    | Specify DEPLOYMENT for the Deployment marker to appear in the Deployments list in your Exceptions tab. Default: OTHER | OTHER   |
| `description`   | false    | Add a description to provide additional detail. Default: <none>                                                       | -       |
| `metadata_json` | false    | Add metadata to provide additional detail. It must be a valid JSON object or array Default: <none>                    | -       |

## Example usage

### GitHub secrets

[Github secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets#about-encrypted-secrets) assumed to be set:
* `LOGZ_API_TOKEN` - Personal API Token

```yaml
WIP
```