class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.12.0/tailcall-x86_64-apple-darwin"
    sha256 "a54e41c5df1efae98cd6c3c8b39a9e3b4e7ed4ddacf743aeae2d6d27864dc07e"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.12.0/tailcall-aarch64-apple-darwin"
    sha256 "d345aa9b4a4de6f4dd1fad811597a6e6251e1de1f8ad921667a12b953408a5aa"
  end

  version "v0.12.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
