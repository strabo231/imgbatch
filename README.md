[![Test ImgBatch](https://github.com/strabo231/imgbatch/actions/workflows/test.yml/badge.svg)](https://github.com/strabo231/imgbatch/actions/workflows/test.yml)

# ImgBatch - Batch Image Processor

Process hundreds of images in seconds! Resize, compress, convert, watermark - all from the command line.

## Why ImgBatch?

**The Problem:** Image processing is tedious
- Resize 500 product photos one by one? No thanks
- Need to convert HEIC to JPG? Pain
- Remove GPS data before posting? Forgot again
- Compress for web? Which tool?

**The Solution:** Batch process everything
- Handle thousands of images at once
- One command, done in seconds
- Maintain quality while saving space
- Privacy-friendly (strip metadata)

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/strabo231/imgbatch/main/install.sh | bash
```

**Requirements:**
```bash
# Ubuntu/Debian
sudo apt install imagemagick exiftool

# macOS
brew install imagemagick exiftool
```

## Quick Start

```bash
# Resize for web
imgbatch resize *.jpg --width 1920 --output web/

# Compress (save space)
imgbatch compress photos/*.jpg --quality 80

# Convert HEIC to JPG
imgbatch convert *.heic --to jpg

# Strip metadata (privacy!)
imgbatch strip *.jpg --output safe/
```

## Commands

```
resize              Resize images
compress            Optimize/compress
convert             Change format
strip               Remove EXIF metadata
info                Show image details
```

## Features

📐 **Resize** - Width, height, percentage, max dimension  
🗜️ **Compress** - Optimize quality vs size  
🔄 **Convert** - JPG, PNG, WEBP, HEIC, GIF  
✂️ **Crop** - Smart cropping  
💧 **Watermark** - Text or image  
🔐 **Strip metadata** - Remove GPS, camera info  
⚡ **Batch process** - Thousands at once  
📊 **Statistics** - See size savings  

## Examples

**Resize to 1920px wide:**
```bash
imgbatch resize *.jpg --width 1920 --output resized/
```

**Compress to 80% quality:**
```bash
imgbatch compress photos/*.jpg --quality 80 -v
```
```
✓ IMG_001.jpg: 4.2MB → 1.1MB (-74%)
✓ IMG_002.jpg: 3.8MB → 982KB (-74%)
Space saved: 6.2MB
```

**Convert HEIC to JPG:**
```bash
imgbatch convert iPhone/*.heic --to jpg
```

**Strip all metadata (privacy):**
```bash
imgbatch strip vacation/*.jpg --output safe/
```
Removes: GPS location, camera model, timestamps, software info

**Resize and compress:**
```bash
imgbatch resize *.jpg --width 1200
imgbatch compress resized/*.jpg --quality 85
```

## Use Cases

**E-commerce:**
```bash
# Product photos for web
imgbatch resize products/*.jpg --max 2000 --quality 85
```

**Photography:**
```bash
# Export for web
imgbatch resize raw-exports/*.jpg --width 1920 --quality 90
```

**Privacy:**
```bash
# Remove GPS before posting
imgbatch strip social-media/*.jpg
```

**Web Optimization:**
```bash
# Optimize all images
imgbatch compress website/images/*.jpg --quality 85
```

**Format Conversion:**
```bash
# iPhone photos to JPG
imgbatch convert *.heic --to jpg
```

## Advanced

**Process directory tree:**
```bash
find photos/ -name "*.jpg" -exec imgbatch resize {} --width 1920 \;
```

**Info about images:**
```bash
imgbatch info *.jpg
```
```
FILE                    DIMENSIONS      SIZE      FORMAT
────────────────────────────────────────────────────────
photo1.jpg              4032x3024       3.2MB     JPEG
photo2.jpg              1920x1080       1.1MB     JPEG
```

## Requirements

- Bash 4.0+
- ImageMagick (convert, identify)
- exiftool (for metadata operations)

## License

MIT License

## Author

Sean - [@strabo231](https://github.com/strabo231)

---

**Process images. Save time. Stay sane.** 📸
