class Kzenv < Formula
  KUBENVZ_VERSION = "v0.3".freeze

  desc "Installs Kzenv from github"
  homepage "https://github.com/lzecca78/kzenv"
  url "https://github.com/lzecca78/kzenv/archive/#{KUBENVZ_VERSION}.zip"
  version #{KUBENVZ_VERSION}
  sha256 '46a3e75fcd17473c675e38a62e9ed584bb4cdaff1d646a3ddb06585fe4e03f75'

  bottle :unneeded

  conflicts_with "kustomize", :because => "kzenv symlinks kustomize binaries"

  def install
    prefix.install ["bin", "libexec","lib"]
  end

  test do
    system bin/"kzenv", "list-remote"
  end
end
