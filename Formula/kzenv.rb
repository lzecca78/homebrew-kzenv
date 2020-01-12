class Kzenv < Formula
  KUBENVZ_VERSION = "v0.3".freeze

  desc "Installs Kzenv from github"
  homepage "https://github.com/lzecca78/kzenv"
  url "https://github.com/lzecca78/kzenv/archive/#{KUBENVZ_VERSION}.zip"
  version #{KUBENVZ_VERSION}
  sha256 'a9e5d7cd14d64cf9ac1f2a92e5cce5c6db3d3f624ae5f01e6f661736cd48d2a9'

  bottle :unneeded

  conflicts_with "kustomize", :because => "kzenv symlinks kustomize binaries"

  def install
    prefix.install ["bin", "libexec","lib"]
  end

  test do
    system bin/"kzenv", "list-remote"
  end
end
