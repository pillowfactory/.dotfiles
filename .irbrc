require 'rubygems'
require 'riblet'

add_on 'wirble' do
  name    'Wirble'
  desc    'Wirble is a set of enhancements to Irb all included together in one easy-to-use package.'
  install 'gem install wirble'
  source  'http://github.com/blackwinter/wirble'
  usage   'Auto'
  
  init do
    Wirble.init
    Wirble.colorize
  end
end

add_on 'ap' do
  name    'Awesome Print'
  desc    'Pretty print your Ruby objects with style -- in full color and with proper indentation'
  install 'gem install awesome_print'
  source  'http://github.com/michaeldv/awesome_print'
  usage   'ap <object>, options = {}'
end

add_on 'hirb' do
  name    'Hirb'
  desc    "Draw ASCII tables. A mini view framework for console/irb that's easy to use."
  install 'gem install hirb'
  source  'http://github.com/cldwalker/hirb'
  usage   'Hirb.enable'

  init do
    require 'hirb/import_object'
    extend Hirb::Console
  end
end

add_on 'looksee' do
  name    'looksee'
  desc    'examine the method lookup path of objects'
  install 'gem install looksee'
  source  'http://github.com/oggy/looksee'
  usage   'lp <object>'

  init do
    require 'looksee/shortcuts'
  end
end

# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE] = :SIMPLE


