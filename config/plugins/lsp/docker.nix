{
  plugins.lsp.servers = {
    dockerls = {
      enable = true;
      filetypes = [
        "dockerfile"
      ];
    };

    docker_compose_language_service = {
      enable = true;
      filetypes = [
        "yaml"
        "yml"
      ];
      settings = {
        dockerCompose = {
          schema = "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json";
          validate = true;
          lint = {
            deprecatedProperties = true;
            duplicateKeys = true;
          };
        };
      };
    };
  };
}

