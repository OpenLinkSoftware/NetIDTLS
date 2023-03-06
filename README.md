# NetIDTLS
Collection of code examples and demos related to the NetIDTLS extension to TLS-Handshake.

# What is NetIDTLS? 
A credentials lookup added to the conventional TLS session initialization handshake.

# How does it work? 
By looking-up and matching credentials notarized in an X.509 certificate against replicas in a publicly accessible profile document. The sequence is as follows:

1. X.509 certificate presented during TLS-handshake
1. Rather than initialize following successful handshake, a credentials (Publick Key or its SHA1-hash) look-up is performed by de-referencing a hyperlink that denotes the X.509 certificate's subject via the Subject Alternative Name field
1. TLS session initialized

# Live Links

* [NetIDTLS Live Demo](https://linkeddata.uriburner.com/ods/webid_demo.html)
