package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/gcp"
    "github.com/gruntwork-io/terratest/modules/terraform"
)

func TestVPCSubnetModule(t *testing.T) {
    terraformOptions := &terraform.Options{
        // The path to where your Terraform code is located
        TerraformDir: "../vpc",
        // Variables to pass to our Terraform code using -var options
        Vars: map[string]interface{}{
            "subnetwork_name": "private",
            "ip_cidr_range": "10.0.0.0/18",
            "region": "us-central1",
            "network_id": "https://www.googleapis.com/compute/v1/projects/lloyds-assignment/global/networks/assignment",
            "private_ip_google_access": true,
            "k8s_pod_range": "10.48.0.0/14",
            "k8s_service_range": "10.52.0.0/20",
        },
    }

    // This will run `terraform init` and `terraform apply` and fail the test if there are any errors
    terraform.InitAndApply(t, terraformOptions)

    // At the end of the test, run `terraform destroy` to clean up any resources that were created
    defer terraform.Destroy(t, terraformOptions)

    // Get the value of output variable
    subnetworkName := terraform.Output(t, terraformOptions, "subnetwork_name")

    // Verify the subnetwork is created successfully
    assert.True(t, gcp.SubnetworkExists(t, subnetworkName, "lloyds-assignment", "us-central1"))
}
