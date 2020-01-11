class Kzenv < Formula
  KUBENVZ_VERSION = "v0.1".freeze

  desc "Installs Kzenv from github"
  homepage "https://github.com/lzecca78/kzenv"
  url "https://github.com/lzecca78/kzenv/archive/#{KUBENVZ_VERSION}.zip"
  version #{KUBENVZ_VERSION}
  sha256 'e3911129f239bfafac42debea0cf4e836087154232773052eb176fa404439982'

  bottle :unneeded

  conflicts_with "kustomize", :because => "kzenv symlinks kustomize binaries"

  def install
    prefix.install ["bin", "libexec","lib"]
  end

  test do
    system bin/"kzenv", "list-remote"
  end
end
