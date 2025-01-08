terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.35.1"
    }
  }
}
provider "kubernetes" {
  config_path = "C:\\Users\\user\\.kube\\config"  # Path to your kubeconfig file
}




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

resource "kubernetes_service" "nginx" {
  metadata {
    name = "terraform-example"
  }
  spec {
    selector = {
      app = kubernetes_pod.nginx.metadata.0.labels.app
    }
    port {
      port        = 80
    }

    type = "NodePort"
  }

  depends_on = [
    kubernetes_pod.nginx
  ]
}
