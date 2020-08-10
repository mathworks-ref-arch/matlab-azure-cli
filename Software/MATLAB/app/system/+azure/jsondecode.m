function S = jsondecode(str)
    % jsondecode - Clean string and perform jsondecode
    %
    % This function removes certain control characters and tries to
    % jsondecode the string after that.

    % Copyright 2019, The MathWorks Inc.

    % Cleans of some terminal noise before doing json decode
    startStr = char([27, 91, 51, 51, 109]); % [33mN
    endStr = char([27, 91, 48, 109]);       % [0m
    waitStr = char([27, 91, 75]); % [K
    rxStart = regexptranslate('escape', startStr);
    rxEnd   = regexptranslate('escape', endStr);
    rxWait  = regexptranslate('escape', waitStr);
    % Remove line comments
    str = regexprep(str, [rxStart, '[^\n]+', rxEnd], '');
    str = regexprep(str, rxEnd, '');

    str = regexprep(str, ['/?', rxWait, '[^\[\{\n]*'], '');
    str = regexprep(str, '/?\[K[^\[\{\n]*', '');

    % Remove progress lines, e.g.
    % Finished service principal creation[##################################]  100.0000%
    % The following line may be too permissive. Keep an eye on that.
    str = regexprep(str, '[\r\n]*[a-zA-Z]+[^\[\{]+\[#+\][^\r\n\{]+', '');
    % Remove warnings too
    str = regexprep(str, '[\r\n]*WARNING[^\r\n\{]+', '');
    str = regexprep(str, '[\r\n]*You have logged in[^\r\n\{]+', '');
    str = regexprep(str, '[\r\n]*The following tenants[^\[]+', '');
    str = regexprep(str, '[\r\n]*Changing .* to a valid URI[^\r\n\{]+', '');
    try
        S = jsondecode(str);
    catch ME
        fprintf(2, 'Problems decoding JSON string.\n%s\n', ME.message)
        S = str;
    end
end
