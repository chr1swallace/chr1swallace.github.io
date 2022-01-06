GH_PAGES_DIR = "gweb-pub"
require 'jekyll'
require 'jekyll-compose'
require "jekyll-twitter-plugin"
require 'jekyll-scholar'

CONF = Jekyll.configuration({
  'source'      => '.',
  'destination' => '../gweb-pub'
})


desc "Build Jekyll site and copy files to ~/gweb-pub"
task :build  => '_bibliography/references.bib' do
	  system "bundle exec jekyll build"
	    system "rm -r #{CONF['destination']}/*" unless Dir["#{CONF['destination']}/*"].empty?
	    system "cp -r _site/* #{CONF['destination']}/"
      puts "to push remote, do:
rake push"
end

desc "Push to remote - be careful!"
task :push do
  system "cd #{CONF['destination']} && git add * && git commit -a -m 'update' && git push"
end

desc "update bibliography"
task :bib => '_bibliography/references.bib' do
  puts "built input bib from ~/Dropbox/Words/cv/me.bib"
end

file '_bibliography/references.bib' => '/home/chrisw/Dropbox/Words/cv/me.bib' do
  system "./makebib.sh"
end

desc "build and serve locally, future changes will automatically result in rebuild"
task :default do
  puts "to build in ~/gweb-pub, do
rake build"
  system "bundle exec jekyll serve"
end

desc "rake tweet url='https://twitter.com/...' title='mytitle'"
task :tweet do
  ## check for ENV
  abort("rake tweet url='https://twitter.com/...' title='mytitle'") if
    ( ENV['url'].nil? || ENV['title'].nil? )
  # Jekyll::Commands.Post.new(ENV['title'])
  # Jekyll::Commands.Post.new(ENV['title'])
  name = Jekyll::Utils.slugify ENV['title']
  stamp = Time.now.strftime "%Y-%m-%d"
  time_stamp = Time.now.strftime "%Y-%m-%d  %H:%M %z"
  pub_pre=Time.now.strftime "blog/%Y/%m/"
  pub_post=".html"
  src_pre="_posts/#{stamp}-"
  src_post=".md"
  src_filename="#{src_pre}#{name}#{src_post}"
  pub_filename="#{pub_pre}#{name}#{pub_post}"
  content=%Q(---
layout: post
title: #{ENV['title']}
date: #{time_stamp}
---
{% twitter #{ENV['url']} %}
)
  File.write(src_filename, content)
  # Jekyll::Site.new(CONF).process
  site=Jekyll::Site.new(CONF)
  site.process
  puts "to view, do
rake"
end
