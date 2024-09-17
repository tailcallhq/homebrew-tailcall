class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.20/tailcall-x86_64-apple-darwin"
    sha256 "7883d2dee2282387da91692c9582c579c6baea62fc9bd5b080395440555fa21f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.20/tailcall-aarch64-apple-darwin"
    sha256 "51a0db27225771acaafbfcf3e0e791d4e1dbdf5a1ad32205235b13c9dc594eb3"
  end

  version "v0.111.20"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
