; extends

((
  (string_content) @sqlstring
  (#match? @sqlstring "(SELECT|INSERT|UPDATE|DELETE).*")
) @injection.content (#set! injection.language "sql"))
