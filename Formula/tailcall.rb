class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.35.0/tailcall-x86_64-apple-darwin"
    sha256 "3964e7e7f4f8d9e6afb330db557ffa312a1580f1822fdde31708d623a3dbe5a6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.35.0/tailcall-aarch64-apple-darwin"
    sha256 "9e760ca7e40d8be640a4870a4b96e361a4b31139c5711a90cc16661c734e2bb8"
  end

  version "v0.35.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
