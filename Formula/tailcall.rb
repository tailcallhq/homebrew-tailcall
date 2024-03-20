class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.64.2/tailcall-x86_64-apple-darwin"
    sha256 "f413a2dfe631eae6e784e49f95dd62f5c4e72180ceabba4dff78fe65702b2620"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.64.2/tailcall-aarch64-apple-darwin"
    sha256 "b4dc4aab2205b2b69411730fb5cc121e44ee9ab6a27a6b9392179fc49077ca25"
  end

  version "v0.64.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
