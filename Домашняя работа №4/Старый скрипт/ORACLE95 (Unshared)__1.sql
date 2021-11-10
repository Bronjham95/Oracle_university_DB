drop FUNCTION table_DDL;
drop FUNCTION index_DDL;
drop FUNCTION sequence_DDL;
drop FUNCTION trigger_DDL;
drop FUNCTION package_DDL;

-- FOR TABLE:

create function table_DDL(  f_owner in varchar2, 
                            f_object_name in varchar2, 
                            f_object_type in varchar2 )
                            return CLOB
                                        is
           -- курсор:
            cursor cur_table is
                select table_name, column_name, data_type, data_length
                from all_tab_columns
                    where owner = f_owner AND 
                        table_name = f_object_name;
            -- переменные:
            v_result clob;
            v_table_name varchar2(20);
            v_column_name varchar2(20);
            v_data_type varchar2(20);
            v_data_length varchar2(20);
        begin        
        -- Вывод таблицы:      
        v_result := 'Create table' || chr(6) || f_object_name ||' (' || chr(10);
            open cur_table;
                loop
                    fetch cur_table
                        into v_table_name, v_column_name, v_data_type, v_data_length;
            exit when cur_table%notfound;
            
            v_result := concat(v_result, chr(6) || v_column_name || chr(6) || v_data_type ||
            '(' || v_data_length || ')'|| chr(6));
                end loop;
                return v_result;
        
        end table_DDL;
        
-- FOR INDEX:

create function index_DDL ( f_owner in varchar2, 
                            f_object_name in varchar2, 
                            f_object_type in varchar2 )
                            return CLOB 
                                        is
        cursor cur_idx is
            select I2.table_owner, I2.table_name, I2.index_name, I1.column_name from ALL_IND_COLUMNS I1 
                INNER JOIN
                    ALL_INDEXES I2 ON I1.table_owner = I2.table_owner
                        where I1.table_owner = f_owner AND I1.index_name = f_object_name;
            
        v_result clob;
        v_table_owner varchar2(30);
        v_table_name varchar2(50);
        v_index_name varchar2(40);
        v_column_name varchar2(40);
        
        BEGIN
        -- Вывод индекса:
        open cur_idx;
            loop
                fetch cur_idx
                    into v_table_owner, v_table_name, v_index_name, v_column_name;
            exit when cur_idx%notfound;
        v_result := 'CREATE INDEX' || v_index_name || 'ON' || v_table_name || '(' || v_column_name || ')';
            end loop;
            return v_result;
        end index_DDL;

-- FOR SEQUENCE

create function sequence_DDL ( f_owner in varchar2, 
                            f_object_name in varchar2, 
                            f_object_type in varchar2 )
                            return CLOB 
                                        is
        cursor cur_seq is
            select sequence_owner, sequence_name, min_value, increment_by from all_sequences
                where sequence_owner = f_owner AND sequence_name = f_object_name;
            
            v_result CLOB;
                    v_sequence_owner varchar2(30);
                    v_sequence_name varchar2(50);
                    v_min_name varchar2(40);
                    v_increment_by varchar2(40);
                    
                    BEGIN
                    -- вывод последовательности
                    open cur_seq;
                        loop
                            fetch cur_seq
                                into v_sequence_owner, v_sequence_name, v_min_name, v_increment_by;
                    exit when cur_seq%notfound;
            v_result := 'CREATE sequence' || v_sequence_name || 
                        'START WITH' || v_min_name ||
                        'INCREMENT BY' || v_increment_by;
                        end loop;
                        return v_result;
                    end sequence_DDL;

-- FOR TRIGGER:

create function trigger_DDL ( f_owner in varchar2, 
                            f_object_name in varchar2, 
                            f_object_type in varchar2 )
                            return CLOB
                                is
        cursor cur_tr is
            select owner, trigger_name, description, trigger_body from all_triggers
                where owner = f_owner AND trigger_name = f_object_name;
            
            v_result CLOB;
                    v_owner varchar2(30);
                    v_trigger_name varchar2(50);
                    v_description varchar2(100);
                    v_trigger_body varchar2(100);
                
            BEGIN
                    -- вывод триггера
                    open cur_tr;
                        loop
                            fetch cur_tr
                                into v_owner, v_trigger_name, v_description, v_trigger_body;
                    exit when cur_tr%notfound;
            v_result := 'CREATE trigger' || v_description || ' \n' ||
                        v_trigger_body;
                        end loop;
                        return v_result;
                    end trigger_DDL;
        
-- FOR PACKAGE:

create function package_DDL ( f_owner in varchar2, 
                            f_object_name in varchar2, 
                            f_object_type in varchar2 )
                            return CLOB
                                is
        cursor cur_pkg is
            select text from all_source
                where  type = f_object_type AND name = f_object_name
                    order by line;
            
            v_result CLOB;
                    v_type varchar2(30);
                    v_name varchar2(50);
                    v_text CLOB;
            BEGIN
                    -- вывод пакета
                    open cur_pkg;
                        loop
                            fetch cur_pkg
                                into v_text;
                    exit when cur_pkg%notfound;
            v_result := v_text;
                        end loop;
                        return v_result;
                    end package_DDL;

        