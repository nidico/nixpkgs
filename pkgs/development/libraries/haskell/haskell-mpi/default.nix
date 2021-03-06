# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, c2hs, cereal, extensibleExceptions, mpi }:

cabal.mkDerivation (self: {
  pname = "haskell-mpi";
  version = "1.2.1";
  sha256 = "1d3xlwz3sx1m7iyf67cfr1vsp3w4iz9mmqvmvdiblj4569hxblr5";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ cereal extensibleExceptions ];
  buildTools = [ c2hs ];
  extraLibraries = [ mpi ];
  meta = {
    homepage = "http://github.com/bjpop/haskell-mpi";
    description = "Distributed parallel programming in Haskell using MPI";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
