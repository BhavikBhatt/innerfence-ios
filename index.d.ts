declare module "hungry-inner-fence" {

    export interface PaymentConfirmation {
    }

    export interface PaymentParams {
        address: String,
        amount: String,
        curreny: String,
        city: String,
        company: String,
        description: String,
        email: String,
        firstName: String,
        invoiceNumber: String,
        lastName: String,
        phone: String,
        state: String,
        zip: String,
        recordId: String,
    }


    export interface EventParams {
        name: String,
        location: String,
    }

    export interface EventConfirmation {
        name: String,
        location: String,
    }
    
    export class RNInnerfence {
        static addEvent(name: String, location: String): Promise<void>;
    }

    export default RNInnerfence;

}