create or replace type body ut_reporter is

  constructor function ut_reporter(self in out nocopy ut_reporter, a_output ut_output default ut_output_dbms_output()) return self as result is
  begin
    self.output := a_output;
    self.name := 'Null reporter';
    return;
  end;

  member procedure print_text(self in out nocopy ut_reporter, a_text varchar2) is
  begin
    self.output.send_line(a_text);
  end;

  member procedure print_clob(self in out nocopy ut_reporter, a_text clob) is
  begin
    self.output.send_clob(a_text);
  end;

  member procedure before_run(self in out nocopy ut_reporter, a_suites in ut_suite_items) is
  begin
    self.output.open();
  end;
  member procedure after_run(self in out nocopy ut_reporter, a_suites in ut_suite_items) is
  begin
    self.output.close();
  end;
  member procedure before_suite(self in out nocopy ut_reporter, a_suite in ut_suite_item) is
  begin
    null;
  end;
  member procedure before_suite_setup(self in out nocopy ut_reporter, a_suite in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_suite_setup(self in out nocopy ut_reporter, a_suite in ut_suite_item) is
  begin
    null;
  end;
  member procedure before_suite_item(self in out nocopy ut_reporter, a_suite in ut_suite_item, a_item_index pls_integer) is
  begin
    null;
  end;
  member procedure after_suite_item(self in out nocopy ut_reporter, a_suite in ut_suite_item, a_item_index pls_integer) is
  begin
    null;
  end;
  member procedure before_suite_teardown(self in out nocopy ut_reporter, a_suite in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_suite_teardown(self in out nocopy ut_reporter, a_suite in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_suite(self in out nocopy ut_reporter, a_suite in ut_suite_item) is
  begin
    null;
  end;
  member procedure before_test(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure before_test_setup(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_test_setup(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure before_test_execute(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_test_execute(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure before_test_teardown(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_test_teardown(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;
  member procedure after_test(self in out nocopy ut_reporter, a_test in ut_suite_item) is
  begin
    null;
  end;

end;
/
