# clrpalette
clrpalette generate a clr file used by Apple's Color Palettes from a JSON file.  

## Usage
```bash
$ clrpalette COLOR_PALETTE_NAME /path/to/file.json
```

This will generate `$HOME/Library/Colors/COLOR_PALETTE_NAME.clr`.  
And you will use this on Color Palettes in various Mac apps such as Xcode.  

## Example
If you create JSON file for colors, you can use these colors on Color Palettes like below.  

```json
{
    "Black" : "454545",
    "Blue" : "4290c6",
    "LineGray" : "e3e5e4",
    "Placeholder" : "c7c7cd"
}
```

![](../Resources/color_palette.png)

So you can manage clr file indirectly across the project team if you put on the JSON file under Git.
If you use [AliSoftware/SwiftGen](https://github.com/AliSoftware/SwiftGen) in your project, you also manage same colors as UIColor in code.  

## License
clrpalette is under the MIT License. See `LICENSE` file in this repository.
