function make_booking()
	global bokningar

	fprintf("\n");
	prompt = "Mata in dag: ";
	dag = str2double(input(prompt, 's'));
	prompt = "Mata in timme: ";
	timme = str2double(input(prompt, 's')) + 1;
	
	if bokningar(dag,timme) == 0
		bokningar(dag,timme) = 1;
		fprintf("Ny bokning gjord ");
		weekday(dag);
		fprintf(" kl ");
		nummer_till_tid(timme);
		fprintf("\n\n");
	else
		fprintf("Accepteras ej! Krockar med annan bokning. \n\n");
	end
end