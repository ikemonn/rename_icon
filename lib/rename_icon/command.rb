require "rename_icon"
require 'thor'
require 'image_size'

module RenameIcon
  class Command < Thor
    def get_file()
      Dir::foreach(@dir) do |file|
        @file << file if /.*?\.(jpg|jpeg|png)/ =~ file
      end
    end

    def resize(file)
      # TODO:画像のパスはカレントディレクトリに書き換える
      size = ImageSize.path(@dir + '/' + file).size
      case size
      when [57, 57]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon.png')
      when [114, 114]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon@2x.png')
      when [72, 72]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon-72.png')
      when [144, 144]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon-72@2x.png')
      when [60, 60]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon-60.png')
      when [120, 120]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon-60@2x.png')
      when [76, 76]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon-76.png')
      when [152, 152]
        File.rename(@dir + '/' + file, @dir + '/' + 'Icon-76@2x.png')
      else
        puts "【#{file}】は対応するアイコンサイズがないため、リネームされませんでした。"
      end
    end

    desc "TODO:あとで使用方法について書く", "あとでかく"
    def rename()
      @file = []
      # @dir = "/Users/n00972/Dropbox/github/tmp/rename_icon/image";
      @dir = "./";
      get_file()
      @file.each do |file|
        resize(file)
      end
      puts "リネームが完了しました。"
    end
  end
end
