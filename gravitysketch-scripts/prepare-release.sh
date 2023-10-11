#!/usr/bin/env bash
set -e -u

readonly CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$CWD/.."
readonly GS_PKG_DIR="$CWD/gravitysketch-package"

if [ -d "$GS_PKG_DIR" ]; then
    echo "Removing old '$GS_PKG_DIR' directory"
    rm -rf "$GS_PKG_DIR"
fi
mkdir -p "$GS_PKG_DIR/charts"

echo -e "User-Agent: *\nDisallow: /" > robots.txt
helm dependency update "$CWD/../charts/prometheus/"
helm package "$CWD/../charts/prometheus/" --destination "$GS_PKG_DIR/charts"
helm repo index "$GS_PKG_DIR"
