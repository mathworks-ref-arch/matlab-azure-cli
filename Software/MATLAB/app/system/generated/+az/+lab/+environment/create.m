classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az lab environment create : Create an environment in a lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab environment create ';
        end
        function this = arm_template(this, varargin)
            % Name or ID of the ARM template in the lab.
            this.Options = [this.Options, '--arm-template', varargin{:}];
        end

        function this = lab_name(this, varargin)
            % Name of the lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the environment.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the lab's resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = artifact_source_name(this, varargin)
            % Name of the artifact source in the lab.  Values from: az lab artifact-source list.
            this.Options = [this.Options, '--artifact-source-name', varargin{:}];
        end

        function this = parameters(this, varargin)
            % JSON encoded list of parameters. Use '@{file}' to load from a file.
            this.Options = [this.Options, '--parameters', varargin{:}];
        end

        function this = tags(this, varargin)
            % The tags for the resource.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az lab environment create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az lab environment create : Create an environment in a lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --arm-template      [Required] : Name or ID of the ARM template in the lab.')
            fprintf('%s\n', '    --lab-name          [Required] : Name of the lab.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the environment.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the lab''s resource group.')
            fprintf('%s\n', '    --artifact-source-name         : Name of the artifact source in the lab.  Values from: az lab')
            fprintf('%s\n', '                                     artifact-source list.')
            fprintf('%s\n', '    --parameters                   : JSON encoded list of parameters. Use ''@{file}'' to load from a')
            fprintf('%s\n', '                                     file.')
            fprintf('%s\n', '    --tags                         : The tags for the resource.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az lab environment create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
