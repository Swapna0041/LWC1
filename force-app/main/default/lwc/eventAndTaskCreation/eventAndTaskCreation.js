import { LightningElement,wire } from 'lwc';
import getEventDetails from '@salesforce/apex/MyEventTest.getEventDetails';
import getTaskDetails from '@salesforce/apex/MyEventTest.getTaskDetails';


export default class EventAndTaskCreation extends LightningElement {
    @wire(getEventDetails) 
    events; 
    @wire(getTaskDetails) 
    tasks;
}