declare module "hungry-inner-fence" {

    export interface PaymentConfirmation {
    }

    export interface PaymentParams {
        address: String,
        amount: String,
        currency: String,
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
        country: String,
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
    }

    export default RNInnerfence;

}