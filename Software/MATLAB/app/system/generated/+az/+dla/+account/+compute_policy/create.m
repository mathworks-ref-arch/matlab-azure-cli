classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dla account compute-policy create : Create a compute policy in the Data Lake Analytics
            % account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla account compute-policy create ';
        end
        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = compute_policy_name(this, varargin)
            % The name of the compute policy to create.
            this.Options = [this.Options, '--compute-policy-name', varargin{:}];
        end

        function this = object_id(this, varargin)
            % The Azure Active Directory object ID of the user, group, or service principal to apply the policy to.
            this.Options = [this.Options, '--object-id', varargin{:}];
        end

        function this = object_type(this, varargin)
            % The Azure Active Directory object type associated with the supplied object ID.
            this.Options = [this.Options, '--object-type', varargin{:}];
        end

        function this = max_dop_per_job(this, varargin)
            % The maximum degree of parallelism allowed per job for this policy. At least one of `--min-priority-per-job` and `--max- dop-per-job` must be specified.
            this.Options = [this.Options, '--max-dop-per-job', varargin{:}];
        end

        function this = min_priority_per_job(this, varargin)
            % The minimum priority allowed per job for this policy. At least one of `--min-priority-per-job` and `--max-dop-per-job` must be specified.
            this.Options = [this.Options, '--min-priority-per-job', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla account compute-policy create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dla account compute-policy create : Create a compute policy in the Data Lake Analytics')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account -n          [Required] : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --compute-policy-name [Required] : The name of the compute policy to create.')
            fprintf('%s\n', '    --object-id           [Required] : The Azure Active Directory object ID of the user, group, or')
            fprintf('%s\n', '                                       service principal to apply the policy to.')
            fprintf('%s\n', '    --object-type         [Required] : The Azure Active Directory object type associated with the')
            fprintf('%s\n', '                                       supplied object ID.')
            fprintf('%s\n', '    --max-dop-per-job                : The maximum degree of parallelism allowed per job for this')
            fprintf('%s\n', '                                       policy. At least one of `--min-priority-per-job` and `--max-')
            fprintf('%s\n', '                                       dop-per-job` must be specified.')
            fprintf('%s\n', '    --min-priority-per-job           : The minimum priority allowed per job for this policy. At')
            fprintf('%s\n', '                                       least one of `--min-priority-per-job` and `--max-dop-per-job`')
            fprintf('%s\n', '                                       must be specified.')
            fprintf('%s\n', '    --resource-group -g              : If not specified, will attempt to discover the resource group')
            fprintf('%s\n', '                                       for the specified Data Lake Analytics account.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla account compute-policy create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
