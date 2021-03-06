{stdenv, fetchurl, pkgconfig, lua5, curl, quvi_scripts, libproxy, libgcrypt}:

stdenv.mkDerivation rec {
  name = "libquvi-${version}";
  version="0.9.4";

  src = fetchurl {
    url = "mirror://sourceforge/quvi/libquvi-${version}.tar.xz";
    sha256 = "1cl1kbgxl1jnx2nwx4z90l0lap09lnnj1fg7hxsxk3m6aj4y4grd";
  };

  buildInputs = [ pkgconfig lua5 curl quvi_scripts libproxy libgcrypt ];

  meta = { 
    description = "Web video downloader";
    homepage = http://quvi.sf.net;
    license = "LGPLv2.1+";
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.mornfall ]; 
  };
}

