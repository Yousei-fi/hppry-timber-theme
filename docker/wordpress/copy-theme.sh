#!/bin/sh
set -eu

THEME_SOURCE="/usr/src/wordpress/wp-content/themes/hpp-timber"
THEME_TARGET="/var/www/html/wp-content/themes/hpp-timber"

echo "[copy-theme] Syncing theme assets..." >&2

if [ -d "${THEME_SOURCE}" ]; then
  mkdir -p "${THEME_TARGET}"
  rsync -a --delete "${THEME_SOURCE}/" "${THEME_TARGET}/"
  chown -R www-data:www-data "${THEME_TARGET}"
  echo "[copy-theme] Theme synchronized to ${THEME_TARGET}" >&2
else
  echo "[copy-theme] Source directory ${THEME_SOURCE} not found; skipping copy." >&2
fi

