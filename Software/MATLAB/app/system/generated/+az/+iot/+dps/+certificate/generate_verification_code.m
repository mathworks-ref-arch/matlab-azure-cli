classdef generate_verification_code < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = generate_verification_code()
            % az iot dps certificate generate-verification-code : Generate a verification code for an Azure
            % IoT Hub Device Provisioning Service certificate.
            % This verification code is used to complete the proof of possession step for a certificate.
            % Use this verification code as the CN of a new certificate signed with the root certificates
            % private key.
            this.BaseCmd = 'az iot dps certificate generate-verification-code ';
        end
        function this = certificate_name(this, varargin)
            % A friendly name for the certificate.
            this.Options = [this.Options, '--certificate-name', varargin{:}];
        end

        function this = dps_name(this, varargin)
            % IoT Provisioning Service name.
            this.Options = [this.Options, '--dps-name', varargin{:}];
        end

        function this = etag(this, varargin)
            % Entity Tag (etag) of the object.
            this.Options = [this.Options, '--etag', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az iot dps certificate generate-verification-code : Generate a verification code for an Azure')
            fprintf('%s\n', '    IoT Hub Device Provisioning Service certificate.')
            fprintf('%s\n', '        This verification code is used to complete the proof of possession step for a certificate.')
            fprintf('%s\n', '        Use this verification code as the CN of a new certificate signed with the root certificates')
            fprintf('%s\n', '        private key.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --certificate-name --name -n [Required] : A friendly name for the certificate.')
            fprintf('%s\n', '    --dps-name                   [Required] : IoT Provisioning Service name.')
            fprintf('%s\n', '    --etag -e                    [Required] : Entity Tag (etag) of the object.')
            fprintf('%s\n', '    --resource-group -g          [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                              group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                             : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                              table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                 : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                              more information and examples.')
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Generate a verification code for MyCertificate')
            fprintf('%s\n', '        az iot dps certificate generate-verification-code --dps-name MyDps --resource-group')
            fprintf('%s\n', '        MyResourceGroup --name MyCertificate --etag AAAAAAAAAAA=')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot dps certificate generate-verification-code"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class generate_verification_code 
