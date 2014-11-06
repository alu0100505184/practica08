$:.unshift File.dirname(__FILE__) + 'lib'
require "bundler/gem_tasks"
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec


#require "bundler/gem_tasks"
#task :default => :spec
desc "Ejecutar las espectativas de la clase Pregunta"
task :spec do
sh "rspec -I. spec/pract05_spec.rb"
end
desc "Ejecutar con documentacion"
task :doc do
sh "rspec -I. spec/pract05_spec.rb --format documentation"
end

