WITH    tables
          AS (SELECT    '[' + s.name + '].[' + t.name + ']' AS tableName
              FROM      sys.tables t
                        JOIN sys.schemas s ON t.schema_id = s.schema_id
              WHERE     t.name NOT LIKE 'spt%'
                        AND t.name NOT IN ('MSreplication_options', 'sysdiagrams'))
    SELECT  'IF EXISTS (SELECT * FROM ' + tableName + ') SELECT ''' + tableName + ''', * FROM ' + tableName
    FROM    tables
    ORDER BY tableName