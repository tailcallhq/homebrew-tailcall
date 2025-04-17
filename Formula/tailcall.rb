class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.20/tailcall-x86_64-apple-darwin"
    sha256 "569a634c31dafe0d09abd317088074b8e7cd823056f808374635876bca60813c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.20/tailcall-aarch64-apple-darwin"
    sha256 "c09d35c1aec872fb85d867ad1e4017e771077ddbc3a1d1dbc81b5140455dec3c"
  end

  version "v1.5.20"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
