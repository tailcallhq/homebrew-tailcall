class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.4/tailcall-x86_64-apple-darwin"
    sha256 "ba9aeb7f7f43ef20a0d458dc1b86588c65bd68c2f8b949ef56554d2f168ff0b6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.4/tailcall-aarch64-apple-darwin"
    sha256 "c00587f99e62d0d0b89e0e38629447228fab6ae020f2111cc09ece8ff7030b02"
  end

  version "v1.6.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
