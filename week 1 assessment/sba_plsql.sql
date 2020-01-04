SQL> create or replace trigger t3
  2  before insert or update or delete on reserves
  3  begin
  4  if to_char(sysdate,'dy') in ('mon','wed') then raise_application_error(-20323,'do not');
  5  end if;
  6  end;
  7  /

Trigger created.

SQL> spool off;
