# clrpalette
clrpalette generate a clr file used by Apple's Color Palettes from a JSON file.  
This is affected by [naoty/clr](https://github.com/naoty/clr) and [AliSoftware/SwiftGen](https://github.com/AliSoftware/SwiftGen).  

## Usage
```bash
$ clrpalette COLOR_PALETTE_NAME /path/to/file.json
```

This will generate `$HOME/Library/Colors/COLOR_PALETTE_NAME.clr`.  
You will use this on Color Palettes in various Mac apps such as Xcode.  

## License
clrpalette is under the MIT License. See `LICENSE` file in this repository.
