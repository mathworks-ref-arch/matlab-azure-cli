classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network private-dns record-set txt create : Create an empty TXT record set.
            this.BaseCmd = 'az network private-dns record-set txt create ';
        end
        function this = name(this, varargin)
            % The name of the record set, relative to the name of the Private DNS zone.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = zone_name(this, varargin)
            % The name of the Private DNS zone.
            this.Options = [this.Options, '--zone-name', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
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
            fprintf('%s\n', '    az network private-dns record-set txt create : Create an empty TXT record set.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the record set, relative to the name of the Private')
            fprintf('%s\n', '                                     DNS zone.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --zone-name -z      [Required] : The name of the Private DNS zone.')
            fprintf('%s\n', '    --metadata                     : Metadata in space-separated key=value pairs. This overwrites')
            fprintf('%s\n', '                                     any existing metadata.')
            fprintf('%s\n', '    --ttl                          : Record set TTL (time-to-live).  Default: 3600.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an empty TXT record set.')
            fprintf('%s\n', '        az network private-dns record-set txt create -g MyResourceGroup -z www.mysite.com -n')
            fprintf('%s\n', '        MyRecordSet')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns record-set txt create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
