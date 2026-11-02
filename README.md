# PHP 8.3 + SQL Server extensions image

A small custom base image built on `serversideup/php:8.3-fpm-nginx` with the
`sqlsrv` and `pdo_sqlsrv` PHP extensions preinstalled.

## Publish to GitHub Container Registry

1. Create a separate GitHub repository named `php83-sqlsrv-image` and put the
   contents of this directory at the repository root. This repository contains
   only the reusable PHP base image; it is independent of any Laravel project.
2. Ensure GitHub Actions is enabled. The included workflow publishes the image
   on pushes to `main` and on version tags.
3. In the repository's **Packages** settings, change the package visibility to
   **Public** if the production server should pull it without authentication.

The published image will be available as:

```text
ghcr.io/<github-owner>/php83-sqlsrv-image:8.3
```

## Use from another project

Use the published image in any Dockerfile that needs PHP 8.3 with SQL Server
support:

```text
FROM ghcr.io/<github-owner>/php83-sqlsrv-image:8.3
```

This base image contains the PHP extensions only. Each consuming project can
install its own dependencies and add its own application files and configuration.
