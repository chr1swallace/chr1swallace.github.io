GH_PAGES_DIR = "gweb-pub"

desc "Build Jekyll site and copy files to ~/gweb-pub"
task :build  => '_bibliography/references.bib' do
	  system "bundle exec jekyll build"
	    system "rm -r ../#{GH_PAGES_DIR}/*" unless Dir['../#{GH_PAGES_DIR}/*'].empty?
	      system "cp -r _site/* ../#{GH_PAGES_DIR}/"
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
  puts "to build in ~/gweb-pub, do `rake build`"
  system "bundle exec jekyll serve"
end
