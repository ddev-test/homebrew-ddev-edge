# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev/ddev"
  version "1.22.0-rc1"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-rc1/ddev_macos-arm64.v1.22.0-rc1.tar.gz"
      sha256 "92d0949bf60e7d2ae9560a77170bbfbad369838859e960e6c30969993da33e81"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-rc1/ddev_macos-amd64.v1.22.0-rc1.tar.gz"
      sha256 "51c6151de467599129f73d7edd04188dd981bcbeb24470b93210aec0478f70ab"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-rc1/ddev_linux-amd64.v1.22.0-rc1.tar.gz"
      sha256 "931f5232cd9e20f664bd57bdb49324bec30bacfa38823c8af60029bf2202fcc5"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddev/ddev/releases/download/v1.22.0-rc1/ddev_linux-arm64.v1.22.0-rc1.tar.gz"
      sha256 "bd613e25c50193d576ba9adf47bf23c2acb2a622e60e8f3f7e8f94cf9fc4ee5d"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  head "https://github.com/ddev/ddev.git", branch: "master"
  depends_on "go" => :build
  depends_on "make" => :build

  test do
    system "#{bin}/ddev --version"
  end
end
