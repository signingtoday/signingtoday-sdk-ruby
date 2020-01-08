=begin
#Signing Today API

#KlNpZ25pbmcgVG9kYXkqIGVuYWJsZXMgc2VhbWxlc3MgaW50ZWdyYXRpb24gb2YgZGlnaXRhbCBzaWduYXR1cmVzIGludG8gYW55CndlYnNpdGUgYnkgdGhlIHVzZSBvZiBlYXN5IHJlcXVlc3RzIHRvIG91ciBBUEkuIFRoaXMgaXMgdGhlIHNtYXJ0IHdheSBvZgphZGRpbmcgZGlnaXRhbCBzaWduYXR1cmUgc3VwcG9ydCB3aXRoIGEgZ3JlYXQgdXNlciBleHBlcmllbmNlLgoKCipTaWduaW5nIFRvZGF5IEFQSXMqIHVzZSBIVFRQIG1ldGhvZHMgYW5kIGFyZSBSRVNUZnVsIGJhc2VkLCBtb3Jlb3ZlciB0aGV5CmFyZSBwcm90ZWN0ZWQgYnkgYSAqc2VydmVyIHRvIHNlcnZlciBhdXRoZW50aWNhdGlvbiogc3RhbmRhcmQgYnkgdGhlIHVzZSBvZgp0b2tlbnMuCgoKKlNpZ25pbmcgVG9kYXkgQVBJcyogY2FuIGJlIHVzZWQgaW4gdGhlc2UgZW52aXJvbm1lbnRzOgoKCnwgRW52aXJvbm1lbnQgfCBEZXNjcmlwdGlvbiB8IEVuZHBvaW50IHwKfCAtLS0tLS0tLS0tLSB8IC0tLS0tLS0tLS0tIHwgLS0tLS0tLS0gfAp8IFNhbmRib3ggICAgIHwgVGVzdCBlbnZpcm9ubWVudCB8IGBodHRwczovL3NhbmRib3guc2lnbmluZ3RvZGF5LmNvbWAgfAp8IExpdmUgICAgICAgIHwgUHJvZHVjdGlvbiBlbnZpcm9ubWVudCB8IGBodHRwczovL2FwaS5zaWduaW5ndG9kYXkuY29tYCB8CgoKRm9yIGV2ZXJ5IHNpbmdsZSByZXF1ZXN0IHRvIFNpZ25pbmcgVG9kYXkgaGFzIHRvIGJlIGRlZmluZWQgdGhlIGZvbGxvd2luZwoqSFRUUCogaGVhZGVyOgotIGBBdXRob3JpemF0aW9uYCwgd2hpY2ggY29udGFpbnMgdGhlIGF1dGhlbnRpY2F0aW9uIHRva2VuLgoKSWYgdGhlIHJlcXVlc3QgaGFzIGEgYm9keSB0aGFuIGFub3RoZXIgKkhUVFAqIGhlYWRlciBpcyByZXF1ZXN0ZWQ6Ci0gYENvbnRlbnQtVHlwZWAsIHdpdGggYGFwcGxpY2F0aW9uL2pzb25gIHZhbHVlLgoKCkZvbGxvd3MgYW4gZXhhbXBsZSBvZiB1c2FnZSB0byBlbnVtZXJhdGUgYWxsIHRoZSB1c2VyIG9mICpteS1vcmcqCm9yZ2FuaXphdGlvbi4KCioqRXhhbXBsZSoqCgpgYGBqc29uCiQgY3VybCBodHRwczovL3NhbmRib3guc2lnbmluZ3RvZGF5LmNvbS9hcGkvdjEvbXktb3JnL3VzZXJzIFwKICAgIC1IICdBdXRob3JpemF0aW9uOiBUb2tlbiA8YWNjZXNzLXRva2VuPicKYGBgCgojIyBIVFRQIG1ldGhvZHMgdXNlZAoKQVBJcyB1c2UgdGhlIHJpZ2h0IEhUVFAgdmVyYiBpbiBldmVyeSBzaXR1YXRpb24uCgp8IE1ldGhvZCAgIHwgRGVzY3JpcHRpb24gICAgICAgICAgICAgICAgICAgIHwKfCAtLS0tLS0tLSB8IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSB8CnwgYEdFVGAgICAgfCBSZXF1ZXN0IGRhdGEgZnJvbSBhIHJlc291cmNlICAgfAp8IGBQT1NUYCAgIHwgU2VuZCBkYXRhIHRvIGNyZWF0ZSBhIHJlc291cmNlIHwKfCBgUFVUYCAgICB8IFVwZGF0ZSBhIHJlc291cmNlICAgICAgICAgICAgICB8CnwgYFBBVENIYCAgfCBQYXJ0aWFsbHkgdXBkYXRlIGEgcmVzb3VyY2UgICAgfAp8IGBERUxFVEVgIHwgRGVsZXRlIGEgcmVzb3Vyc2UgICAgICAgICAgICAgIHwKCgojIyBSZXNwb25zZSBkZWZpbml0aW9uCgpBbGwgdGhlIHJlc3BvbnNlIGFyZSBpbiBKU09OIGZvcm1hdC4KQXMgcmVzcG9uc2UgdG8gYSByZXF1ZXN0IG9mIGFsbCB1c2VycyBvZiBhbiBvcmdhbml6YXRpb24geW91IHdpbGwgaGF2ZSBhCnJlc3VsdCBsaWtlIHRoaXM6CgpgYGBqc29uCnsKICAgICJwYWdpbmF0aW9uIjogewogICAgICAiY291bnQiOiA3NSwKICAgICAgInByZXZpb3VzIjogImh0dHBzOi8vc2FuZGJveC5zaWduaW5ndG9kYXkuY29tL2FwaS92MS9teS1vcmcvdXNlcnM/cGFnZT0xIiwKICAgICAgIm5leHQiOiAiaHR0cHM6Ly9zYW5kYm94LnNpZ25pbmd0b2RheS5jb20vYXBpL3YxL215LW9yZy91c2Vycz9wYWdlPTMiLAogICAgICAicGFnZXMiOiA4LAogICAgICAicGFnZSI6IDIKICAgIH0sCiAgICAibWV0YSI6IHsKICAgICAgImNvZGUiOiAyMDAKICAgIH0sCiAgICAiZGF0YSI6IFsKICAgICAgewogICAgICAgICJpZCI6ICJqZG8iLAogICAgICAgICJzdGF0dXMiOiAiZW5hYmxlZCIsCiAgICAgICAgInR5cGUiOiAiQmFzaWMgdXNlciBhY2NvdW50IiwKICAgICAgICAiZW1haWwiOiBqb2huZG9lQGR1bW15ZW1haWwuY29tLAogICAgICAgICJmaXJzdF9uYW1lIjogIkpvaG4iLAogICAgICAgICJsYXN0X25hbWUiOiAiRG9lIiwKICAgICAgICAid2FsbGV0IjogW10sCiAgICAgICAgImNyZWF0ZWRfYnkiOiAic3lzdGVtIiwKICAgICAgICAib3duZXIiOiBmYWxzZSwKICAgICAgICAiYXV0b21hdGljIjogZmFsc2UsCiAgICAgICAgInJhbyI6IGZhbHNlCiAgICAgIH0sCiAgICAgIC4uLgogICAgXQogIH0KYGBgCgpUaGUgSlNPTiBvZiB0aGUgcmVzcG9uc2UgaXMgbWFkZSBvZiB0aHJlZSBwYXJ0czoKLSBQYWdpbmF0aW9uCi0gTWV0YQotIERhdGEKCiMjIyBQYWdpbmF0aW9uCgoqUGFnaW5hdGlvbiogb2JqZWN0IGFsbG93cyB0byBzcGxpdCB0aGUgcmVzcG9uc2UgaW50byBwYXJ0cyBhbmQgdGhlbiB0bwpyZWJ1aWxkIGl0IHNlcXVlbnRpYWxseSBieSB0aGUgdXNlIG9mIGBuZXh0YCBhbmQgYHByZXZpb3VzYCBwYXJhbWV0ZXJzLCBieQp3aGljaCB5b3UgZ2V0IHByZXZpb3VzIGFuZCBmb2xsb3dpbmcgYmxvY2tzLiBUaGUgKlBhZ2luYXRpb24qIGlzIHByZXNlbnQKb25seSBpZiB0aGUgcmVzcG9uc2UgaXMgYSBsaXN0IG9mIG9iamVjdHMuCgpUaGUgZ2VuZXJhbCBzdHJ1Y3R1cmUgb2YgKlBhZ2luYXRpb24qIG9iamVjdCBpcyB0aGUgZm9sbG93aW5nOgoKYGBganNvbgp7CiAgICAicGFnaW5hdGlvbiI6IHsKICAgICAgImNvdW50IjogNzUsCiAgICAgICJwcmV2aW91cyI6ICJodHRwczovL3NhbmRib3guc2lnbmluZ3RvZGF5LmNvbS9hcGkvdjEvbXktb3JnL3VzZXJzP3BhZ2U9MSIsCiAgICAgICJuZXh0IjogImh0dHBzOi8vc2FuZGJveC5zaWduaW5ndG9kYXkuY29tL2FwaS92MS9teS1vcmcvdXNlcnM/cGFnZT0zIiwKICAgICAgInBhZ2VzIjogOCwKICAgICAgInBhZ2UiOiAyCiAgICB9LAogICAgLi4uCiAgfQpgYGAKCiMjIyBNZXRhCgoqTWV0YSogb2JqZWN0IGlzIHVzZWQgdG8gZW5yaWNoIHRoZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgcmVzcG9uc2UuIEluIHRoZQpwcmV2aW91cyBleGFtcGxlLCBhIHN1Y2Nlc3NmdWwgY2FzZSBvZiByZXNwb25zZSwgKk1ldGEqIHdpbGwgaGF2ZSB2YWx1ZQpgc3RhdHVzOiAyWFhgLiBJbiBjYXNlIG9mIHVuc3VjY2Vzc2Z1bCByZXNwb25zZSwgKk1ldGEqIHdpbGwgaGF2ZSBmdXJ0aGVyCmluZm9ybWF0aW9uLCBhcyBmb2xsb3dzOgoKYGBganNvbgp7CiAgICAibWV0YSI6IHsKICAgICAgImNvZGUiOiA8SFRUUCBTVEFUVVMgQ09ERT4sCiAgICAgICJlcnJvcl90eXBlIjogPFNUQVRVUyBDT0RFIERFU0NSSVBUSU9OPiwKICAgICAgImVycm9yX21lc3NhZ2UiOiA8RVJST1IgREVTQ1JJUFRJT04+CiAgICB9CiAgfQpgYGAKCiMjIyBEYXRhCgoqRGF0YSogb2JqZWN0IG91dHB1dHMgYXMgb2JqZWN0IG9yIGxpc3Qgb2YgdGhlbS4gQ29udGFpbnMgdGhlIGV4cGVjdGVkIGRhdGEKYXMgcmVxdWVzdGVkIHRvIHRoZSBBUEkuCgojIyBTZWFyY2ggZmlsdGVycwoKU2VhcmNoIGZpbHRlcnMgb2YgdGhlIEFQSSBoYXZlIHRoZSBmb2xsb3dpbmcgc3RydWN0dXJlOgoKYHdoZXJlX0FUVFJJQlVURU5BTUVgPWBWQUxVRWAKCkluIHRoaXMgd2F5IHlvdSBtYWtlIGEgY2FzZS1zZW5zaXRpdmUgc2VhcmNoIG9mICpWQUxVRSouIFlvdSBjYW4gZXh0ZW5kIGl0CnRocm91Z2ggdGhlIERqYW5nbyBsb29rdXAsIG9idGFpbmluZyBtb3JlIHNwZWNpZmljIGZpbHRlcnMuIEZvciBleGFtcGxlOgoKYHdoZXJlX0FUVFJJQlVURU5BTUVfX0xPT0tVUGA9YFZBTFVFYAoKd2hlcmUgKkxPT0tVUCogY2FuIGJlIHJlcGxhY2VkIHdpdGggYGljb250YWluc2AgdG8gaGF2ZSBhIHBhcnRpYWwgaW5zZW5zaXRpdmUKcmVzZWFyY2gsIHdoZXJlCgpgd2hlcmVfZmlyc3RfbmFtZV9faWNvbnRhaW5zYD1gQ0hhYAoKbWF0Y2hlcyB3aXRoIGV2ZXJ5IHVzZXIgdGhhdCBoYXZlIHRoZSAqY2hhKiBzdHJpbmcgaW4gdGhlaXIgbmFtZSwgd2l0aApubyBkaWZmZXJlbmNlcyBiZXR3ZWVuIGNhcGl0YWwgYW5kIGxvd2VyIGNhc2VzLgoKW0hlcmVdKGh0dHBzOi8vZG9jcy5kamFuZ29wcm9qZWN0LmNvbS9lbi8xLjExL3JlZi9tb2RlbHMvcXVlcnlzZXRzLyNmaWVsZC1sb29rdXBzKQp0aGUgbGlzdCBvZiB0aGUgbG9va3Vwcy4KCiMjIFdlYmhvb2tzCgpTaWduaW5nIFRvZGF5IHN1cHBvcnRzIHdlYmhvb2tzIGZvciB0aGUgdXBkYXRlIG9mIERTVHMgYW5kIGlkZW50aXRpZXMgc3RhdHVzLgpZb3UgY2FuIGNob29zZSBpZiB0byB1c2Ugb3Igbm90IHdlYmhvb2tzIGFuZCBpZiB5b3Ugd2FudCB0byByZWNlaXZlIHVwZGF0ZXMKYWJvdXQgRFNUcyBhbmQvb3IgaWRlbnRpdGllcy4gWW91IGNhbiBjb25maWd1cmF0ZSBpdCBvbiBhcHBsaWNhdGlvbiB0b2tlbgpsZXZlbCwgaW4gdGhlICp3ZWJob29rKiBmaWVsZCwgYXMgZm9sbG93czoKCmBgYGpzb24KIndlYmhvb2tzIjogewogICJkc3QiOiAiVVJMIiwKICAiaWRlbnRpdHkiOiAiVVJMIgogIH0KYGBgCgojIyMgRFNUcyBzdGF0dXMgdXBkYXRlCgpEU1RzIHNlbmQgdGhlIGZvbGxvd2luZyBzdGF0dXMgdXBkYXRlczoKLSAqKkRTVF9TVEFUVVNfQ0hBTkdFRCoqOiB3aGVuZXZlciB0aGUgRFNUIGNoYW5nZXMgaXRzIHN0YXR1cwotICoqU0lHTkFUVVJFX1NUQVRVU19DSEFOR0VEKio6IHdoZW5ldmVyIG9uZSBvZiB0aGUgc2lnbmF0dXJlcyBjaGFuZ2VzIGl0cwpzdGF0dXMKCiMjIyMgRFNUX1NUQVRVU19DSEFOR0VECgpTZW5kcyB0aGUgZm9sbG93aW5nIGluZm9ybWF0aW9uOgoKYGBganNvbgp7CiAgICAibWVzc2FnZSI6ICJEU1RfU1RBVFVTX0NIQU5HRUQiLAogICAgImRhdGEiOiB7CiAgICAgICJzdGF0dXMiOiAiPERTVF9TVEFUVVM+IiwKICAgICAgImRzdCI6ICI8RFNUX0lEPiIsCiAgICAgICJyZWFzb24iOiAiPERTVF9SRUFTT04+IgogICAgfQogIH0KYGBgCgojIyMjIFNJR05BVFVSRV9TVEFUVVNfQ0hBTkdFRAoKU2VuZHMgdGhlIGZvbGxvd2luZyBpbmZvcm1hdGlvbjoKCmBgYGpzb24KewogICAgIm1lc3NhZ2UiOiAiU0lHTkFUVVJFX1NUQVRVU19DSEFOR0VEIiwKICAgICJkYXRhIjogewogICAgICAic3RhdHVzIjogIjxTSUdOQVRVUkVfU1RBVFVTPiIsCiAgICAgICJncm91cCI6IDxNRU1CRVJTSElQX0dST1VQX0lOREVYPiwKICAgICAgImRzdCI6IHsKICAgICAgICAiaWQiOiAiPERTVF9JRD4iLAogICAgICAgICJ0aXRsZSI6ICI8RFNUX1RJVExFPiIKICAgICAgfSwKICAgICAgInNpZ25hdHVyZSI6ICI8U0lHTkFUVVJFX0lEPiIsCiAgICAgICJzaWduZXIiOiAiPFNJR05FUl9VU0VSTkFNRT4iLAogICAgICAicG9zaXRpb24iOiAiPFNJR05BVFVSRV9QT1NJVElPTj4iLAogICAgICAiZG9jdW1lbnQiOiB7CiAgICAgICAgImRpc3BsYXlfbmFtZSI6ICI8RE9DVU1FTlRfVElUTEU+IiwKICAgICAgICAiaWQiOiAiPERPQ1VNRU5UX0lEPiIsCiAgICAgICAgIm9yZGVyIjogPERPQ1VNRU5UX0lOREVYPgogICAgICB9LAogICAgICAiYXV0b21hdGljIjogPERFQ0xBUkVTX0lGX1RIRV9TSUdORVJfSVNfQVVUT01BVElDPiwKICAgICAgInBhZ2UiOiAiPFNJR05BVFVSRV9QQUdFPiIKICAgIH0KICB9CmBgYAoKIyMjIElkZW50aXRpZXMgc3RhdHVzIHVwZGF0ZQoKSWRlbnRpdGllcyBzZW5kIHRoZSBmb2xsb3dpbmcgc3RhdHVzIHVwZGF0ZXM6Ci0gKipJREVOVElUWV9SRVFVRVNUX0VOUk9MTEVEKio6IHdoZW5ldmVyIGFuIGlkZW50aXR5IHJlcXVlc3QgaXMgYWN0aXZhdGVkCgojIyMjIElERU5USVRZX1JFUVVFU1RfRU5ST0xMRUQKClNlbmRzIHRoZSBmb2xsb3dpbmcgaW5mb3JtYXRpb246CgpgYGBqc29uCnsKICAgICJtZXNzYWdlIjogIklERU5USVRZX1JFUVVFU1RfRU5ST0xMRUQiLAogICAgImRhdGEiOiB7CiAgICAgICJzdGF0dXMiOiAiPFJFUVVFU1RfU1RBVFVTPiIsCiAgICAgICJyZXF1ZXN0IjogIjxSRVFVRVNUX0lEPiIsCiAgICAgICJ1c2VyIjogIjxBUFBMSUNBTlRfVVNFUk5BTUU+IgogICAgfQogIH0KYGBgCgojIyMgVXJsYmFjawoKU29tZXRpbWVzIG1heSBiZSBuZWNlc3NhcnkgdG8gbWFrZSBhIHJlZGlyZWN0IGFmdGVyIGFuIHVzZXIsIGZyb20gdGhlCnNpZ25hdHVyZSB0cmF5LCBoYXMgY29tcGxldGVkIGhpcyBvcGVyYXRpb25zIG9yIGFjdGl2YXRlZCBhIGNlcnRpZmljYXRlLgoKSWYgc2V0LCByZWRpcmVjdHMgY291bGQgaGFwcGVuIGluIDMgY2FzZXM6Ci0gYWZ0ZXIgYSBzaWduYXR1cmUgb3IgZGVjbGluZQotIGFmdGVyIGEgRFNUIGhhcyBiZWVuIHNpZ25lZCBieSBhbGwgdGhlIHNpZ25lcnMgb3IgY2FuY2VsZWQKLSBhZnRlciB0aGUgYWN0aXZhdGlvbiBvZiBhIGNlcnRpZmljYXRlCgpJbiB0aGUgZmlyc3QgdHdvIGNhc2VzIHRoZSB1cmxiYWNrIHJldHVybnMgdGhlIGZvbGxvd2luZyBpbmZvcm1hdGlvbiB0aHJvdWdoCmEgZGF0YSBmb3JtOgotICoqZHN0LWlkKio6IGlkIG9mIHRoZSBEU1QKLSAqKmRzdC11cmwqKjogc2lnbmF0dXJlX3RpY2tldCBvZiB0aGUgc2lnbmF0dXJlCi0gKipkc3Qtc3RhdHVzKio6IGN1cnJlbnQgc3RhdHVzIG9mIHRoZSBEU1QKLSAqKmRzdC1zaWduYXR1cmUtaWQqKjogaWQgb2YgdGhlIHNpZ25hdHVyZQotICoqZHN0LXNpZ25hdHVyZS1zdGF0dXMqKjogY3VycmVudCBzdGF0dXMgb2YgdGhlIHNpZ25hdHVyZQotICoqdXNlcioqOiB1c2VybmFtZSBvZiB0aGUgc2lnbmVyCi0gKipkZWNsaW5lLXJlYXNvbioqOiBpbiBjYXNlIG9mIGEgcmVmdXNlZCBEU1QgY29udGFpbnMgdGhlIHJlYXNvbiBvZiB0aGUKZGVjbGluZQoKSW4gdGhlIGxhc3QgY2FzZSB0aGUgdXJsYmFjayByZXR1cm5zIHRoZSBmb2xsb3dpbmcgaW5mb3JtYXRpb24gdGhyb3VnaCBhCmRhdGEgZm9ybToKLSAqKnVzZXIqKjogdXNlcm5hbWUgb2YgdGhlIHVzZXIgYWN0aXZhdGVkIHRoZSBjZXJ0aWZpY2F0ZQotICoqaWRlbnRpdHktcHJvdmlkZXIqKjogdGhlIHByb3ZpZGVyIGhhcyBiZWVuIHVzZWQgdG8gaXNzdWUgdGhlIGNlcnRpZmljYXRlCi0gKippZGVudGl0eS1yZXF1ZXN0LWlkKio6IGlkIG9mIHRoZSBlbnJvbGxtZW50IHJlcXVlc3QKLSAqKmlkZW50aXR5LWlkKio6IGlkIG9mIHRoZSBuZXcgaWRlbnRpdHkKLSAqKmlkZW50aXR5LWxhYmVsKio6IHRoZSBsYWJlbCBhc3NpZ25lZCB0byB0aGUgaWRlbnRpdHkKLSAqKmlkZW50aXR5LWNlcnRpZmljYXRlKio6IHB1YmxpYyBrZXkgb2YgdGhlIGNlcnRpZmljYXRlCgoK

