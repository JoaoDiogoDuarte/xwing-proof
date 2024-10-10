from Jasmin require import JWord.

require import MLKEM Curve25519_Procedures Array128 Array32 Array6 List.
require import Keccak1600_Spec.

type publickey = Top.MLKEM.publickey * W8.t Array32.t. (* pk = [pk_M; pk_X] *)
type secretkey = Top.MLKEM.secretkey * W8.t Array32.t * W8.t Array32.t. (* sk = [sk_M; sk_X; pk_X] *)
type sharedsecret = W8.t Array32.t. (* SHA3256([XWingLabel; ss_M; ss_X; ct_X; pk_X]))*)
type ciphertext = Top.MLKEM.ciphertext * W8.t Array32.t. (* [ct_M; ct_X] *)


op SHA3_256_134_32 (x: W8.t Array6.t * W8.t Array32.t * W8.t Array32.t * W8.t Array32.t * W8.t Array32.t): W8.t Array32.t =
    Array32.of_list W8.zero (SHA3_256 (to_list x.`1 ++ to_list x.`2 ++ to_list x.`3 ++ to_list x.`4 ++ to_list x.`5)).

abbrev xwing_label = Array6.of_list witness [W8.of_int 92; W8.of_int 46; W8.of_int 47; W8.of_int 47; W8.of_int 94; W8.of_int 92].

module XWing = {

  proc kg_derand(coins: W8.t Array32.t * W8.t Array32.t * W8.t Array32.t) : publickey * secretkey = {
    var pk_M, sk_M, pk_X, pk_X_256, sk_X, pk, sk, seed_m0, seed_m1;

    seed_m0 <- coins.`1;
    seed_m1 <- coins.`2;
    sk_X <- coins.`3;

    (pk_M, sk_M) <@ MLKEM.kg_derand(seed_m1, seed_m1);
    pk_X_256 <@ CurveProcedures.scalarmult_base(W32u8.pack32 (to_list sk_X));
    pk_X <- Array32.of_list W8.zero (W32u8.to_list pk_X_256);
    pk <- (pk_M, pk_X);
    sk <- (sk_M, sk_X, pk_X);

    return (pk, sk);

  }

  proc enc_derand(pk : publickey, coins: W8.t Array32.t * W8.t Array32.t) : ciphertext * sharedsecret = {
        var pk_M, pk_X, ek_X, ct_X, ct_X_256, ss_X, ss_X_256, ss_M, ct_M, ss, ct, c_M;
        pk_M <- pk.`1;
        pk_X <- pk.`2;
        ek_X <- coins.`2;
        c_M <- coins.`1;

        ct_X_256 <@ CurveProcedures.scalarmult_base(W32u8.pack32 (to_list ek_X));
        ss_X_256 <@ CurveProcedures.scalarmult(W32u8.pack32 (to_list ek_X), W32u8.pack32 (to_list pk_X));

        ct_X <- Array32.of_list W8.zero (W32u8.to_list ct_X_256);
        ss_X <- Array32.of_list W8.zero (W32u8.to_list ss_X_256);

        (ct_M, ss_M) <@ MLKEM.enc_derand(pk_M, c_M);

        ss <- SHA3_256_134_32(xwing_label, ss_M, ss_X, ct_X, pk_X);
        ct <- (ct_M, ct_X);

        return (ct, ss);
  }

  proc dec(cph : ciphertext, sk : secretkey) : sharedsecret = {
        var sk_M, sk_X, pk_X, ct_M, ct_X, ss_M, ss_X_256, ss_X, ss;
        ct_M <- cph.`1;
        ct_X <- cph.`2;
        sk_M <- sk.`1;
        sk_X <- sk.`2;
        pk_X <- sk.`2;

        ss_M <@ MLKEM.dec(ct_M, sk_M);

        ss_X_256 <@ CurveProcedures.scalarmult(W32u8.pack32 (to_list sk_X), W32u8.pack32 (to_list pk_X));
        ss_X <- Array32.of_list W8.zero (W32u8.to_list ss_X_256);

        ss <- SHA3_256_134_32(xwing_label, ss_M, ss_X, ct_X, pk_X);
        return ss;
  }
}.
