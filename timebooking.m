bokningar = [
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %  måndag 00-23
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %  tisdag 00-23
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %  onsdag 00-23
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; % torsdag 00-23
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %  fredag 00-23
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %  lördag 00-23
	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %  söndag 00-23
];

global bokningar

disp('Välkommen till mötesbokningsprogrammet!');
prompt = 'Välj ett alternativ: ';

while 1

	meny({
		'Lista bokningar',
		'Gör ny bokning',
		'Avboka',
		'Spara bokningar till fil',
		'Ladda bokningar från fil'
	});

	valt_alternativ = str2double(input(prompt, 's'));

	if valt_alternativ == 1
		list_bookings;
	elseif valt_alternativ == 2
		make_booking;
	elseif valt_alternativ == 3
		delete_booking;
	elseif valt_alternativ == 4
		save_bookings_to_file;
	elseif valt_alternativ == 5
		read_bookings_from_file;
	else
		fprintf('\nSkriv in en siffra mellan 1 och 5\n\n');
	end;
end