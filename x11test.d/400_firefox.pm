use base "basetest";
use bmwqemu;

sub run()
{
	my $self=shift;
	mouse_hide(1);
	x11_start_program("firefox");
	$self->check_screen;
	if($ENV{UPGRADE}) { sendkey("alt-d");waitidle; } # dont check for updated plugins
	if(0) { # 4.0b10 changed default value - b12 has showQuitWarning
		sendkey "ctrl-t"; sleep 1;
		sendautotype "about:config\n"; sleep 1;
		sendkey "ret"; waitidle;
		sendautotype "showQuit\n\t"; sleep 1;
		sendkey "ret"; waitidle;
		sendkey "ctrl-w"; sleep 1;
	}
	# just leave it here, then don't need modify test-firefox-2 and test-firefox-3
	# tag in all related needles
	$self->check_screen;
	sendkey "alt-h"; sleep 2;	# Help
	sendkey "a"; sleep 2;		# About
	$self->check_screen;
	sendkey "alt-f4"; sleep 2;	# close About
	sendkey "alt-f4"; sleep 2;
	sendkey "ret"; # confirm "save&quit"
}

1;
