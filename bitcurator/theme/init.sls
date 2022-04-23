include:
  - bitcurator.packages.gnome-sushi
  - bitcurator.packages.gnome-system-tools
  - bitcurator.packages.gnome-tweaks
  - bitcurator.packages.nautilus-script-audio-convert
  - bitcurator.packages.nautilus-scripts-manager
  - bitcurator.theme.bitcurator-theme
  - bitcurator.theme.desktop-folders
  - bitcurator.theme.xhost
  - bitcurator.theme.terminal
  - bitcurator.theme.mediasymlink
  - bitcurator.packages.open-vm-tools-desktop
  - bitcurator.theme.cleanup

bitcurator-theme:
  test.nop:
    - name: bitcurator-theme
    - require:
      - sls: bitcurator.packages.gnome-sushi
      - sls: bitcurator.packages.gnome-system-tools
      - sls: bitcurator.packages.gnome-tweaks
      - sls: bitcurator.packages.nautilus-script-audio-convert
      - sls: bitcurator.packages.nautilus-scripts-manager
      - sls: bitcurator.theme.bitcurator-theme
      - sls: bitcurator.theme.desktop-folders
      - sls: bitcurator.theme.xhost
      - sls: bitcurator.theme.terminal
      - sls: bitcurator.theme.mediasymlink
      - sls: bitcurator.packages.open-vm-tools-desktop
      - sls: bitcurator.theme.cleanup
