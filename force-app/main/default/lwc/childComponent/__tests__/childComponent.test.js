import { LightningElement } from 'lwc';
export default class ChildComponent extends LightningElement {
    sendMessage() {
        this.dispatchEvent(new CustomEvent('notify', { detail: 'Hello from Child!' }));
    }
}
