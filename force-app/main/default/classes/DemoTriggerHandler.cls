public with sharing class DemoTriggerHandler extends TriggerHandler {
  public DemoTriggerHandler() {
  }

  public override void beforeUpdate() {
    //use for-loop for munipulate data
    for (Account item : (List<Account>) Trigger.new) {
      // do something
    }
  }

  public void badMunipluate() {
    Id demoId = Trigger.new[0].Id;
  }
}
