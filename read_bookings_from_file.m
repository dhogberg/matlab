function read_bookings_from_file()
	global bokningar

	temp_bokningar_chars = fileread("bokningar.txt");

	timme = 1;
	dag = 1;
	charnum = 1;

	while 1
		if timme == 24
			if dag == 7
				bokningar(dag,timme) = str2double(temp_bokningar_chars(charnum));
				break;
			else
				bokningar(dag,timme) = str2double(temp_bokningar_chars(charnum));
				timme = 1;
				charnum = charnum + 3;
				dag = dag + 1;
			end;
		else
			bokningar(dag,timme) = str2double(temp_bokningar_chars(charnum));
			timme = timme + 1;
			charnum = charnum + 2;
		end;
	end;
	
	fprintf("\nBokningar laddade från fil.\n\n");
end