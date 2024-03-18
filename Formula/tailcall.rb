class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.62.5/tailcall-x86_64-apple-darwin"
    sha256 "be4e777346f723355c5cfaee65a256802227e0e3f115b55b41b98c2aff40aac1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.62.5/tailcall-aarch64-apple-darwin"
    sha256 "7b139c8a8b0436cd3d3308dbefa6f94d8f2fac1ccc1d7e5229c32edeea78356c"
  end

  version "v0.62.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
