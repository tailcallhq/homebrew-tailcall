class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.64.1/tailcall-x86_64-apple-darwin"
    sha256 "313280df6674257eeff0578c520295bbd46462701720df45d60205e6bf56e167"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.64.1/tailcall-aarch64-apple-darwin"
    sha256 "3da432882c2fda7348b8270028f2528faa3ca44b9083e3439a47f0f87a07bf12"
  end

  version "v0.64.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
