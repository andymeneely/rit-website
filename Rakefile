require 'fileutils'

task default: :build

task publish: [:build, :copy]

task :build do
  system('bundle exec jekyll build')
end

task :copy do
  FileUtils.cp_r '_site/.', 'z:/public_html'
end