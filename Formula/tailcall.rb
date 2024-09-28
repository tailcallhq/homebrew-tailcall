class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.115.3/tailcall-x86_64-apple-darwin"
    sha256 "ae872b3f441c1d6af35f85a4280cadfe115cee41407b0d73a8552f9c799948f3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.115.3/tailcall-aarch64-apple-darwin"
    sha256 "0a406668483c3fd1cd93a9b3949188c5ec8d079d0b30b0f3c3fd697e0a9ff617"
  end

  version "v0.115.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
