trigger Demo on Account(before insert, after insert) {
  new DemoTriggerHandler().run();
}
