classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az storage container immutability-policy create : Creates or updates an unlocked immutability
            % policy.
            % ETag in If-Match is honored if given but not required for this operation.
            this.BaseCmd = 'az storage container immutability-policy create ';
        end
        function this = account_name(this, varargin)
            % The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = allow_protected_append_writes(this, varargin)
            % This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.  Allowed values: false, true.
            this.Options = [this.Options, '--allow-protected-append-writes', varargin{:}];
        end

        function this = period(this, varargin)
            % The immutability period for the blobs in the container since the policy creation, in days.
            this.Options = [this.Options, '--period', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`. Precondition Arguments
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = if_match(this, varargin)
            % The entity state (ETag) version of the immutability policy to update. A value of "*" can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied.
            this.Options = [this.Options, '--if-match', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage container immutability-policy create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage container immutability-policy create : Creates or updates an unlocked immutability')
            fprintf('%s\n', '    policy.')
            fprintf('%s\n', '        ETag in If-Match is honored if given but not required for this operation.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name          [Required] : The name of the storage account within the specified')
            fprintf('%s\n', '                                         resource group. Storage account names must be between 3 and')
            fprintf('%s\n', '                                         24 characters in length and use numbers and lower-case')
            fprintf('%s\n', '                                         letters only.')
            fprintf('%s\n', '    --container-name -c     [Required] : The container name.')
            fprintf('%s\n', '    --allow-protected-append-writes -w : This property can only be changed for unlocked time-based')
            fprintf('%s\n', '                                         retention policies. When enabled, new blocks can be written')
            fprintf('%s\n', '                                         to an append blob while maintaining immutability protection')
            fprintf('%s\n', '                                         and compliance. Only new blocks can be added and any')
            fprintf('%s\n', '                                         existing blocks cannot be modified or deleted. This')
            fprintf('%s\n', '                                         property cannot be changed with ExtendImmutabilityPolicy')
            fprintf('%s\n', '                                         API.  Allowed values: false, true.')
            fprintf('%s\n', '    --period                           : The immutability period for the blobs in the container')
            fprintf('%s\n', '                                         since the policy creation, in days.')
            fprintf('%s\n', '    --resource-group -g                : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match                         : The entity state (ETag) version of the immutability policy')
            fprintf('%s\n', '                                         to update. A value of "*" can be used to apply the')
            fprintf('%s\n', '                                         operation only if the immutability policy already exists.')
            fprintf('%s\n', '                                         If omitted, this operation will always be applied.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage container immutability-policy create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
