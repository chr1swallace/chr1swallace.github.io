GH_PAGES_DIR = "gitweb"

desc "Build Jekyll site and copy files to ~/gitweb"
task :build  => '_bibliography/references.bib' do
	  system "jekyll build"
	    system "rm -r ../#{GH_PAGES_DIR}/*" unless Dir['../#{GH_PAGES_DIR}/*'].empty?
	      system "cp -r _site/* ../#{GH_PAGES_DIR}/"
end

desc "update bibliography"
task :bib => '_bibliography/references.bib' do
  puts "built input bib from ../texmf/bibtex/bib/cp.bib"
end

file '_bibliography/references.bib' => '../texmf/bibtex/bib/cp.bib' do
  system "./makebib.sh"
end

desc "build and serve locally, future changes will automatically result in rebuild"
task :default do
  puts "to build in ~/gitweb, do `rake build`"
  system "jekyll serve"
end