The version of the OpenAPI document: 1.5.0
Contact: smartcloud@bit4id.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.0

=end

require 'cgi'

module SigningTodayAPIClient
  class Bit4idPathgroupSignatureTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Mark a DST as canceled
    # This API allows to mark a Digital Signature Transaction as canceled providing a reason. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param inline_object1 [InlineObject1] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def cancel_dst(organization_id, dst_id, inline_object1, opts = {})
      data, _status_code, _headers = cancel_dst_with_http_info(organization_id, dst_id, inline_object1, opts)
      data
    end

    # Mark a DST as canceled
    # This API allows to mark a Digital Signature Transaction as canceled providing a reason. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param inline_object1 [InlineObject1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def cancel_dst_with_http_info(organization_id, dst_id, inline_object1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.cancel_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.cancel_dst"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.cancel_dst"
      end
      # verify the required parameter 'inline_object1' is set
      if @api_client.config.client_side_validation && inline_object1.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object1' when calling Bit4idPathgroupSignatureTransactionsApi.cancel_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}/cancel'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object1) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2013' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#cancel_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Digital Signature Transaction
    # This API allows to create a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_signature_transaction [CreateSignatureTransaction] The new DST to create
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def create_dst(organization_id, create_signature_transaction, opts = {})
      data, _status_code, _headers = create_dst_with_http_info(organization_id, create_signature_transaction, opts)
      data
    end

    # Create a Digital Signature Transaction
    # This API allows to create a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_signature_transaction [CreateSignatureTransaction] The new DST to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def create_dst_with_http_info(organization_id, create_signature_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.create_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.create_dst"
      end
      # verify the required parameter 'create_signature_transaction' is set
      if @api_client.config.client_side_validation && create_signature_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'create_signature_transaction' when calling Bit4idPathgroupSignatureTransactionsApi.create_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_signature_transaction) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2013' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#create_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Digital Signature Transaction
    # This API allows to delete a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def delete_dst(organization_id, dst_id, opts = {})
      data, _status_code, _headers = delete_dst_with_http_info(organization_id, dst_id, opts)
      data
    end

    # Delete a Digital Signature Transaction
    # This API allows to delete a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Integer, Hash)>] InlineResponse2007 data, response status code and response headers
    def delete_dst_with_http_info(organization_id, dst_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.delete_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.delete_dst"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.delete_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2007' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#delete_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a document from a DST
    # This API allows to download a document from a digital signature transaction. The document can be downloaded before or after one or every signature have been performed. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param document_id [Id] The **document-id** is the uuid code that identifies a document of a digital signature transaction. This parameter is usually used in order to download a document from a digital signature transaction 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_document(organization_id, document_id, opts = {})
      data, _status_code, _headers = get_document_with_http_info(organization_id, document_id, opts)
      data
    end

    # Download a document from a DST
    # This API allows to download a document from a digital signature transaction. The document can be downloaded before or after one or every signature have been performed. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param document_id [Id] The **document-id** is the uuid code that identifies a document of a digital signature transaction. This parameter is usually used in order to download a document from a digital signature transaction 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_document_with_http_info(organization_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.get_document ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_document"
      end
      # resource path
      local_var_path = '/{organization-id}/documents/{document-id}/download'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'document-id' + '}', CGI.escape(document_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about a DST
    # This API allows to get information about a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def get_dst(organization_id, dst_id, opts = {})
      data, _status_code, _headers = get_dst_with_http_info(organization_id, dst_id, opts)
      data
    end

    # Get information about a DST
    # This API allows to get information about a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def get_dst_with_http_info(organization_id, dst_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.get_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_dst"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2013' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#get_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the DSTs of an organization
    # This API allows to list the Digital Signature Transactions of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_signer Returns the Digital Signature Transactions where the specified user is a signer, searched by its id
    # @option opts [String] :where_status Returns the Digital Signature Transactions with the specified status
    # @option opts [String] :where_title Returns the Digital Signature Transactions that have the specified title
    # @option opts [String] :where_created_by Returns the Digital Signature Transactions created by the specified user
    # @option opts [String] :where_created Returns the Digital Signature Transactions created before, after or in the declared range
    # @option opts [String] :where_signature_status Returns the Digital Signature Transactions where at least one of the signers has the queried status
    # @option opts [String] :where_document_name Returns the Digital Signature Transactions that have into its documents the queried one
    # @option opts [String] :where_reason Returns the Digital Signature Transactions with the specified reason
    # @option opts [String] :where_signature_name Returns the Digital Signature Transactions where the specified user is a signer, searched by its name
    # @option opts [String] :where_signer_group Returns the Digital Signature Transactions that have the specified group of signers
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @return [InlineResponse2006]
    def list_ds_ts(organization_id, opts = {})
      data, _status_code, _headers = list_ds_ts_with_http_info(organization_id, opts)
      data
    end

    # List the DSTs of an organization
    # This API allows to list the Digital Signature Transactions of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_signer Returns the Digital Signature Transactions where the specified user is a signer, searched by its id
    # @option opts [String] :where_status Returns the Digital Signature Transactions with the specified status
    # @option opts [String] :where_title Returns the Digital Signature Transactions that have the specified title
    # @option opts [String] :where_created_by Returns the Digital Signature Transactions created by the specified user
    # @option opts [String] :where_created Returns the Digital Signature Transactions created before, after or in the declared range
    # @option opts [String] :where_signature_status Returns the Digital Signature Transactions where at least one of the signers has the queried status
    # @option opts [String] :where_document_name Returns the Digital Signature Transactions that have into its documents the queried one
    # @option opts [String] :where_reason Returns the Digital Signature Transactions with the specified reason
    # @option opts [String] :where_signature_name Returns the Digital Signature Transactions where the specified user is a signer, searched by its name
    # @option opts [String] :where_signer_group Returns the Digital Signature Transactions that have the specified group of signers
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @return [Array<(InlineResponse2006, Integer, Hash)>] InlineResponse2006 data, response status code and response headers
    def list_ds_ts_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.list_ds_ts ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.list_ds_ts"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupSignatureTransactionsApi.list_ds_ts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupSignatureTransactionsApi.list_ds_ts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/signature-transactions'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'where_signer'] = opts[:'where_signer'] if !opts[:'where_signer'].nil?
      query_params[:'where_status'] = opts[:'where_status'] if !opts[:'where_status'].nil?
      query_params[:'where_title'] = opts[:'where_title'] if !opts[:'where_title'].nil?
      query_params[:'where_created_by'] = opts[:'where_created_by'] if !opts[:'where_created_by'].nil?
      query_params[:'where_created'] = opts[:'where_created'] if !opts[:'where_created'].nil?
      query_params[:'where_signature_status'] = opts[:'where_signature_status'] if !opts[:'where_signature_status'].nil?
      query_params[:'where_document_name'] = opts[:'where_document_name'] if !opts[:'where_document_name'].nil?
      query_params[:'where_reason'] = opts[:'where_reason'] if !opts[:'where_reason'].nil?
      query_params[:'where_signature_name'] = opts[:'where_signature_name'] if !opts[:'where_signature_name'].nil?
      query_params[:'where_signer_group'] = opts[:'where_signer_group'] if !opts[:'where_signer_group'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2006' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#list_ds_ts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
