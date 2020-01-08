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
  class IdentitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Associate an appearance to an identity
    # Associate a signature appearance to an already existing identity through an url to an image. This appearance will be displayed on the document after the signature. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def associate_appearance(organization_id, identity_id, inline_object, opts = {})
      data, _status_code, _headers = associate_appearance_with_http_info(organization_id, identity_id, inline_object, opts)
      data
    end

    # Associate an appearance to an identity
    # Associate a signature appearance to an already existing identity through an url to an image. This appearance will be displayed on the document after the signature. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def associate_appearance_with_http_info(organization_id, identity_id, inline_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.associate_appearance ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.associate_appearance"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling IdentitiesApi.associate_appearance"
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling IdentitiesApi.associate_appearance"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}/appearance'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s).gsub('%2F', '/'))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2004' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#associate_appearance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Associate to an user an already existing identity
    # Associate to an user of the organization an already existing identity of a provider. The _provider_data_ field is an object and is different for each provider. The minimum set of information to provide as provider_data is the following:   - **aruba**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **aruba-auto**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **infocert**     - _username_ : string     - _password_ : string   - **namirial**     - _id_titolare_ : string     - _id_otp_ : string     - _username_ : string     - _password_ : string 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param identity_association [IdentityAssociation] Provider data to associate
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def associate_identity(organization_id, user_id, identity_association, opts = {})
      data, _status_code, _headers = associate_identity_with_http_info(organization_id, user_id, identity_association, opts)
      data
    end

    # Associate to an user an already existing identity
    # Associate to an user of the organization an already existing identity of a provider. The _provider_data_ field is an object and is different for each provider. The minimum set of information to provide as provider_data is the following:   - **aruba**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **aruba-auto**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **infocert**     - _username_ : string     - _password_ : string   - **namirial**     - _id_titolare_ : string     - _id_otp_ : string     - _username_ : string     - _password_ : string 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param identity_association [IdentityAssociation] Provider data to associate
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def associate_identity_with_http_info(organization_id, user_id, identity_association, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.associate_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.associate_identity"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling IdentitiesApi.associate_identity"
      end
      # verify the required parameter 'identity_association' is set
      if @api_client.config.client_side_validation && identity_association.nil?
        fail ArgumentError, "Missing the required parameter 'identity_association' when calling IdentitiesApi.associate_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/users/{user-id}/wallet'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

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
      post_body = opts[:body] || @api_client.object_to_http_body(identity_association) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2004' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#associate_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an identity from token
    # This API allows to create an identity from a token. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_identityby_token [CreateIdentitybyToken] Body of the request to create an identity from a token
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def create_token_from_identity(organization_id, create_identityby_token, opts = {})
      data, _status_code, _headers = create_token_from_identity_with_http_info(organization_id, create_identityby_token, opts)
      data
    end

    # Create an identity from token
    # This API allows to create an identity from a token. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_identityby_token [CreateIdentitybyToken] Body of the request to create an identity from a token
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Integer, Hash)>] InlineResponse2012 data, response status code and response headers
    def create_token_from_identity_with_http_info(organization_id, create_identityby_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.create_token_from_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.create_token_from_identity"
      end
      # verify the required parameter 'create_identityby_token' is set
      if @api_client.config.client_side_validation && create_identityby_token.nil?
        fail ArgumentError, "Missing the required parameter 'create_identityby_token' when calling IdentitiesApi.create_token_from_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/create/token'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/'))

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_identityby_token) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2012' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#create_token_from_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the appearance of an identity
    # This API allows to delete the appearance associated to an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def delete_appearance(organization_id, identity_id, opts = {})
      data, _status_code, _headers = delete_appearance_with_http_info(organization_id, identity_id, opts)
      data
    end

    # Delete the appearance of an identity
    # This API allows to delete the appearance associated to an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def delete_appearance_with_http_info(organization_id, identity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.delete_appearance ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.delete_appearance"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling IdentitiesApi.delete_appearance"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}/appearance'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'InlineResponse2004' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#delete_appearance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an enrollment request
    # This API allows to delete an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def delete_enrollment_request(organization_id, enrollment_id, opts = {})
      data, _status_code, _headers = delete_enrollment_request_with_http_info(organization_id, enrollment_id, opts)
      data
    end

    # Delete an enrollment request
    # This API allows to delete an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Integer, Hash)>] InlineResponse2012 data, response status code and response headers
    def delete_enrollment_request_with_http_info(organization_id, enrollment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.delete_enrollment_request ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.delete_enrollment_request"
      end
      # verify the required parameter 'enrollment_id' is set
      if @api_client.config.client_side_validation && enrollment_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_id' when calling IdentitiesApi.delete_enrollment_request"
      end
      # resource path
      local_var_path = '/{organization-id}/identity-requests/{enrollment-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'enrollment-id' + '}', CGI.escape(enrollment_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'InlineResponse2012' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#delete_enrollment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an identity
    # This API allows to delete an identity of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2003]
    def delete_identity(organization_id, identity_id, opts = {})
      data, _status_code, _headers = delete_identity_with_http_info(organization_id, identity_id, opts)
      data
    end

    # Delete an identity
    # This API allows to delete an identity of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def delete_identity_with_http_info(organization_id, identity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.delete_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.delete_identity"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling IdentitiesApi.delete_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'InlineResponse2003' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#delete_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about an enrollment request
    # This API allows to get information about an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def get_enrollment_request(organization_id, enrollment_id, opts = {})
      data, _status_code, _headers = get_enrollment_request_with_http_info(organization_id, enrollment_id, opts)
      data
    end

    # Get information about an enrollment request
    # This API allows to get information about an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def get_enrollment_request_with_http_info(organization_id, enrollment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.get_enrollment_request ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.get_enrollment_request"
      end
      # verify the required parameter 'enrollment_id' is set
      if @api_client.config.client_side_validation && enrollment_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_id' when calling IdentitiesApi.get_enrollment_request"
      end
      # resource path
      local_var_path = '/{organization-id}/identity-requests/{enrollment-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'enrollment-id' + '}', CGI.escape(enrollment_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'InlineResponse2011' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#get_enrollment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about an identity
    # This API allows to get all the information of an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def get_identity(organization_id, identity_id, opts = {})
      data, _status_code, _headers = get_identity_with_http_info(organization_id, identity_id, opts)
      data
    end

    # Get information about an identity
    # This API allows to get all the information of an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def get_identity_with_http_info(organization_id, identity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.get_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.get_identity"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling IdentitiesApi.get_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:return_type] || 'InlineResponse2002' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#get_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enumerate the enrollment requests of an organization
    # This API allows to enumerate the enrollment requests of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identity requests that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identity requests of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identity requests of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identity requests of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identity requests registered by this user
    # @option opts [String] :where_fiscal_code Returns the identity requests have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @return [InlineResponse2005]
    def list_enrollment_requests(organization_id, opts = {})
      data, _status_code, _headers = list_enrollment_requests_with_http_info(organization_id, opts)
      data
    end

    # Enumerate the enrollment requests of an organization
    # This API allows to enumerate the enrollment requests of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identity requests that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identity requests of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identity requests of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identity requests of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identity requests registered by this user
    # @option opts [String] :where_fiscal_code Returns the identity requests have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def list_enrollment_requests_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.list_enrollment_requests ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.list_enrollment_requests"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_enrollment_requests, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_enrollment_requests, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/identity-requests'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'where_provider'] = opts[:'where_provider'] if !opts[:'where_provider'].nil?
      query_params[:'where_user'] = opts[:'where_user'] if !opts[:'where_user'].nil?
      query_params[:'where_first_name'] = opts[:'where_first_name'] if !opts[:'where_first_name'].nil?
      query_params[:'where_last_name'] = opts[:'where_last_name'] if !opts[:'where_last_name'].nil?
      query_params[:'where_registered_by'] = opts[:'where_registered_by'] if !opts[:'where_registered_by'].nil?
      query_params[:'where_fiscal_code'] = opts[:'where_fiscal_code'] if !opts[:'where_fiscal_code'].nil?
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
      return_type = opts[:return_type] || 'InlineResponse2005' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#list_enrollment_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enumerate the identities of an organization
    # This API allows to enumerate all the users of an organization. It is possible to filter the data using the supported _django lookups_. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identities that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identities of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identities of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identities of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identities registered by this user
    # @option opts [String] :where_fiscal_code Returns the identities that have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @return [InlineResponse2001]
    def list_identities(organization_id, opts = {})
      data, _status_code, _headers = list_identities_with_http_info(organization_id, opts)
      data
    end

    # Enumerate the identities of an organization
    # This API allows to enumerate all the users of an organization. It is possible to filter the data using the supported _django lookups_. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identities that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identities of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identities of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identities of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identities registered by this user
    # @option opts [String] :where_fiscal_code Returns the identities that have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def list_identities_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.list_identities ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.list_identities"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_identities, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_identities, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/identities'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'where_provider'] = opts[:'where_provider'] if !opts[:'where_provider'].nil?
      query_params[:'where_user'] = opts[:'where_user'] if !opts[:'where_user'].nil?
      query_params[:'where_first_name'] = opts[:'where_first_name'] if !opts[:'where_first_name'].nil?
      query_params[:'where_last_name'] = opts[:'where_last_name'] if !opts[:'where_last_name'].nil?
      query_params[:'where_registered_by'] = opts[:'where_registered_by'] if !opts[:'where_registered_by'].nil?
      query_params[:'where_fiscal_code'] = opts[:'where_fiscal_code'] if !opts[:'where_fiscal_code'].nil?
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
      return_type = opts[:return_type] || 'InlineResponse2001' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#list_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the enrollments of an user
    # This API allows to list all the enrollments of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @return [InlineResponse2005]
    def list_user_enrollments(organization_id, user_id, opts = {})
      data, _status_code, _headers = list_user_enrollments_with_http_info(organization_id, user_id, opts)
      data
    end

    # List the enrollments of an user
    # This API allows to list all the enrollments of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def list_user_enrollments_with_http_info(organization_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.list_user_enrollments ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.list_user_enrollments"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling IdentitiesApi.list_user_enrollments"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_user_enrollments, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_user_enrollments, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/users/{user-id}/identity-requests'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2005' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#list_user_enrollments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enumerate the identities of an user
    # This API allows to enumerate all the identities of an user, which are located in its wallet. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @return [InlineResponse2001]
    def list_user_identities(organization_id, user_id, opts = {})
      data, _status_code, _headers = list_user_identities_with_http_info(organization_id, user_id, opts)
      data
    end

    # Enumerate the identities of an user
    # This API allows to enumerate all the identities of an user, which are located in its wallet. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def list_user_identities_with_http_info(organization_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.list_user_identities ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.list_user_identities"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling IdentitiesApi.list_user_identities"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_user_identities, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling IdentitiesApi.list_user_identities, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/users/{user-id}/wallet'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/')).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2001' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#list_user_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit an enrollment request
    # This API allows to submit an enrollment request. The user of the request will be created if it does not exists already. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_request [IdentityRequest] The enrollment request to submit
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def request_enrollment(organization_id, identity_request, opts = {})
      data, _status_code, _headers = request_enrollment_with_http_info(organization_id, identity_request, opts)
      data
    end

    # Submit an enrollment request
    # This API allows to submit an enrollment request. The user of the request will be created if it does not exists already. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_request [IdentityRequest] The enrollment request to submit
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def request_enrollment_with_http_info(organization_id, identity_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentitiesApi.request_enrollment ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling IdentitiesApi.request_enrollment"
      end
      # verify the required parameter 'identity_request' is set
      if @api_client.config.client_side_validation && identity_request.nil?
        fail ArgumentError, "Missing the required parameter 'identity_request' when calling IdentitiesApi.request_enrollment"
      end
      # resource path
      local_var_path = '/{organization-id}/enroll'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s).gsub('%2F', '/'))

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
      post_body = opts[:body] || @api_client.object_to_http_body(identity_request) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2011' 

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
        @api_client.config.logger.debug "API called: IdentitiesApi#request_enrollment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
