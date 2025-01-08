provider "kubernetes" {
  config_path    = "C:\\Users\\mdevpc-194\\user\\.kube\\config"  # Correct Windows path to kubeconfig
  config_context = "docker-desktop"  # Ensure the context is correct for Docker Desktop Kubernetes
}

# Create an Nginx pod
resource "kubernetes_pod" "nginx" {
  metadata {
    name = "terraform-example"
    labels = {
      app = "nginx"
    }
  }

  spec {
    container {
      image = "nginx:1.23.2"
      name  = "example"
    }
  }
}

# Create a service to expose the Nginx pod
resource "kubernetes_service" "nginx" {
  metadata {
    name = "terraform-example"
  }
  
  spec {
    selector = {
      app = kubernetes_pod.nginx.metadata[0].labels.app  # Use the correct index for the labels
    }
    port {
      port = 80
    }

    type = "NodePort"
  }

  depends_on = [
    kubernetes_pod.nginx
  ]
}
