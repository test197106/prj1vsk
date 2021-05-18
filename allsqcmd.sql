SELECT * FROM TABLE;
SELECT *
  FROM table1
;
SELECT *
  FROM table2
;
SELECT *
  FROM table3
;
.open  '{k[p1s0]}'
.header on
.tables
CREATE TABLE t_events
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , fn_name          VARCHAR(255)
     , fn_args          VARCHAR(255)
     , ps_name          VARCHAR(255)
--                          
     , p_no             VARCHAR(255)
     , s_no             VARCHAR(255)
     , b_time           VARCHAR(255)
--                          
     , e_time           VARCHAR(255)
     , e_remarks        VARCHAR(255)
     , ela_secs         VARCHAR(255)
--                          
     , status           INTEGER
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_events
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_events');
.open  '{k[p1s0]}'
.header on
.tables
CREATE TABLE t_files
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , ps_name          VARCHAR(255)
     , p_no             INTEGER
     , s_no             INTEGER
--                          
     , f_id             INTEGER
     , e_id             INTEGER
     , t_id             INTEGER
--                          
     , e_name           VARCHAR(255)
     , e_type           VARCHAR(255)
     , f_name           VARCHAR(255)
--                          
     , f_size           INTEGER
     , s_pct            REAL
     , isValid          INTEGER
--                          
     , f_modified       VARCHAR(255)
     , f_file           VARCHAR(255)
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_files
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_files');
.open  '{k[p1s0]}'
.header on
.tables
CREATE TABLE t_fns
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , fn_name          VARCHAR(255)
     , ps_name          VARCHAR(255)
     , p_no             VARCHAR(255)
--                          
     , s_no             VARCHAR(255)
     , exe_no           INTEGER
     , fn_cat           INTEGER
--                          
     , fn_type          VARCHAR(255)
     , fn_desc          VARCHAR(255)
     , run_type         INTEGER
--                          
     , status           VARCHAR(255)
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_fns
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_fns');
.open  '{k[p1s0]}'
.header on
.tables
CREATE TABLE t_runs
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , row_uuid         VARCHAR(32)
     , p_no_bgn         INTEGER
     , s_no_bgn         INTEGER
--                          
     , p_no_end         INTEGER
     , s_no_end         INTEGER
     , run_ela          VARCHAR(255)
--                          
     , run_status       INTEGER
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_runs
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_runs');
SELECT *
  FROM table4
;
SELECT *
  FROM table5
;
SELECT *
  FROM table6
;
SELECT *
  FROM table7
