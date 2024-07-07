class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.8/tailcall-x86_64-apple-darwin"
    sha256 "dec00645a2e214c17b480782f3e4c8dc64dde20e2ef64f687ad0a47ca8982f04"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.8/tailcall-aarch64-apple-darwin"
    sha256 "a57cca412b5d4a2e50e3d18923688625203a3f784295f0880d8574aaf8d71215"
  end

  version "v0.95.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
