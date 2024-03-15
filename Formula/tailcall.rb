class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.56.4/tailcall-x86_64-apple-darwin"
    sha256 "f4445b49939e977fc2633fa539b1e069968036229302efbd692442948fddfe82"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.56.4/tailcall-aarch64-apple-darwin"
    sha256 "2a061cc3d9ac5a182f05eed0eabde5117e203be4f0a80ac8131fa50f1d1abac0"
  end

  version "v0.56.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
