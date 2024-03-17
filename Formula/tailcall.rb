class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.62.1/tailcall-x86_64-apple-darwin"
    sha256 "4b195e3fb082b6747f3bb7b0fb359689bde69dc5370ce153c88432c2b1316999"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.62.1/tailcall-aarch64-apple-darwin"
    sha256 "b5131f57a8fea1cbd286e0a146342738c6494cab37c432701e81e1c71d9a9d56"
  end

  version "v0.62.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
