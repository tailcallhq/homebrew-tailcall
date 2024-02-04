class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.29.1/tailcall-x86_64-apple-darwin"
    sha256 "d00a0ec877b62cd519ace5d515543f48e95048af13da9b54b65366469a2a90ee"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.29.1/tailcall-aarch64-apple-darwin"
    sha256 "16c1904f861c050380157c89fbcfe45252921b7d8574e5cc00ca860cdf6eda9f"
  end

  version "v0.29.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
