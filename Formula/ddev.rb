# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev/ddev"
  version "1.22.10-aaa3"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.10-aaa3/ddev_macos-amd64.v1.22.10-aaa3.tar.gz"
      sha256 "5963faea69fddf5f90dda7aae287cbd55153d9a52cb8f2e967933c8ad47342b5"

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
    if Hardware::CPU.arm?
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.10-aaa3/ddev_macos-arm64.v1.22.10-aaa3.tar.gz"
      sha256 "659ca490527477beadbe7c7e7659c2002eb41d948435a8885cdc3101e6ab9f56"

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
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.10-aaa3/ddev_linux-amd64.v1.22.10-aaa3.tar.gz"
      sha256 "15704cbb151d342a3f0a8e8adc41ea11d8909be764aa4cffe0f230ebce4bcaf1"

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
      url "https://github.com/ddev-test/ddev/releases/download/v1.22.10-aaa3/ddev_linux-arm64.v1.22.10-aaa3.tar.gz"
      sha256 "d7d6c93d2aa933253f39a7bc176c83e1f27b0ccb7e60e4ecd8f49b1b0db6bbab"

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
