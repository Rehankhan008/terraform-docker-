terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.35.1"
    }
  }
}
provider "kubernetes" {
  config_path = "~/.kube/config"
}
#provider "kubernetes" {
#  host                   = "https://localhost:6443"
#  cluster_ca_certificate = base64decode("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJUUpMSUZOYjIxb0l3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBeE1EZ3hNakEzTWpaYUZ3MHpOVEF4TURZeE1qRXlNalphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURpdzdZRVJrajI4MDJjSndhWWxhUFVTbFdoK2xGajE5cEJkaXdNY0Z5RUV6WWp2SW5IdnRkYlBtdGgKMytNQXRIYVB4Z0NnYTh4dkhYRW03K1RuTUlWMVpjTWprWm9PMENzeXJrUUprd0FuMTE5MWJubkwwTmlWSGNnbwpYUlFmSmVKS0UzbC9Oa2ZpZ2hEZ2xBcUNaTU1Kc2Nod3RZUHNIeWxyK1R5ejE3U28rVjNFSHozVi9mV1RmT2JBCmRrd1RRUjQ3UWJZc1dpdmlKSWw4VUdQelp5ZWFLL2tqeGc3WnVPOTQ0Y20yQ2tISGxVdW1FWmFJUjhaOG16S08KZjRFbU42aEVteUNlOEJYNGRmRi9VU01aTW9aTnF0MWljVkwwV0ZURzVhSXFUaGhOZ2Z4cnY4UmtCdGVueTZvNApVZVdMSUNSOGF3bTZFVUY2akpMUUQ1L2FwVk56QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSb0trMUxjVnZ0RXJQNG5ERXVNbGNjTXJPM1dqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQmlpMjZDOWN6aQo0aEN4Lzh3YnlWbFphWUlMT1Y0WThRdFhXZmRaRjFTb2xVOWFjYnAzYkdCSThqMDRqY1FqMmxrVFE5Q1pUK3lrCnhWMklMNEJLcTluRmJtSWlKUHY2QmlpWXkzR0JVSWY4WEF1b1VUeG1MdDdTTmhMOWE4Tm5tWi9SQlBhdURENFgKYXR0Z1NtWS9PRlVEZ0lOTm41ejI3YzNhQ1BWOTZZellEMWsrblBWeUZENWM2bG5TZktidFA4TTNZSFR2blhMRwo0TkZFWXJpaXFxbFFqRExieUcyeXNrVG5ZWWRTajV5dUNSenhtTVFNM29SMWw5Z3lBTDdDdXFjZHB5QWY5eFE5CnBPVnVqakV1QmlMSWxqamd2MXdGeHZHcG9tTnY5STl4SFNibFExVGZoVHh5M2lxa1BQdWlMWnhlWXVlaUtOTEoKTHRmYlEzSjVwdFZICi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K")
 # token                  = "eyJhbGciOiJSUzI1NiIsImtpZCI6InlUNnJnaEpsTzdoMDUzVU5JcjNkYlhicEFKbF95cG1Yc2V5bWJDZV9yTUkifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzM2MzQ1MjQzLCJpYXQiOjE3MzYzNDE2NDMsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwianRpIjoiMTZkZDI5ZmYtNGQ5My00MzUzLWE2ZGMtOTNjZWIyZTQwZGIwIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJkZWZhdWx0Iiwic2VydmljZWFjY291bnQiOnsibmFtZSI6Im15LXNlcnZpY2UtYWNjb3VudCIsInVpZCI6Ijc1YTY1YjllLTM2NmItNDExNi1hMGExLWExYzk3YTg0MjA2ZSJ9fSwibmJmIjoxNzM2MzQxNjQzLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6ZGVmYXVsdDpteS1zZXJ2aWNlLWFjY291bnQifQ.ewY2nbdSWnublSJ4y0igksOF_txyL8qovZFNayoaER5BPKs85gPNpLxD7J-fqKc0zTzSw9CC3jboSHqZgecmzR_Sn8BQ2JF5Ykqz29u9aFN7UWGKhjJRlp3bJKaCcWr9aTPnzMyPDM6_JTDhkqgNlx6ek4qlD21_mo-nHH6Mv54dJK4e63YR17Z9_Z6pQJ4qjh6VTWyGDFv2wz-e8LYwI2DEceNQl3iwrAr8ZqSGiQLaq1WjHxNpbvaEvWuXXeNgPTJ149tr9-OkCyFSOVO3BQ67nGebGigGnKvijbDaI3nsV2g-Zse1e3VDGEl8abmnxPCq7Fcuehr9-d66amjlYg"
#}





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
