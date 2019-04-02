function list_bookings()
	global bokningar

	timme = 1;
	dag = 1;

	fprintf("\n");

	while 1
		
		% fprintf(num2str(bokningar(dag,timme)));
		% fprintf(" ");

		if timme == 24
			if bokningar(dag,timme) == 1
				fprintf("\n");
				nummer_till_tid(timme);
			end;

			if dag == 7
				break;
			else
				timme = 1;
				dag = dag + 1;
				fprintf("\n");
			end;
		else
			if timme == 1
				weekday(dag); fprintf(":");
			end;
			
			if bokningar(dag,timme) == 1
				fprintf("\n");
				nummer_till_tid(timme);
			end;

			timme = timme + 1;
		end;
	end;

	fprintf("\n\n");
end