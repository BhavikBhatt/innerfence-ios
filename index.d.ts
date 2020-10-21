declare module "hungry-inner-fence" {

   export interface PaymentConfirmation {
      status: String,
      recordId: String,
      transactionId: String,
      amount: String,
      currency: String,
      cardType: String,
      redactedCardNumber: String,
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
      static paymentRequest(email: String): Promise<PaymentConfirmation>;
    }

    export default RNInnerfence;

}