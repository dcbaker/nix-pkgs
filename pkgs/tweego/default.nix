{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "tweego";
  version = "2.1.1";

  src = fetchFromGitHub {
    owner = "tmedwards";
    repo = pname;
    rev = "v${version}";
    sha256 = "130rcphw7icq2rx4wg0c380wwgkwx7d5wd1v2vp3wkvj42ckjkrc";
  };

  vendorSha256 = "0grmdi67wsfdy524sqyvn9zk8vnsgrxcy93clabd1lpmxv643i8v";

  meta = with  lib; {
    description = "Tweego is a free (gratis and libre) command line compiler for Twine/Twee story formats, written in Go.";
    homepage = "https://www.motoslave.net/tweego/";
    license = licenses.bsd2;
  };
}

