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
  sh "rspec -I. spec/pregunta_spec.rb"
  sh "rspec -I. spec/verdaderofalso_spec.rb"
  sh "rspec -I. spec/ListaEnlazada_spec.rb"
  sh "rspec -I. spec/Nodo_spec.rb"
  sh "rspec -I. spec/examen_spec.rb"
  sh "rspec -I. spec/quiz_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
sh "rspec -I. spec/pract05_spec.rb --format documentation"
end

desc "Ejecutar las espectativas de verdaderofalso_spec"
task :verd do
  sh "rspec -I. spec/verdaderofalso_spec.rb"
end

desc "Ejecutar las espectativas de examen_spec"
task :exmn do
  sh "rspec -I. spec/examen_spec.rb"
end


