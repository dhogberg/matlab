function save_bookings_to_file()
	global bokningar

	fil = fopen('bokningar.txt','w');

	timme = 1;
	dag = 1;

	fprintf("\n");

	while 1
		
		fprintf(fil, num2str(bokningar(dag,timme)));
		fprintf(fil, " ");

		if timme == 24
			if dag == 7
				break;
			else
				timme = 1;
				dag = dag + 1;
				fprintf(fil, "\n");
			end;
		else	
			timme = timme + 1;
		end;
	end;

	fclose(fil);

	fprintf("Bokningar sparade till fil.");
	fprintf("\n\n");

end