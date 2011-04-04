#!/usr/bin/ruby

require 'fileutils'

$home_dir = File.expand_path(((ARGV[0] || File.join('..', File.dirname(__FILE__)))))
$backup_dir = File.join($home_dir, '.dotfiles.backup')
                            

Dir['**/.*'].each do |dotfile|
  next if File.directory?(dotfile)

  home_file = File.join($home_dir, dotfile)

  if File.exists?(home_file) 
    next if File.ftype(home_file) != 'file'

    FileUtils.mkdir_p($backup_dir)
    FileUtils.mv home_file, $backup_dir, :verbose => true
  end

  FileUtils.ln_s File.expand_path(dotfile), home_file, :verbose => true
end
