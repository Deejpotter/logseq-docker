FROM ghcr.io/logseq/logseq-webapp:latest

# Install curl for healthcheck
RUN apk add --no-cache curl

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:80 || exit 1
