class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.100.5/tailcall-x86_64-apple-darwin"
    sha256 "b015a18afcf53404d0485a1c2364c4893e698ad7860f40ace542b646918d635c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.100.5/tailcall-aarch64-apple-darwin"
    sha256 "13c20994adb316a48aaa85b2fd53ad36196ea2972e3719683439c7df84253763"
  end

  version "v0.100.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
