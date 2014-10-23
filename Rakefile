require "bundler/gem_tasks"
task :default => :spec
desc "Ejecutar las espectativas de la clase Point"
task :spec do
sh "rspec -I. spec/pract5_spec.rb"
end
desc "Ejecutar con documentacion"
task :doc do
sh "rspec -I. spec/pract5_spec.rb --format documentation"
end
