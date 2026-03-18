#!/bin/bash
# Fire a test request to the MOJ Search API
API_URL="http://moj-search-api-milvus.apps.cluster-6ldk6.6ldk6.sandbox2187.opentlc.com/search"

echo "Sending search request..."
curl -s -X POST "$API_URL" \
  -H "Content-Type: application/json" \
  -d '{"message": "I need a DatePicker"}' | python3 -m json.tool

echo ""
echo "Check traces at: https://tempo-tempo-moj-jaegerui-moj-observability.apps.cluster-6ldk6.6ldk6.sandbox2187.opentlc.com"
echo "Check metrics at: https://grafana-moj-observability.apps.cluster-6ldk6.6ldk6.sandbox2187.opentlc.com"
