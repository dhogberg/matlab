function nummer_till_tid(int)
	if int <= 10
		fprintf("0");
		fprintf(num2str(int-1));
		fprintf(":");
		fprintf("00");
		fprintf(" - ");
		if int == 10
			fprintf(num2str(int));
		else
			fprintf("0");
			fprintf(num2str(int));
		end;
		fprintf(":");
		fprintf("00");
	else
		fprintf(num2str(int-1));
		fprintf(":");
		fprintf("00");
		fprintf(" - ");
		fprintf(num2str(int));
		fprintf(":");
		fprintf("00");
	end;
end