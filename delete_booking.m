function delete_booking()
	global bokningar

	fprintf("\n");
	prompt = "Mata in dag: ";
	dag = str2double(input(prompt, 's'));
	prompt = "Mata in timme: ";
	timme = str2double(input(prompt, 's')) + 1;
	
	bokningar(dag,timme) = 0;
	fprintf("Bokning borttagen.\n\n");
end