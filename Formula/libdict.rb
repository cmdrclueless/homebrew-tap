require "formula"

class Libdict < Formula
  homepage "http://github.com/fmela/libdict"
  url      "https://github.com/cmdrclueless/libdict", :using => :git, :branch => 'autoconf'
  version  "20141120"

  def install
    system "autoreconf -i"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end

  depends_on :autoconf => :build
  depends_on :automake => :build
  depends_on :libtool  => :build
end
