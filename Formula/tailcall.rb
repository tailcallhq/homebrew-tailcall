class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.3/tailcall-x86_64-apple-darwin"
    sha256 "a701a25a96ddd47f087309ccf68e94da0530b43be7a5a9752a6b324361231dca"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.3/tailcall-aarch64-apple-darwin"
    sha256 "4b7f8b69d94d1b552119327b47167da7dcdbb0ac54db4116640a099a3d29a6f9"
  end

  version "v0.85.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
