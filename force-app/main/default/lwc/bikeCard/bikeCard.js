import { LightningElement } from 'lwc';

export default class BikeCard extends LightningElement {
          name = 'Electra X4';
          description = 'A sweet bike built for comfort.';
          category = 'Mountain';
          material = 'Steel';
          price = '$58000';
          pictureURL = 'https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg';
}