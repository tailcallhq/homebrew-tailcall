class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.7/tailcall-x86_64-apple-darwin"
    sha256 "1eea94d4d4c17d2fd0adb22173c06bf972e82f27885f0b22b63cef890cb7130a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.7/tailcall-aarch64-apple-darwin"
    sha256 "86baad4279ecda58ec23e1e5142e347d6ab95230d29b67323aea49ec02ab86f7"
  end

  version "v0.37.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
