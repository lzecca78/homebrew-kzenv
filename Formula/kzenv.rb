class Kzenv < Formula
  KUBENVZ_VERSION = "v0.4".freeze

  desc "Installs Kzenv from github"
  homepage "https://github.com/lzecca78/kzenv"
  url "https://github.com/lzecca78/kzenv/archive/#{KUBENVZ_VERSION}.zip"
  version #{KUBENVZ_VERSION}

  bottle :unneeded

  conflicts_with "kustomize", :because => "kzenv symlinks kustomize binaries"

  def install
    prefix.install ["bin", "libexec","lib"]
  end

  test do
    system bin/"kzenv", "list-remote"
  end
end
