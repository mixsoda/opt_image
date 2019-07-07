# opt_image
Quite simple image optimizer frot end for windows.

This software is a batch file that works as a front end for the JPEG optimization tool Mozjpeg, the PNG optimization tool Zopfli, and the PNG color reduction tool Pngquant. The aim of this software is to optimize the images used for web pages.

## Demo
In this example, three image files (approximately 1 MB in total) are processed to reduce the file size to 185 KB (1/5 or less of the original file).

## Install
### Preparation
First of all, download mozjpeg, pngquant, zopflipng binary files from the following site.
+ [pngquant — lossy PNG compressor](https://pngquant.org/)
+ [garyzyg/mozjpeg-windows](https://github.com/garyzyg/mozjpeg-windows/releases)
+ [imagemin/zopflipng-bin](https://github.com/imagemin/zopflipng-bin/tree/master/vendor/win32)

Assuming that images are uploaded to blogs, the EXIF information of JPEG file is deleted. Image magick is also required to correct image orientation by removing EXIF information.
+ [ImageMagick - Download](https://imagemagick.org/script/download.php)

### Setup
Next, create a new directory and copy the downloaded binary file and opt_img.
```
C:\IMG_BIN
| cjpeg-static.exe
| optipng.exe
| opt_image.bat
| pngquant.exe
```
Add the created directory path to the environment variable PATH.

Finally, create shortcut of opt_image.bat at desktop.

## Benchmark
In preparation

## License
These codes are licensed under CC0.
[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)



