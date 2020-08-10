function E = findErrorEntries(S)
    % findErrorEntries Find error entries in parsed results
    %
    % This function finds errors in the results from the parseHelpContents
    % command, to easily verify the parse results.
    
    % Copyright 2019-2020, The MathWorks Inc.
   if S.ErrorCode ~= 0
       E = S;
   else
       E = {};
      for k=1:length(S.Subgroups)
          E = [E, azure.findErrorEntries(S.Subgroups{k})]; %#ok<AGROW>
      end
      for k=1:length(S.Commands)
          E = [E, azure.findErrorEntries(S.Commands{k})]; %#ok<AGROW>
      end
   end
       
end