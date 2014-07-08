require 'rename_icon'
require 'thor'
require 'image_size'

module RenameIcon
  class Command < Thor
    default_command :rename

    no_tasks do
      def get_file
        Dir::foreach(@dir) do |file|
          @file << file if /.*?\.(jpg|jpeg|png)/ =~ file
        end
      end
    end
    
    no_tasks do
      def resize(file)
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
        when [29, 29]
          File.rename(@dir + '/' + file, @dir + '/' + 'Icon-Small.png')
        when [58, 58]
          File.rename(@dir + '/' + file, @dir + '/' + 'Icon-Small@2x.png')
        when [40, 40]
          File.rename(@dir + '/' + file, @dir + '/' + 'Icon-Small-40.png')
        when [80, 80]
          File.rename(@dir + '/' + file, @dir + '/' + 'Icon-Small-40@2x.png')
        when [50, 50]
          File.rename(@dir + '/' + file, @dir + '/' + 'Icon-Small-50.png')
        when [100, 100]
          File.rename(@dir + '/' + file, @dir + '/' + 'Icon-Small-50@2x.png')
        when [512, 512]
          File.rename(@dir + '/' + file, @dir + '/' + 'iTunesArtwork.png')
        when [1024, 1024]
          File.rename(@dir + '/' + file, @dir + '/' + 'iTunesArtwork@2x.png')
        else
          puts "【#{file}】do not match icon size."
        end
      end
    end

    desc 'rename', 'rename current folder icon name'
    def rename
      @file = []
      @dir = './'
      get_file
      @file.each do |file|
        resize(file)
      end
      puts 'Rename finish!!'
    end
  end
end
