provider "scaleway" {
  region = "${var.region}"
  organization = "${var.organization}"
  token        = "${var.scw_token}"
}

data "scaleway_image" "Mattterraform1" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "Mattterraform1" {
  name  = "Mattterraform1"
  image = "${data.scaleway_image.Mattterraform1.id}"
  type  = "START1-S"
}
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.Mattterraform1.id}"
}


resource "scaleway_volume" "Mattterraform1" {
  name       = "Mattterraformvolume1"
  size_in_gb = 50
  type       = "l_ssd"
}


