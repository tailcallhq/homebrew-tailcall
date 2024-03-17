class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.59.2/tailcall-x86_64-apple-darwin"
    sha256 "59edc394b1df243632489c107e737fa39b5f8481ce9801193d878e2c881f0671"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.59.2/tailcall-aarch64-apple-darwin"
    sha256 "3a4b183aa441e3e29b9762d865fae25b899fd2e73bc6d8554810143a5a044897"
  end

  version "v0.59.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
