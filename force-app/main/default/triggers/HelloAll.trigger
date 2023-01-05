trigger HelloAll on Account (before insert) {
          System.debug('Hello all everyBody!!!');
}