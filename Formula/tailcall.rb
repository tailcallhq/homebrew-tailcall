class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.1/tailcall-x86_64-apple-darwin"
    sha256 "2fe4c900adc8a3bfad4f5f93ea2bb3f7657017ac6328d68c3777ca97b96dd31c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.1/tailcall-aarch64-apple-darwin"
    sha256 "15c317d13431d85730fdd5839057f792167bf9b8bff09dc31510f06525622eaa"
  end

  version "v0.91.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
