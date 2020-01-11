class Kzenv < Formula
  KUBENVZ_VERSION = "v0.1".freeze

  desc "Installs Kzenv from github"
  homepage "https://github.com/lzecca78/kzenv"
  url "https://github.com/lzecca78/kzenv/archive/#{KUBENVZ_VERSION}.zip"
  version #{KUBENVZ_VERSION}
  sha256 'ed4aa9d91ddf4de3a7d0d850bea521d5b45a165a3951784a007ec65f71bf56c0'

  bottle :unneeded

  conflicts_with "kustomize", :because => "kzenv symlinks kustomize binaries"

  def install
    prefix.install ["bin", "libexec", "share"]
  end

  test do
    system bin/"kzenv", "list-remote"
  end
end
