class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.20/tailcall-x86_64-apple-darwin"
    sha256 "cea92c8b8223472420754a7ffaf80cd0839badf460bc082fc92eda98b02b7233"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.20/tailcall-aarch64-apple-darwin"
    sha256 "38099498af4ad7ab4c6bedb4ec821cbb21b4840273d06ee5a36e82986b6d1fb2"
  end

  version "v1.4.20"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
