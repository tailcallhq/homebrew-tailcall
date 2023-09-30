class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.11.0/tailcall-x86_64-apple-darwin"
    sha256 "8928837101e904d40c86af601e3d04640d97744872d9aa60c87ee511b66ce973"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.11.0/tailcall-aarch64-apple-darwin"
    sha256 "d41d4c8385450d2c936707aa196fb372b300c75e71bb4528743aea2ac7d0b67e"
  end

  version "v0.11.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
