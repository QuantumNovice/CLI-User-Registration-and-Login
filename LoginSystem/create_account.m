function [USERS, PASSWDS] = create_account(USERS, PASSWDS)
clc
disp("Account Creation Menu")
disp('=====================')
name = input('Name <<< ', 's');
passwd = input('Passwd <<< ', 's');



if ~ismember(name, USERS)
  index = length(USERS) + 1;
  USERS(index) = name;
  PASSWDS(index) = string(hash(char(passwd), 'SHA-512'));
  disp('Account Successfully Created.')
else
    disp('User Already Exists.')
end
disp(newline + "Press return to continue...")
input('');
end
