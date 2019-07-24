USERS = string([]);
PASSWDS = string([]);

running = 1
while running
    clc
    disp('Login System')
    disp('============')
    disp('1) Create Account')
    disp('2) Login')
    disp('3) Exit')
    choice = input('Choice <<< ');

    switch choice
      case 1
        [USERS, PASSWDS] = create_account(USERS, PASSWDS);
      case 2
        login(USERS, PASSWDS);
      case 3
        disp(newline + "Exiting..." )
        running = 0;
    end
end

