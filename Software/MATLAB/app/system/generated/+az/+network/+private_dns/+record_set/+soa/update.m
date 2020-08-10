classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network private-dns record-set soa update : Update properties of an SOA record.
            this.BaseCmd = 'az network private-dns record-set soa update ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = zone_name(this, varargin)
            % The name of the Private DNS zone.
            this.Options = [this.Options, '--zone-name', varargin{:}];
        end

        function this = email(this, varargin)
            % Email address.
            this.Options = [this.Options, '--email', varargin{:}];
        end

        function this = expire_time(this, varargin)
            % Expire time (seconds).
            this.Options = [this.Options, '--expire-time', varargin{:}];
        end

        function this = host(this, varargin)
            % Host name.
            this.Options = [this.Options, '--host', varargin{:}];
        end

        function this = minimum_ttl(this, varargin)
            % Minimum TTL (time-to-live, seconds).
            this.Options = [this.Options, '--minimum-ttl', varargin{:}];
        end

        function this = refresh_time(this, varargin)
            % Refresh value (seconds).
            this.Options = [this.Options, '--refresh-time', varargin{:}];
        end

        function this = retry_time(this, varargin)
            % Retry time (seconds).
            this.Options = [this.Options, '--retry-time', varargin{:}];
        end

        function this = serial_number(this, varargin)
            % Serial number.
            this.Options = [this.Options, '--serial-number', varargin{:}];
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
            fprintf('%s\n', '    az network private-dns record-set soa update : Update properties of an SOA record.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --zone-name -z      [Required] : The name of the Private DNS zone.')
            fprintf('%s\n', '    --email -e                     : Email address.')
            fprintf('%s\n', '    --expire-time -x               : Expire time (seconds).')
            fprintf('%s\n', '    --host -t                      : Host name.')
            fprintf('%s\n', '    --minimum-ttl -m               : Minimum TTL (time-to-live, seconds).')
            fprintf('%s\n', '    --refresh-time -f              : Refresh value (seconds).')
            fprintf('%s\n', '    --retry-time -r                : Retry time (seconds).')
            fprintf('%s\n', '    --serial-number -s             : Serial number.')
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
            fprintf('%s\n', '    Update properties of an SOA record.')
            fprintf('%s\n', '        az network private-dns record-set soa update -g MyResourceGroup -z www.mysite.com \')
            fprintf('%s\n', '            -e myhostmaster.mysite.com')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns record-set soa update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
