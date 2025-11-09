# HPPRy Timber Theme

Custom WordPress theme for Humaania Päihdepolitiikkaa Ry built with Timber (Twig), Tailwind CSS, and Vite.

## Local Development

1. Install PHP dependencies:

```bash
composer install
```

2. Install Node dependencies:

```bash
npm install
```

3. Run the development server with hot reload:

```bash
npm run dev
```

4. Build production assets:

```bash
npm run build
```

Copy the theme into `wp-content/themes/hpp-timber` in your WordPress installation and activate it from the WordPress admin.

## Deployment (Coolify)

Configure your Coolify application to execute:

```bash
composer install
npm install
npm run build
```

Ensure environment variables `WP_HOME`, `WP_SITEURL`, and database credentials are set. Coolify will fetch the theme from GitHub and run the build steps automatically.

