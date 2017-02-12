@moduledoc """
A schema is a keyword list which represents how to map, transform, and validate
configuration values parsed from the .conf file. More information can be found here
https://github.com/bitwalker/conform.
"""
[
  extends: [],
  import: [],
  mappings: [
    "neo4j.url": [
      commented: false,
      datatype: :binary,
      default: "http://localhost:7474",
      doc: "A url to a Neo4j server. IMPORTANT: The url mustn't contain `db/data/` at the end",
      hidden: false,
      to: "neo4j_sips.Elixir.Neo4j.url"
    ],
    "neo4j.pool_size": [
      commented: false,
      datatype: :integer,
      default: 20,
      doc: "Maximum pool size",
      hidden: false,
      to: "neo4j_sips.Elixir.Neo4j.pool_size"
    ],
    "neo4j.max_overflow": [
      commented: false,
      datatype: :integer,
      default: 10,
      doc: "Maximum number of workers created if the pool is empty",
      hidden: false,
      to: "neo4j_sips.Elixir.Neo4j.max_overflow"
    ],
    "neo4j.timeout": [
      commented: false,
      datatype: :integer,
      default: 5000,
      doc: "Connection timeout in milliseconds",
      hidden: false,
      to: "neo4j_sips.Elixir.Neo4j.timeout"
    ],
    "neo4j.basic_auth.username": [
      commented: false,
      datatype: :binary,
      doc: "A username to be used for authorization. Comment it out, if you don't use the basic authorization.",
      hidden: false,
      to: "neo4j_sips.Elixir.Neo4j.basic_auth.username"
    ],
    "neo4j.basic_auth.password": [
      commented: false,
      datatype: :binary,
      doc: "A password to be used for authorization. Comment it out, if you don't use the basic authorization.",
      hidden: false,
      to: "neo4j_sips.Elixir.Neo4j.basic_auth.password"
    ],
    "logger.level": [
      commented: false,
      datatype: :atom,
      default: :info,
      doc: "The log level. It accepts the following values: debug, info, warn, error.",
      hidden: false,
      to: "logger.console.level"
    ],
    "rollbax.access_token": [
      commented: false,
      datatype: :binary,
      doc: "An access token to http://rollbar.com. If you don't want to use http://rollbar.com, comment it out.",
      hidden: false,
      to: "rollbax.access_token"
    ],
    "sirko.web.port": [
      commented: false,
      datatype: :integer,
      default: 4000,
      doc: "An HTTP port to be used by the HTTP server. This port must be used to communicate to the engine.",
      hidden: false,
      to: "sirko.web.port"
    ],
    "sirko.web.client_url": [
      commented: false,
      datatype: :binary,
      default: "http://localhost",
      doc: "A url of a client application to make predictions for.",
      hidden: false,
      to: "sirko.web.client_url"
    ]
  ],
  transforms: [],
  validators: []
]