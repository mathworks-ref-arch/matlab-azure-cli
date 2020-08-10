classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az image builder customizer add : Add an image builder customizer to an image builder template.
            % Must be used with --defer.
            this.BaseCmd = 'az image builder customizer add ';
        end
        function this = customizer_name(this, varargin)
            % Name of the customizer.
            this.Options = [this.Options, '--customizer-name', varargin{:}];
        end

        function this = type(this, varargin)
            % Type of customizer to be added to the image template.  Allowed values: file, powershell, shell, windows-restart, windows-update.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = defer(this, varargin)
            % Temporarily store the object in the local cache instead of sending to Azure. Use `az cache` commands to view/clear. File Arguments
            this.Options = [this.Options, '--defer', varargin{:}];
        end

        function this = dest_path(this, varargin)
            % The absolute destination path where the file specified in --file- source will be downloaded to in the image.
            this.Options = [this.Options, '--dest-path', varargin{:}];
        end

        function this = file_source(this, varargin)
            % The URI of the file to be downloaded into the image. It can be a github link, SAS URI for Azure Storage, etc. Powershell Arguments
            this.Options = [this.Options, '--file-source', varargin{:}];
        end

        function this = exit_codes(this, varargin)
            % Space-separated list of valid exit codes, as integers.
            this.Options = [this.Options, '--exit-codes', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the image template.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Shell and Powershell Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = inline_script(this, varargin)
            % Space-separated list of inline script lines to customize the image with.
            this.Options = [this.Options, '--inline-script', varargin{:}];
        end

        function this = script_url(this, varargin)
            % URL of script to customize the image with. The URL must be publicly accessible. Windows Restart Arguments
            this.Options = [this.Options, '--script-url', varargin{:}];
        end

        function this = restart_check_command(this, varargin)
            % Command to verify that restart succeeded.
            this.Options = [this.Options, '--restart-check-command', varargin{:}];
        end

        function this = restart_command(this, varargin)
            % Command to execute the restart operation.
            this.Options = [this.Options, '--restart-command', varargin{:}];
        end

        function this = restart_timeout(this, varargin)
            % Restart timeout specified as a string consisting of a magnitude and unit, e.g. '5m' (5 minutes) or '2h' (2 hours).  Default: 5m. Windows Update Arguments
            this.Options = [this.Options, '--restart-timeout', varargin{:}];
        end

        function this = filters(this, varargin)
            % Space delimited filters to select updates to apply. Omit or specify empty array to use the default (no filter).
            this.Options = [this.Options, '--filters', varargin{:}];
        end

        function this = search_criteria(this, varargin)
            % Criteria to search updates. Omit or specify empty string to use the default (search all). Refer to above link for examples and detailed description of this field.
            this.Options = [this.Options, '--search-criteria', varargin{:}];
        end

        function this = update_limit(this, varargin)
            % Maximum number of updates to apply at a time. Omit or specify 0 to use the default (1000).
            this.Options = [this.Options, '--update-limit', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az image builder customizer add : Add an image builder customizer to an image builder template.')
            fprintf('%s\n', '        Must be used with --defer.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --customizer-name [Required] : Name of the customizer.')
            fprintf('%s\n', '    --type -t         [Required] : Type of customizer to be added to the image template.  Allowed')
            fprintf('%s\n', '                                   values: file, powershell, shell, windows-restart, windows-update.')
            fprintf('%s\n', '    --defer                      : Temporarily store the object in the local cache instead of')
            fprintf('%s\n', '                                   sending to Azure. Use `az cache` commands to view/clear.')
            fprintf('%s\n', 'File Arguments')
            fprintf('%s\n', '    --dest-path                  : The absolute destination path where the file specified in --file-')
            fprintf('%s\n', '                                   source will be downloaded to in the image.')
            fprintf('%s\n', '    --file-source                : The URI of the file to be downloaded into the image. It can be a')
            fprintf('%s\n', '                                   github link, SAS URI for Azure Storage, etc.')
            fprintf('%s\n', 'Powershell Arguments')
            fprintf('%s\n', '    --exit-codes -e              : Space-separated list of valid exit codes, as integers.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : The name of the image template.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Shell and Powershell Arguments')
            fprintf('%s\n', '    --inline-script              : Space-separated list of inline script lines to customize the')
            fprintf('%s\n', '                                   image with.')
            fprintf('%s\n', '    --script-url                 : URL of script to customize the image with. The URL must be')
            fprintf('%s\n', '                                   publicly accessible.')
            fprintf('%s\n', 'Windows Restart Arguments')
            fprintf('%s\n', '    --restart-check-command      : Command to verify that restart succeeded.')
            fprintf('%s\n', '    --restart-command            : Command to execute the restart operation.')
            fprintf('%s\n', '    --restart-timeout            : Restart timeout specified as a string consisting of a magnitude')
            fprintf('%s\n', '                                   and unit, e.g. ''5m'' (5 minutes) or ''2h'' (2 hours).  Default: 5m.')
            fprintf('%s\n', 'Windows Update Arguments')
            fprintf('%s\n', '    --filters                    : Space delimited filters to select updates to apply. Omit or')
            fprintf('%s\n', '                                   specify empty array to use the default (no filter).')
            fprintf('%s\n', '    --search-criteria            : Criteria to search updates. Omit or specify empty string to use')
            fprintf('%s\n', '                                   the default (search all). Refer to above link for examples and')
            fprintf('%s\n', '                                   detailed description of this field.')
            fprintf('%s\n', '    --update-limit               : Maximum number of updates to apply at a time. Omit or specify 0')
            fprintf('%s\n', '                                   to use the default (1000).')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add an inline shell customizer to an image template in the cli object cache')
            fprintf('%s\n', '        az image builder customizer add -n mytemplate -g my-group \')
            fprintf('%s\n', '            --inline-script "sudo mkdir /buildArtifacts" \')
            fprintf('%s\n', '                            "sudo cp /tmp/index.html /buildArtifacts/index.html" \')
            fprintf('%s\n', '            --customizer-name shell-script-inline --type shell --defer')
            fprintf('%s\n', '    Add a file customizer to an image template in the cli object cache')
            fprintf('%s\n', '        az image builder customizer add -n mytemplate -g my-group \')
            fprintf('%s\n', '            --customizer-name my-file --type file \')
            fprintf('%s\n', '            --file-source "https://my-remote-file.html" --dest-path "/tmp/index.html" --defer')
            fprintf('%s\n', '    Add a windows restart customizer to an image template in the cli object cache')
            fprintf('%s\n', '        az image builder customizer add -n mytemplate -g my-group \')
            fprintf('%s\n', '        --customizer-name shell-script-url \')
            fprintf('%s\n', '        --restart-check-command "echo Azure-Image-Builder-Restarted-the-VM  > \')
            fprintf('%s\n', '                                c:\buildArtifacts\restart.txt" \')
            fprintf('%s\n', '            --type windows-restart --restart-timeout 10m --defer')
            fprintf('%s\n', '    Add a windows update customizer to an image template in the cli object cache.')
            fprintf('%s\n', '        az image builder customizer add -n mytemplate -g my-group --customizer-name win_update')
            fprintf('%s\n', '        --type windows-update --search-criteria IsInstalled=0 --filters "exclude:\$_.Title -like')
            fprintf('%s\n', '        \''*Preview*\''" "include:\$true" --update-limit 20 --defer')
            fprintf('%s\n', 'For more specific examples, use: az find "az image builder customizer add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
