function writeHelpFunction(SW, S)
   % writeHelpFunction Writes the azure help
   %
   % writeHelpFunction(SW, S)
   % will write a help function from the structure S.
   % SW is a StringWriter, which can be for a whole file, or just for
   % a part in a class.
   % isClass denotes if this is within a class (which means it will need an
   % additional '~' argument.

   % Copyright 2020, The MathWorks Inc.

   if S.IsGroup
       thisArg = '';
   else
       thisArg = '~';
   end

   SW.pf('function help(%s)\n\n', thisArg);
   SW.tab(4);
   if S.IsGroup
       SW.pf('%% Copyright 2020, The MathWorks Inc.\n\n');
   end
   
   LL = regexp(S.Raw, '([^\n]+)', 'tokens');
   LL = [LL{:}];
   LL = cellfun(@azure.removeCtrlChars, LL, 'UniformOutput', false);
   idx = cellfun(@isempty, LL)';
   LL(idx) = [];
   for k=1:length(LL)
       str = sprintf('''%s''', strrep(LL{k}, '''', ''''''));
       SW.pf('fprintf(''%%s\\n'', %s)\n',  str);
   end
   SW.tab(-4);
   SW.pf('end\n');
end
