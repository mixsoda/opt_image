# opt_image
A simple image optimization front-end for Windows.

This software is a batch file that serves as a front-end for the JPEG optimization tool MozJPEG, the PNG optimization tool Zopfli, and the PNG color reduction tool Pngquant. Its primary purpose is to optimize images for use on web pages, making them smaller in size without significant quality loss.

## Demo
In this example, three image files (totaling approximately 1 MB) are optimized, reducing their total size to 185 KB (about 1/5 or less of the original file size).

![sample_images](https://github.com/mixsoda/opt_image/blob/master/opt_img_demo.gif?raw=true "demo")

## Install
### Preparation
First, download the binary files for MozJPEG, pngquant, and zopflipng from the following sites:

+ [pngquant — lossy PNG compressor](https://pngquant.org/)
+ [garyzyg/mozjpeg-windows](https://github.com/garyzyg/mozjpeg-windows/releases)
+ [imagemin/zopflipng-bin](https://github.com/imagemin/zopflipng-bin/tree/master/vendor/win32)

Note: Since images are often uploaded to blogs, this tool removes EXIF information from JPEG files by default. To handle this, you will also need to install ImageMagick, which will adjust the image orientation after EXIF data is removed.

+ [ImageMagick - Download](https://imagemagick.org/script/download.php)

### Setup
1. Create a new directory (e.g., `C:\IMG_BIN`, but any name and location are fine) and copy the downloaded binary files and `opt_image.bat` into it:
    ```
    C:\IMG_BIN
    | cjpeg-static.exe
    | optipng.exe
    | opt_image.bat
    | pngquant.exe
    ```
2. Add the directory path to the environment variable `PATH` so that the system can recognize these files from anywhere.

3. Finally, create a shortcut to `opt_image.bat` on the desktop for quick access.

**Tip**: If you're new to setting environment variables on Windows, you can search for "Environment Variables" in the Control Panel or System Settings to find the PATH configuration.

## Benchmark
Benchmark details will be added in future updates.

## License
This code is licensed under CC0.
[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)


