class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.75.2/tailcall-x86_64-apple-darwin"
    sha256 "568c21d7fcc68f90bc92bbc5eecad37a3dd813c74e232c73a6c27c264e4fadfc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.75.2/tailcall-aarch64-apple-darwin"
    sha256 "baab1f50072a358016e29239d8635be958b411d0a2b488731c4b09842b00a5f5"
  end

  version "v0.75.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