;
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
INSERT INTO p1s0.t_events
(      fn_name         
     , fn_args         
     , ps_name         
--                          
     , p_no            
     , s_no            
     , b_time          
--                          
     , e_time          
     , e_remarks       
     , ela_secs        
--                          
     , status          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
INSERT INTO p1s0.t_files
(      ps_name         
     , p_no            
     , s_no            
--                          
     , f_id            
     , e_id            
     , t_id            
--                          
     , e_name          
     , e_type          
     , f_name          
--                          
     , f_size          
     , s_pct           
     , isValid         
--                          
     , f_modified      
     , f_file          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
INSERT INTO p1s0.t_fns
(      fn_name         
     , ps_name         
     , p_no            
--                          
     , s_no            
     , exe_no          
     , fn_cat          
--                          
     , fn_type         
     , fn_desc         
     , run_type        
--                          
     , status          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
INSERT INTO p1s0.t_runs
(      row_uuid        
     , p_no_bgn        
     , s_no_bgn        
--                          
     , p_no_end        
     , s_no_end        
     , run_ela         
--                          
     , run_status      
--                          
)
SELECT *
  FROM table8
;
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
SELECT a.fn_name         
     , a.fn_args         
     , a.ps_name         
--                          
     , a.p_no            
     , a.s_no            
     , a.b_time          
--                          
     , a.e_time          
     , a.e_remarks       
     , a.ela_secs        
--                          
     , a.status          
  FROM p1s0.t_events a
;
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
SELECT a.ps_name         
     , a.p_no            
     , a.s_no            
--                          
     , a.f_id            
     , a.e_id            
     , a.t_id            
--                          
     , a.e_name          
     , a.e_type          
     , a.f_name          
--                          
     , a.f_size          
     , a.s_pct           
     , a.isValid         
--                          
     , a.f_modified      
     , a.f_file          
  FROM p1s0.t_files a
;
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
SELECT a.fn_name         
     , a.ps_name         
     , a.p_no            
--                          
     , a.s_no            
     , a.exe_no          
     , a.fn_cat          
--                          
     , a.fn_type         
     , a.fn_desc         
     , a.run_type        
--                          
     , a.status          
  FROM p1s0.t_fns a
;
.open  '{k[p1s0]}'
attach '{k[p1s0]}' as p1s0
SELECT a.row_uuid        
     , a.p_no_bgn        
     , a.s_no_bgn        
--                          
     , a.p_no_end        
     , a.s_no_end        
     , a.run_ela         
--                          
     , a.run_status      
  FROM p1s0.t_runs a
;
SELECT *
  FROM table8
;
SELECT *
  FROM tableA
;
SELECT *
  FROM tableB
;
SELECT *
  FROM tableC
;
SELECT *
  FROM tableD
;
.open  '{k[p1s1]}'
.header on
.tables
CREATE TABLE t_events
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , fn_name          VARCHAR(255)
     , b_time           VARCHAR(255)
     , b_remarks        VARCHAR(255)
--                          
     , e_time           VARCHAR(255)
     , e_remarks        VARCHAR(255)
     , ela_secs         VARCHAR(255)
--                          
     , status           VARCHAR(255)
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_events
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_events');
.open  '{k[p1s1]}'
.header on
.tables
CREATE TABLE t_files
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , ps_name          VARCHAR(255)
     , f_id             VARCHAR(255)
     , e_id             VARCHAR(255)
--                          
     , t_id             VARCHAR(255)
     , e_name           VARCHAR(255)
     , e_type           VARCHAR(255)
--                          
     , f_name           VARCHAR(255)
     , f_size           VARCHAR(255)
     , s_pct            VARCHAR(255)
--                          
     , isValid          VARCHAR(255)
     , f_modified       VARCHAR(255)
     , f_file           VARCHAR(255)
--                          
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_files
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_files');
.open  '{k[p1s0]}'
attach '{k[p1s1]}' as p1s1
INSERT INTO p1s1.t_events
(      fn_name         
     , b_time          
     , b_remarks       
--                          
     , e_time          
     , e_remarks       
     , ela_secs        
--                          
     , status          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p1s1]}' as p1s1
INSERT INTO p1s1.t_files
(      ps_name         
     , f_id            
     , e_id            
--                          
     , t_id            
     , e_name          
     , e_type          
--                          
     , f_name          
     , f_size          
     , s_pct           
--                          
     , isValid         
     , f_modified      
     , f_file          
--                          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p1s1]}' as p1s1
SELECT a.fn_name         
     , a.b_time          
     , a.b_remarks       
--                          
     , a.e_time          
     , a.e_remarks       
     , a.ela_secs        
--                          
     , a.status          
  FROM p1s1.t_events a
;
.open  '{k[p1s0]}'
attach '{k[p1s1]}' as p1s1
SELECT a.ps_name         
     , a.f_id            
     , a.e_id            
--                          
     , a.t_id            
     , a.e_name          
     , a.e_type          
--                          
     , a.f_name          
     , a.f_size          
     , a.s_pct           
--                          
     , a.isValid         
     , a.f_modified      
     , a.f_file          
--                          
  FROM p1s1.t_files a
;
.open  '{k[p2s2]}'
.header on
.tables
CREATE TABLE t_events
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , fn_name          VARCHAR(255)
     , fn_args          VARCHAR(255)
     , ps_name          VARCHAR(255)
--                          
     , p_no             VARCHAR(255)
     , s_no             VARCHAR(255)
     , b_time           VARCHAR(255)
--                          
     , e_time           VARCHAR(255)
     , e_remarks        VARCHAR(255)
     , ela_secs         VARCHAR(255)
--                          
     , status           INTEGER
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_events
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_events');
.open  '{k[p2s2]}'
.header on
.tables
CREATE TABLE t_files
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , ps_name          VARCHAR(255)
     , p_no             INTEGER
     , s_no             INTEGER
--                          
     , f_id             INTEGER
     , e_id             INTEGER
     , t_id             INTEGER
--                          
     , e_name           VARCHAR(255)
     , e_type           VARCHAR(255)
     , f_name           VARCHAR(255)
--                          
     , f_size           INTEGER
     , s_pct            REAL
     , isValid          INTEGER
--                          
     , f_modified       VARCHAR(255)
     , f_file           VARCHAR(255)
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_files
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_files');
.open  '{k[p2s2]}'
.header on
.tables
CREATE TABLE t_fns
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , fn_name          VARCHAR(255)
     , ps_name          VARCHAR(255)
     , p_no             VARCHAR(255)
--                          
     , s_no             VARCHAR(255)
     , exe_no           INTEGER
     , fn_cat           INTEGER
--                          
     , fn_type          VARCHAR(255)
     , fn_desc          VARCHAR(255)
     , run_type         INTEGER
--                          
     , status           VARCHAR(255)
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_fns
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_fns');
.open  '{k[p2s2]}'
.header on
.tables
CREATE TABLE t_runs
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , row_uuid         VARCHAR(32)
     , p_no_bgn         INTEGER
     , s_no_bgn         INTEGER
--                          
     , p_no_end         INTEGER
     , s_no_end         INTEGER
     , run_ela          VARCHAR(255)
--                          
     , run_status       INTEGER
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_runs
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_runs');
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
INSERT INTO p2s2.t_events
(      fn_name         
     , fn_args         
     , ps_name         
--                          
     , p_no            
     , s_no            
     , b_time          
--                          
     , e_time          
     , e_remarks       
     , ela_secs        
--                          
     , status          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
INSERT INTO p2s2.t_files
(      ps_name         
     , p_no            
     , s_no            
--                          
     , f_id            
     , e_id            
     , t_id            
--                          
     , e_name          
     , e_type          
     , f_name          
--                          
     , f_size          
     , s_pct           
     , isValid         
--                          
     , f_modified      
     , f_file          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
INSERT INTO p2s2.t_fns
(      fn_name         
     , ps_name         
     , p_no            
--                          
     , s_no            
     , exe_no          
     , fn_cat          
--                          
     , fn_type         
     , fn_desc         
     , run_type        
--                          
     , status          
--                          
)
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
INSERT INTO p2s2.t_runs
(      row_uuid        
     , p_no_bgn        
     , s_no_bgn        
--                          
     , p_no_end        
     , s_no_end        
     , run_ela         
--                          
     , run_status      
--                          
)
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
SELECT a.fn_name         
     , a.fn_args         
     , a.ps_name         
--                          
     , a.p_no            
     , a.s_no            
     , a.b_time          
--                          
     , a.e_time          
     , a.e_remarks       
     , a.ela_secs        
--                          
     , a.status          
  FROM p2s2.t_events a
;
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
SELECT a.ps_name         
     , a.p_no            
     , a.s_no            
--                          
     , a.f_id            
     , a.e_id            
     , a.t_id            
--                          
     , a.e_name          
     , a.e_type          
     , a.f_name          
--                          
     , a.f_size          
     , a.s_pct           
     , a.isValid         
--                          
     , a.f_modified      
     , a.f_file          
  FROM p2s2.t_files a
;
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
SELECT a.fn_name         
     , a.ps_name         
     , a.p_no            
--                          
     , a.s_no            
     , a.exe_no          
     , a.fn_cat          
--                          
     , a.fn_type         
     , a.fn_desc         
     , a.run_type        
--                          
     , a.status          
  FROM p2s2.t_fns a
;
.open  '{k[p1s0]}'
attach '{k[p2s2]}' as p2s2
SELECT a.row_uuid        
     , a.p_no_bgn        
     , a.s_no_bgn        
--                          
     , a.p_no_end        
     , a.s_no_end        
     , a.run_ela         
--                          
     , a.run_status      
  FROM p2s2.t_runs a
;
SELECT *
  FROM temp_table1
;
.open  '{k[p3s5]}'
.header on
.tables
CREATE TABLE t_runs
(      id               INTEGER PRIMARY KEY AUTOINCREMENT
--                          
     , row_uuid         VARCHAR(32)
     , p_no_bgn         INTEGER
     , s_no_bgn         INTEGER
--                          
     , p_no_end         INTEGER
     , s_no_end         INTEGER
     , run_ela          VARCHAR(255)
--                          
     , run_status       INTEGER
--                          
);
.tables
SELECT count(1) total_rows
FROM   t_runs
;
.width 3 20 12 7 10 5
.mode column
pragma table_info('t_runs');
.open  '{k[p1s0]}'
attach '{k[p3s5]}' as p3s5
INSERT INTO p3s5.t_runs
(      row_uuid        
     , p_no_bgn        
     , s_no_bgn        
--                          
     , p_no_end        
     , s_no_end        
     , run_ela         
--                          
     , run_status      
--                          
)
.open  '{k[p1s0]}'
attach '{k[p3s5]}' as p3s5
SELECT a.row_uuid        
     , a.p_no_bgn        
     , a.s_no_bgn        
--                          
     , a.p_no_end        
     , a.s_no_end        
     , a.run_ela         
--                          
     , a.run_status      
  FROM p3s5.t_runs a
;
SELECT *
  FROM amazing;
