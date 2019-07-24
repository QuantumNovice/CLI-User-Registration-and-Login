function login(USERS, PASSWDS)
clc
disp('Login Menu')
disp('===========')

user = input('Username <<< ', 's');
passwd = input('Password <<< ', 's');

if ismember(user, USERS)
    index = find(USERS == user);
    if string(hash(char(passwd), 'SHA-512')) == PASSWDS(index)
        clc
        disp('Login Successful')
        disp('================')
        disp("Hi "+ user + "!")
        disp('The secret messages is 3523twdgfw45245')
    else
        disp('Wrong Password')
    end
else
    disp('User not found')
end

disp(newline + "Press return to continue...")
input('');
end