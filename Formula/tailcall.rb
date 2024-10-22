class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.1/tailcall-x86_64-apple-darwin"
    sha256 "1cff4931f46edaa9b12091091a589fcbbcf162a94be66cf89c2a7e12d0f8fd73"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.1/tailcall-aarch64-apple-darwin"
    sha256 "e2402db3468ebd8c96e42ac6ebf92069b91e68b41ec15b3c6ac815fbea78c717"
  end

  version "v0.122.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
