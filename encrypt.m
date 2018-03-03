original = 'This is my top secret message!';

encode_cipher = randperm(length(original));

encoded = original(encode_cipher);

temp = [encode_cipher; 1:length(original)]';

temp = sortrows(temp,1);

decode_cipher = temp(:,2);

decoded = encoded(decode_cipher);

disp(['Original :', original]);
disp(['Encoded :', encoded]);
disp(['Decoded :', decoded]);
disp(['Decoded correctly (1 true, 0 false): ', num2str(strcmp(original,decoded))]);