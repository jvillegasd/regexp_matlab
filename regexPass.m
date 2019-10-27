clc
close

string = input('Write a password: ', 's');
length = '.{8,}';
special_chars = '[\ \!\"\#\$\%\&\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~\¿\|]';
at_least_one_lc = '[a-z]';
at_least_one_up = '[A-Z]';
digits = '[0-9]';
password_criteria = {length, special_chars, at_least_one_lc, at_least_one_up, digits};
match = regexp(string, password_criteria, 'match', 'once');

if ~any(cellfun(@isempty, match))
    fprintf('%s is a valid password.', string);
else
    fprintf('%s is not a valid password', string);
end