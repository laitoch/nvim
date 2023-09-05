; extends

((
  (string_content) @sqlstring
  (#match? @sqlstring "(SELECT|select|INSERT|insert|UPDATE|update|DELETE|delete).*")
) @injection.content (#set! injection.language "sql"))
