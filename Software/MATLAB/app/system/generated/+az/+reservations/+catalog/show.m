classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az reservations catalog show : Get catalog of available reservation.
            % Get the regions and skus that are available for RI purchase for the specified Azure
            % subscription.
            % Command group 'reservations' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az reservations catalog show ';
        end
        function this = reserved_resource_type(this, varargin)
            % Type of the resource for which the skus should be provided.  Allowed values: CosmosDb, RedHat, RedHatOsa, SqlDataWarehouse, SqlDatabases, SuseLinux, VMwareCloudSimple, VirtualMachines.
            this.Options = [this.Options, '--reserved-resource-type', varargin{:}];
        end

        function this = subscription_id(this, varargin)
            % Id of the subscription to get the catalog for.
            this.Options = [this.Options, '--subscription-id', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az reservations catalog show"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az reservations catalog show : Get catalog of available reservation.')
            fprintf('%s\n', '        Get the regions and skus that are available for RI purchase for the specified Azure')
            fprintf('%s\n', '        subscription.')
            fprintf('%s\n', '        Command group ''reservations'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --reserved-resource-type [Required] : Type of the resource for which the skus should be')
            fprintf('%s\n', '                                          provided.  Allowed values: CosmosDb, RedHat, RedHatOsa,')
            fprintf('%s\n', '                                          SqlDataWarehouse, SqlDatabases, SuseLinux,')
            fprintf('%s\n', '                                          VMwareCloudSimple, VirtualMachines.')
            fprintf('%s\n', '    --subscription-id        [Required] : Id of the subscription to get the catalog for.')
            fprintf('%s\n', '    --location -l                       : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                          can configure the default location using `az configure')
            fprintf('%s\n', '                                          --defaults location=<location>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az reservations catalog show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
