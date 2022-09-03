data "google_dns_managed_zone" "korosuke613_dev" {
  name = "korosuke613-dev"
}

resource "google_dns_record_set" "korosuke613_dev_a" {
  name = data.google_dns_managed_zone.korosuke613_dev.dns_name
  type = "A"
  ttl  = 86400

  managed_zone = data.google_dns_managed_zone.korosuke613_dev.name

  # https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
  rrdatas = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153"
  ]
}

resource "google_dns_record_set" "korosuke613_dev_aaaa" {
  name = data.google_dns_managed_zone.korosuke613_dev.dns_name
  type = "AAAA"
  ttl  = 86400

  managed_zone = data.google_dns_managed_zone.korosuke613_dev.name

  # https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
  rrdatas = [
    "2606:50c0:8000::153",
    "2606:50c0:8001::153",
    "2606:50c0:8002::153",
    "2606:50c0:8003::153"
  ]
}

resource "google_dns_record_set" "www_korosuke613_dev_cname" {
  name = "www.${data.google_dns_managed_zone.korosuke613_dev.dns_name}"
  type = "CNAME"
  ttl  = 86400

  managed_zone = data.google_dns_managed_zone.korosuke613_dev.name

  rrdatas = [
    "korosuke613.github.io."
  ]
}

resource "google_dns_record_set" "_github_pages_challenge_korosuke613_korosuke613_dev_txt" {
  name = "_github-pages-challenge-korosuke613.${data.google_dns_managed_zone.korosuke613_dev.dns_name}"
  type = "TXT"
  ttl  = 86400

  managed_zone = data.google_dns_managed_zone.korosuke613_dev.name

  rrdatas = [
    "fcb70d03c1a01a4d5436ef3403a617"
  ]
}
