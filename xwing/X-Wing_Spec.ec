from Jasmin require import JWord.

require import MLKEM Curve25519_Procedures Array32 Array6 List.

type publickey = Top.MLKEM.publickey * W8.t Array32.t. (* pk = [pk_M; pk_X] *)
type secretkey = Top.MLKEM.secretkey * W8.t Array32.t * W8.t Array32.t. (* sk = [sk_M; sk_X; pk_X] *)
type sharedsecret = W8.t Array32.t. (* SHA3256([XWingLabel; ss_M; ss_X; ct_X; pk_X]))*)
type ciphertext = W8.t Array32.t * Top.MLKEM.ciphertext. (* [ct_M; ct_X] *)
type xwing_label = W8.t Array6.t.

module XWing = {

  proc kg_derand(coins: W8.t Array32.t * W8.t Array32.t * W8.t Array32.t) : publickey * secretkey = {
    var pk_M, sk_M, pk_X, pk_X_256, sk_X, pk, sk, seed_m0, seed_m1;

    seed_m0 <- coins.`1;
    seed_m1 <- coins.`2;
    sk_X <- coins.`3;
    pk_M <- witness;
    sk_M <- witness;

    (pk_M, sk_M) <@ MLKEM.kg_derand(seed_m1, seed_m1);
    pk_X_256 <@ CurveProcedures.scalarmult_base(W32u8.pack32 (to_list sk_X));
    pk_X <- Array32.of_list W8.zero (W32u8.to_list pk_X_256);
    pk <- (pk_M, pk_X);
    sk <- (sk_M, sk_X, pk_X);

    return (pk, sk);

  }

  proc enc_derand(pk : publickey, coins: W8.t Array32.t) : ciphertext * sharedsecret = {

  }

  proc dec(cph : ciphertext, sk : secretkey) : sharedsecret = {

  }
}.
