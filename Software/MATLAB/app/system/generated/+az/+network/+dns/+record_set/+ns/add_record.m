classdef add_record < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add_record()
            % az network dns record-set ns add-record : Add an NS record.
            this.BaseCmd = 'az network dns record-set ns add-record ';
        end
        function this = nsdname(this, varargin)
            % Name server domain name.
            this.Options = [this.Options, '--nsdname', varargin{:}];
        end

        function this = record_set_name(this, varargin)
            % The name of the record set relative to the zone. Creates a new record set if one does not exist.
            this.Options = [this.Options, '--record-set-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = zone_name(this, varargin)
            % The name of the zone.
            this.Options = [this.Options, '--zone-name', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % Create the record set only if it does not already exist.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = subscriptionid(this, varargin)
            % Subscription id to add name server record.
            this.Options = [this.Options, '--subscriptionid', varargin{:}];
        end

        function this = ttl(this, varargin)
            % Record set TTL (time-to-live).  Default: 3600.
            this.Options = [this.Options, '--ttl', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network dns record-set ns add-record : Add an NS record.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --nsdname -d         [Required] : Name server domain name.')
            fprintf('%s\n', '    --record-set-name -n [Required] : The name of the record set relative to the zone. Creates a new')
            fprintf('%s\n', '                                      record set if one does not exist.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --zone-name -z       [Required] : The name of the zone.')
            fprintf('%s\n', '    --if-none-match                 : Create the record set only if it does not already exist.')
            fprintf('%s\n', '    --subscriptionid -s             : Subscription id to add name server record.')
            fprintf('%s\n', '    --ttl                           : Record set TTL (time-to-live).  Default: 3600.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add an NS record.')
            fprintf('%s\n', '        az network dns record-set ns add-record -g MyResourceGroup -z www.mysite.com \')
            fprintf('%s\n', '            -n MyRecordSet -d ns.mysite.com')
            fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set ns add-record"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add_record 
