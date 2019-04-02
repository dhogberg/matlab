function visa_meny(alternativ)
	for i = 1:length(alternativ)
		fprintf('%d. %s\n', i, alternativ{i});
	end;
end