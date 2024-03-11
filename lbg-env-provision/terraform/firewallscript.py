import json

def firewall_rules():
  # Define firewall rules (modify as needed)
  rules = [
    {
      "name": "allow-egress-from-nodes-gke-master",
      "network": "assignment",
      "source_ranges": '["10.0.0.0/18"]',
      "destination_ranges": '["172.16.0.0/28"]',
      "allow_protocols": '["tcp", "udp"]',
      "ports": '["443"]'
    }
  ]
  
  # Return a dictionary with the JSON string as the value
  return {"firewall_rules": json.dumps(rules)}


# Print the firewall rules as JSON output for Terraform
print(firewall_rules())
