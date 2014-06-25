require './lib/web_grep'

Gem::Specification.new 'web_grep' do |s|
  s.version     = '0.0.0' # WebGrep::VERSION
  s.homepage    = 'http://rubygems.org/gems/web_grep'
  s.date        = '2014-06-25'
  s.summary     = 'Web grep is a grep for web pages'
  s.description = 'Web grep is a grep for web pages'
  s.author      = 'Vladislav Petrov'
  s.email       = 'electronicchest@gmail.com'
  s.license     = 'MIT'
  s.platform    = Gem::Platform::RUBY
  s.post_install_message = 'Thanks for installing!'

  s.required_ruby_version     = '>= 2.1.2'
  s.required_rubygems_version = '>= 2.3.0'

  s.files         = `git ls-files`.split
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split
  s.executables   = `git ls-files -- bin/*`.split.map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end