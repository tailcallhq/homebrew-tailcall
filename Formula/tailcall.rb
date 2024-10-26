class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.123.0/tailcall-x86_64-apple-darwin"
    sha256 "3befef36bf9a99ef0489f03746d521338d8452ae1277872562ea8eb45fedd421"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.123.0/tailcall-aarch64-apple-darwin"
    sha256 "68d1787dc53d4664a64ebde12f4a293fd7c7ec258576f59e9240685046f361f2"
  end

  version "v0.123.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
