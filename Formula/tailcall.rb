class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.26/tailcall-x86_64-apple-darwin"
    sha256 "9fed9acb39656697d3a41c371fff375d29c5f38ab0276b9c1f9e402689648651"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.26/tailcall-aarch64-apple-darwin"
    sha256 "5b0581cffe302523c96c20e5a7e02263b9bb0d746cca993d934e8d8082980feb"
  end

  version "v0.99.26"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
