{
  description = "www";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/ae815cee91b417be55d43781eb4b73ae1ecc396c";
  outputs = { self, nixpkgs }:
    let
        pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = [
          pkgs.nodejs_22
        ];
      };
  };
}
