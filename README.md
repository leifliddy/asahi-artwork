How the `AsahiLinux_logomark.icns` file was created

# asahi-artwork
```dnf install libicns-utils```

```
cd logos
png2icns icns/AsahiLinux_logomark.icns png_{16,32,48,128,256,512}/AsahiLinux_logomark.png
#png2icns icns/AsahiLinux_logomark.icns png_{128,256}/AsahiLinux_logomark.png
```
