function str = removeCtrlChars(str)
    % removeCtrlChars - Remove certain 'non-text' characters
    
    % Copyright 2019, The MathWorks Inc.
    rx = regexptranslate('escape', char([27,91]));
    rx = ['(', rx, '[0-9]+m)'];
    str = regexprep(str, rx, '');
end
