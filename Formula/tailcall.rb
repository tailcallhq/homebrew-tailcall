class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.6/tailcall-x86_64-apple-darwin"
    sha256 "d6f8424adfd6ff1c7a044f9286cbecf6c6313b786cabd736c71a5b8d158988cf"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.6/tailcall-aarch64-apple-darwin"
    sha256 "d822d7c53e4bdad97f26fcc212ac688fc27bf715032ffd057b886b88efac57df"
  end

  version "v0.111.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
