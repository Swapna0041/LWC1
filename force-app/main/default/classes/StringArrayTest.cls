public with sharing class StringArrayTest {

    public static List<String> generateStringArray(Integer abc) {
        List<String> testCollection  = new List<String>();

      for (Integer i = 0; i < abc; i++) {
          testCollection.add('Test '+i);
      }
       
       return testCollection;

    }
}
