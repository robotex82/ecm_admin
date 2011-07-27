# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.authors = "Roberto Vasquez Angel"
  s.name = "ecm_admin"
  s.summary = "Insert EcmAdmin summary."
  s.description = "Insert EcmAdmin description."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"
  s.add_dependency "ecm_frontend"
  s.add_dependency "devise"
  s.add_dependency "rails_admin"
end
