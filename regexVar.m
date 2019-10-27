clc
close

string = input('Write a variable name: ', 's');
regex = '[[a-z][A-Z]][[a-z][A-Z][0-9]]*';
match = regexp(string, regex, 'match');

if strcmp(match, string)
    fprintf('%s is a valid variable name', string);
else
    fprintf('%s is not a valid variable name', string);
end