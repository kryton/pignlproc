data =
    LOAD 'input'
    AS (query:CHARARRAY);

queries_output =
    FOREACH data
    GENERATE 
        flatten(pignlproc.analysis.Shingle(3, query));

STORE queries_output INTO 'output';
