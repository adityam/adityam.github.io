with (import <nixpkgs> {});
mkShell {
  # From https://stackoverflow.com/questions/62287269/nix-shell-cannot-change-locale-warning
  LOCALE_ARCHIVE_2_27 = "${glibcLocales}/lib/locale/locale-archive";

  buildInputs = [
    quarto
  ];

  shellHook = ''
    # Do nothing
    '';
}
