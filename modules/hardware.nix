# Hardware configuration
{ config, pkgs, lib, ... }:

{
  # Printing
  services.printing.enable = true;

  # Audio with PipeWire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    # Uncomment to enable JACK support
    # jack.enable = true;
  };

  # Fix for keyboard backlight - remove if not needed
  systemd.services.disable-keyboard-backlight = {
    enable = true;
    description = "Disable keyboard backlight on resume";
    serviceConfig = {
      Type = "oneshot";
    };
    script = ''
      /run/current-system/sw/bin/echo 0 > "/sys/devices/pci0000:00/0000:00:14.3/PNP0C09:00/VPC2004:00/leds/platform::kbd_backlight/brightness"
    '';
    wantedBy = [ "sleep.target" "hibernate.target" "hybrid-sleep.target" ];
    after = [ "sleep.target" "hibernate.target" "hybrid-sleep.target" ];
  };

}
