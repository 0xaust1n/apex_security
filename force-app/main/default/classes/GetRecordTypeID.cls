public with sharing class GetRecordTypeID {
  public void GetRecordTypeIDBySchema() {
    Schema.DescribeSObjectResult dsr = Contact.SObjectType.getDescribe();
    List<Schema.RecordTypeInfo> rtiList = dsr.getRecordTypeInfos();
    for (Schema.RecordTypeInfo item : rtiList) {
      System.debug('ID:' + item.getRecordTypeId());
      System.debug('Name:' + item.getName());
    }
  }

  public void GetRecordTypeIDByDeveloperName(String developerName) {
    /* e.g. : Active */
    List<RecordType> rtList = [SELECT Id, Name, DeveloperName FROM RecordType WHERE DeveloperName = :developerName LIMIT 1];
    for (RecordType item : rtList) {
      System.debug('ID:' + item.Id);
      System.debug('Name:' + item.Name);
    }
  }
}
