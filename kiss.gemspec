Gem::Specification.new do |spec|
    spec.name    = "kiss"
    spec.version = "1.0.0"
    spec.authors = [ "Alan Tai" ]
    spec.email   = [ "ayltai@gmail.com" ]

    spec.summary  = "A minimalist Jekyll theme for personal blogs with KISS principle applied. Made with ❤"
    spec.homepage = "https://github.com/ayltai/kiss"
    spec.license  = "MIT"

    spec.files = Dir.glob("**/{*,.*}").select do |f|
        f.match(%r{^(assets/(css)|_(includes|layouts)/|(404.html|LICENSE))}i)
    end

    spec.required_ruby_version = '>= 2.4.0'

    spec.add_runtime_dependency "github-pages", ">= 198"

    spec.add_development_dependency "bundler", ">= 2.0.0"
    spec.add_development_dependency "rake",    ">= 12.3.0"
end
