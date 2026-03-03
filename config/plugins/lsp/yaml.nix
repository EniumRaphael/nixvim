{
  plugins.lsp.servers.yamlls = {
    enable = true;
    settings = {
      yaml = {
        schemas = {
          "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
            "docker-compose*.yml";
        };
        validate = true;
        format.enable = true;
        completion = true;
        hover = true;
      };
    };
  };
}

