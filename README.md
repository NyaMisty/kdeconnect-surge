# KDE Connect with Surge (or other VPN)

KDE Connect uses UDP broadcast to discover other client, however many VPN (especially L3 VPN) does not have good support for UDP broadcast.

This patch forces KDE Connect to bind to `en0` (the wifi interface) and totally bypass the VPN.