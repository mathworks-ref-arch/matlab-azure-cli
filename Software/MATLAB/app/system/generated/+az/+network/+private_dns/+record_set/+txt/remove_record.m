classdef remove_record < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove_record()
            % az network private-dns record-set txt remove-record : Remove a TXT record from its record set.
            % By default, if the last record in a set is removed, the record set is deleted. To retain the
            % empty record set, include --keep-empty-record-set.
            this.BaseCmd = 'az network private-dns record-set txt remove-record ';
        end
        function this = record_set_name(this, varargin)
            % The name of the record set relative to the zone.
            this.Options = [this.Options, '--record-set-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = value(this, varargin)
            % Space-separated list of text values which will be concatenated together.
            this.Options = [this.Options, '--value', varargin{:}];
        end

        function this = zone_name(this, varargin)
            % The name of the Private DNS zone.
            this.Options = [this.Options, '--zone-name', varargin{:}];
        end

        function this = keep_empty_record_set(this, varargin)
            % Keep the empty record set if the last record is removed.
            this.Options = [this.Options, '--keep-empty-record-set', varargin{:}];
        end

        function this = debug(this, varargin)
            % Increase logging verbosity to show all debug logs.
            this.Options = [this.Options, '--debug', varargin{:}];
        end

        function this = only_show_errors(this, varargin)
            % Only show errors, suppressing warnings.
            this.Options = [this.Options, '--only-show-errors', varargin{:}];
        end

        function this = output(this, varargin)
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network private-dns record-set txt remove-record : Remove a TXT record from its record set.')
            fprintf('%s\n', '        By default, if the last record in a set is removed, the record set is deleted. To retain the')
            fprintf('%s\n', '        empty record set, include --keep-empty-record-set.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --record-set-name -n [Required] : The name of the record set relative to the zone.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --value -v           [Required] : Space-separated list of text values which will be concatenated')
            fprintf('%s\n', '                                      together.')
            fprintf('%s\n', '    --zone-name -z       [Required] : The name of the Private DNS zone.')
            fprintf('%s\n', '    --keep-empty-record-set         : Keep the empty record set if the last record is removed.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Remove a TXT record from its record set.')
            fprintf('%s\n', '        az network private-dns record-set txt remove-record -g MyResourceGroup -z www.mysite.com \')
            fprintf('%s\n', '            -n MyRecordSet -v Owner=WebTeam')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns record-set txt remove-')
            fprintf('%s\n', 'record"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove_record 
