#!/bin/bash

gsettings set org.gnome.desktop.background primary-color '#3464A2'
gsettings set org.gnome.desktop.background secondary-color '#3464A2'
gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background draw-background false
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/bitcurator/resources/images/BitCuratorEnv3Logo300px.png'
gsettings set org.gnome.desktop.background draw-background true
gsettings set org.gnome.desktop.background show-desktop-icons true
gsettings set org.gnome.desktop.media-handling automount false
gsettings set org.gnome.desktop.media-handling automount-open false
if [[ $(lsb_release -c -s) == bionic ]]; then
  gsettings set org.gnome.nautilus.desktop home-icon-visible true
  gsettings set org.gnome.nautilus.desktop trash-icon-visible true
  gsettings set org.gnome.nautilus.desktop network-icon-visible true
  gsettings set org.gnome.nautilus.desktop volumes-visible true
  trust=yes
elif [[ $(lsb_release -c -s) == focal ]]; then
  gsettings set org.gnome.shell.extensions.desktop-icons show-trash true
  gsettings set org.gnome.shell.extensions.desktop-icons show-home true
  gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true
  trust=true
fi
gio set /home/$(whoami)/Desktop/Additional\ Tools/antiword.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/bcreport.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/bless.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/clamtk.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/fido.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/fiwalk.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/ghex.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/gtkhash\:gtkhash.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/hardinfo.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/hashrat.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/hfs.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/identfile.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/nwipe.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/readpst.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Additional\ Tools/vlc.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/BEViewer.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/bcdat.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/bcgui.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/bcmnt.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/brunnhilde.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/disktype.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/fiwalk.desktop "metadata::trusted" $trust
#gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/hashdb.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/md5deep.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/nsrllookup.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/photorec.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/regripper.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/sdhash.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/ssdeep.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Forensics\ and\ Reporting/testdisk.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/brasero.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/cdrdao.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/clonezilla.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/dcfldd.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/dd.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/ddrescue.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/dumpfloppy.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/ewfacquire.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Imaging\ and\ Recovery/guymager.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Packaging\ and\ Transfer/bagit-python.desktop "metadata::trusted" $trust
gio set /home/$(whoami)/Desktop/Packaging\ and\ Transfer/grsync.desktop "metadata::trusted" $trust
rm /home/$(whoami)/.config/autostart/bitcurator-theme.desktop
