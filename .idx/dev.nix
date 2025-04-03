{ pkgs, ... }: {

  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.clang
    pkgs.libllvm
  ];

  # Sets environment variables in the workspace
  env = {
    # SOME_ENV_VAR = "hello";
  };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
    # "angular.ng-template"
  ];

  # Enable previews and customize configuration
  idx.previews = {
  };
}