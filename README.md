# RenameIcon

Rename icons as appropriate names.
If you have hoge.png(57×57), this gem rename it as Icon.png.

Target names↓

```
Icon.png
Icon@2x.png
Icon-72.png
Icon-72@2x.png
Icon-60.png
Icon-60@2x.png
Icon-76.png
Icon-76@2x.png
Icon-Small.png
Icon-Small@2x.png
Icon-Small-40.png
Icon-Small-40@2x.png
Icon-Small-50.png
Icon-Small-50@2x.png
iTunesArtwork.png
iTunesArtwork@2x.png
```

## Installation

Add this line to your application's Gemfile:

    gem 'rename_icon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rename_icon

## Usage

Move the directory which has images you want to rename.
After that just execute the following command.

```
$ rename_icon
```

Then the images will be renamed.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rename_icon/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
