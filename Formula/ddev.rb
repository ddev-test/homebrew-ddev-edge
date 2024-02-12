# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev/ddev"
  version "1.22.8-pr5759-deb-rpm-binaries"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.8-pr5759-deb-rpm-binaries/ddev_macos-arm64.v1.22.8-pr5759-deb-rpm-binaries.tar.gz"
      sha256 "6db8c3a426ff2a2bac977126849569902d53c519e13d538919153dbf67ddc9b0"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.8-pr5759-deb-rpm-binaries/ddev_macos-amd64.v1.22.8-pr5759-deb-rpm-binaries.tar.gz"
      sha256 "d8b9bc5ab70ba43ad448074fd7a799c505782ecbae49799637a8a96542f19bf0"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.8-pr5759-deb-rpm-binaries/ddev_linux-amd64.v1.22.8-pr5759-deb-rpm-binaries.tar.gz"
      sha256 "88976554858f824a796c2f340c3b6dc02658c09cba71c20d64126547b81f0d90"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.8-pr5759-deb-rpm-binaries/ddev_linux-arm64.v1.22.8-pr5759-deb-rpm-binaries.tar.gz"
      sha256 "9c1083f73d829a1d9f8195f7f3e4d459a5ff9d73ec710944864919760eae4d40"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
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
