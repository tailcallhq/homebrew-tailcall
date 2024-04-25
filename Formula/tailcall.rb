class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.3/tailcall-x86_64-apple-darwin"
    sha256 "44b817b3d2c338316c38a73b8ede647af71116dffc104a43d9158e72243ce443"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.3/tailcall-aarch64-apple-darwin"
    sha256 "476ab7474c09ac4277ffd31d2156ac177534a4dc2d575a565f9f0768f12815f4"
  end

  version "v0.78.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
