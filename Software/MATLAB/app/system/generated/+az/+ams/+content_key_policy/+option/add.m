classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az ams content-key-policy option add : Add a new option to an existing content key policy.
            this.BaseCmd = 'az ams content-key-policy option add ';
        end
        function this = policy_option_name(this, varargin)
            % The content key policy option name. Clear Key Configuration (AES Encryption) Arguments
            this.Options = [this.Options, '--policy-option-name', varargin{:}];
        end

        function this = clear_key_configuration(this, varargin)
            % Use Clear Key configuration, a.k.a AES encryption. It's intended for non-DRM keys. FairPlay Configuration Arguments
            this.Options = [this.Options, '--clear-key-configuration', varargin{:}];
        end

        function this = ask(this, varargin)
            % The key that must be used as FairPlay Application Secret Key, which is a 32 character hex string.
            this.Options = [this.Options, '--ask', varargin{:}];
        end

        function this = fair_play_pfx(this, varargin)
            % The filepath to a FairPlay certificate file in PKCS 12 (pfx) format (including private key).
            this.Options = [this.Options, '--fair-play-pfx', varargin{:}];
        end

        function this = fair_play_pfx_password(this, varargin)
            % The password encrypting FairPlay certificate in PKCS 12 (pfx) format.
            this.Options = [this.Options, '--fair-play-pfx-password', varargin{:}];
        end

        function this = fp_playback_duration_seconds(this, varargin)
            % Playback duration.
            this.Options = [this.Options, '--fp-playback-duration-seconds', varargin{:}];
        end

        function this = fp_storage_duration_seconds(this, varargin)
            % Storage duration.
            this.Options = [this.Options, '--fp-storage-duration-seconds', varargin{:}];
        end

        function this = rental_and_lease_key_type(this, varargin)
            % The rental and lease key type. Available values: Undefined, DualExpiry, PersistentUnlimited, PersistentLimited.
            this.Options = [this.Options, '--rental-and-lease-key-type', varargin{:}];
        end

        function this = rental_duration(this, varargin)
            % The rental duration. Must be greater than or equal to 0. Open Restriction Arguments
            this.Options = [this.Options, '--rental-duration', varargin{:}];
        end

        function this = open_restriction(this, varargin)
            % Use open restriction. License or key will be delivered on every request. Not recommended for production environments. PlayReady Configuration Arguments
            this.Options = [this.Options, '--open-restriction', varargin{:}];
        end

        function this = play_ready_template(this, varargin)
            % JSON PlayReady license template. Use @{file} to load from a file.
            this.Options = [this.Options, '--play-ready-template', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams content-key-policy option add"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The content key policy name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Token Restriction Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = alt_rsa_token_keys(this, varargin)
            % Space-separated list of alternate rsa token keys.
            this.Options = [this.Options, '--alt-rsa-token-keys', varargin{:}];
        end

        function this = alt_symmetric_token_keys(this, varargin)
            % Space-separated list of alternate symmetric token keys.
            this.Options = [this.Options, '--alt-symmetric-token-keys', varargin{:}];
        end

        function this = alt_x509_token_keys(this, varargin)
            % Space-separated list of alternate x509 certificate token keys.
            this.Options = [this.Options, '--alt-x509-token-keys', varargin{:}];
        end

        function this = audience(this, varargin)
            % The audience for the token.
            this.Options = [this.Options, '--audience', varargin{:}];
        end

        function this = issuer(this, varargin)
            % The token issuer.
            this.Options = [this.Options, '--issuer', varargin{:}];
        end

        function this = open_id_connect_discovery_document(this, varargin)
            % The OpenID connect discovery document.
            this.Options = [this.Options, '--open-id-connect-discovery-document', varargin{:}];
        end

        function this = token_claims(this, varargin)
            % Space-separated required token claims in '[key=value]' format.
            this.Options = [this.Options, '--token-claims', varargin{:}];
        end

        function this = token_key(this, varargin)
            % Either a string (for symmetric key) or a filepath to a certificate (x509) or public key (rsa). Must be used in conjunction with --token-key-type.
            this.Options = [this.Options, '--token-key', varargin{:}];
        end

        function this = token_key_type(this, varargin)
            % The type of the token key to be used for the primary verification key. Allowed values: Symmetric, RSA, X509.
            this.Options = [this.Options, '--token-key-type', varargin{:}];
        end

        function this = token_type(this, varargin)
            % The type of token. Allowed values: Jwt, Swt. Widevine Configuration Arguments
            this.Options = [this.Options, '--token-type', varargin{:}];
        end

        function this = widevine_template(this, varargin)
            % JSON Widevine license template. Use @{file} to load from a file.
            this.Options = [this.Options, '--widevine-template', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams content-key-policy option add : Add a new option to an existing content key policy.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --policy-option-name      [Required] : The content key policy option name.')
            fprintf('%s\n', 'Clear Key Configuration (AES Encryption) Arguments')
            fprintf('%s\n', '    --clear-key-configuration            : Use Clear Key configuration, a.k.a AES encryption. It''s')
            fprintf('%s\n', '                                           intended for non-DRM keys.')
            fprintf('%s\n', 'FairPlay Configuration Arguments')
            fprintf('%s\n', '    --ask                                : The key that must be used as FairPlay Application Secret')
            fprintf('%s\n', '                                           Key, which is a 32 character hex string.')
            fprintf('%s\n', '    --fair-play-pfx                      : The filepath to a FairPlay certificate file in PKCS 12')
            fprintf('%s\n', '                                           (pfx) format (including private key).')
            fprintf('%s\n', '    --fair-play-pfx-password             : The password encrypting FairPlay certificate in PKCS 12')
            fprintf('%s\n', '                                           (pfx) format.')
            fprintf('%s\n', '    --fp-playback-duration-seconds       : Playback duration.')
            fprintf('%s\n', '    --fp-storage-duration-seconds        : Storage duration.')
            fprintf('%s\n', '    --rental-and-lease-key-type          : The rental and lease key type. Available values:')
            fprintf('%s\n', '                                           Undefined, DualExpiry, PersistentUnlimited,')
            fprintf('%s\n', '                                           PersistentLimited.')
            fprintf('%s\n', '    --rental-duration                    : The rental duration. Must be greater than or equal to 0.')
            fprintf('%s\n', 'Open Restriction Arguments')
            fprintf('%s\n', '    --open-restriction                   : Use open restriction. License or key will be delivered on')
            fprintf('%s\n', '                                           every request. Not recommended for production')
            fprintf('%s\n', '                                           environments.')
            fprintf('%s\n', 'PlayReady Configuration Arguments')
            fprintf('%s\n', '    --play-ready-template                : JSON PlayReady license template. Use @{file} to load from')
            fprintf('%s\n', '                                           a file.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a                    : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids                                : One or more resource IDs (space-delimited). It should be')
            fprintf('%s\n', '                                           a complete resource ID containing all information of')
            fprintf('%s\n', '                                           ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                           or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                            : The content key policy name.')
            fprintf('%s\n', '    --resource-group -g                  : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Token Restriction Arguments')
            fprintf('%s\n', '    --alt-rsa-token-keys                 : Space-separated list of alternate rsa token keys.')
            fprintf('%s\n', '    --alt-symmetric-token-keys           : Space-separated list of alternate symmetric token keys.')
            fprintf('%s\n', '    --alt-x509-token-keys                : Space-separated list of alternate x509 certificate token')
            fprintf('%s\n', '                                           keys.')
            fprintf('%s\n', '    --audience                           : The audience for the token.')
            fprintf('%s\n', '    --issuer                             : The token issuer.')
            fprintf('%s\n', '    --open-id-connect-discovery-document : The OpenID connect discovery document.')
            fprintf('%s\n', '    --token-claims                       : Space-separated required token claims in ''[key=value]''')
            fprintf('%s\n', '                                           format.')
            fprintf('%s\n', '    --token-key                          : Either a string (for symmetric key) or a filepath to a')
            fprintf('%s\n', '                                           certificate (x509) or public key (rsa). Must be used in')
            fprintf('%s\n', '                                           conjunction with --token-key-type.')
            fprintf('%s\n', '    --token-key-type                     : The type of the token key to be used for the primary')
            fprintf('%s\n', '                                           verification key. Allowed values: Symmetric, RSA, X509.')
            fprintf('%s\n', '    --token-type                         : The type of token. Allowed values: Jwt, Swt.')
            fprintf('%s\n', 'Widevine Configuration Arguments')
            fprintf('%s\n', '    --widevine-template                  : JSON Widevine license template. Use @{file} to load from')
            fprintf('%s\n', '                                           a file.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams content-key-policy option add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
