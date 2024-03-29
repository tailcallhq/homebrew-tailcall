class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.69.4/tailcall-x86_64-apple-darwin"
    sha256 "db9a5bcb9dc3570380c8a766f2ebaa3fc0651f056b40d35222c02ff9e08bb484"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.69.4/tailcall-aarch64-apple-darwin"
    sha256 "477dadcf383bdac3171c2f4bc09100cc591acb99e937d55ae287a2ac2d4b52ec"
  end

  version "v0.69.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
