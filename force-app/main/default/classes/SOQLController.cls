public with sharing class SOQLController {
  public String name;
  public List<Contact> queryResult;
  public void badQuery() {
    String qryString = 'SELECT Id FROM Contact WHERE ' + 'Name like \'%' + name + '%\'';
    queryResult = Database.query(qryString);
  }

  public void goodQuery() {
    String queryName = '%' + name + '%';
    queryResult = [SELECT Id FROM Contact WHERE IsDeleted = FALSE AND Name LIKE :queryName];
  }

  public void goodDynamicQuery() {
    String qryString = 'SELECT Id FROM Contact WHERE ' + 'Name like \'%' + String.escapeSingleQuotes(name) + '%\'';
    queryResult = Database.query(qryString);
  }
}
