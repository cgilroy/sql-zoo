require 'pg'

def execute(sql)
  conn = PG::Connection.open(:dbname => 'sqlzoo', :user => 'postgres', :password => 'gilroy')
  query_result = conn.exec(sql).values
  conn.close

  return query_result
end