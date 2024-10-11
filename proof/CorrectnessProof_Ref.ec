(* not valid right now, code needs updating *)

require import AllCore Int IntDiv List XWing_Spec Xwing_extracted_ref.
from Jasmin require import JModel JWord JMemory.
require import Array32 Array96 Array1152 Array1184 Array2400.

op valid_ptr(p : int, o : int) = 0 <= o => 0 <= p /\ p + o < W64.modulus.

op load_array32(m : global_mem_t, p : address) : W8.t Array32.t =
      Array32.init (fun i => m.[p + i]).

op load_array1152(m : global_mem_t, p : address) : W8.t Array1152.t =
      Array1152.init (fun i => m.[p + i]).

op load_array1184(m : global_mem_t, p : address) : W8.t Array1184.t =
      Array1184.init (fun i => m.[p + i]).

op load_array2400(m : global_mem_t, p : address) : W8.t Array2400.t =
      Array2400.init (fun i => m.[p + i]).

op valid_disj_reg(p1 : address, l1 : int, p2 : address, l2 : int) =
      valid_ptr p1 l1 /\ valid_ptr p2 l2 /\ ((p1 + l1) <= p2  || (p2 + l2) <= p1).

op touches2 (m m' : global_mem_t) (p1 : address) (len1 : int) (p2 : address) (len2 : int) : bool =
  forall (a : int), ! (p1 <=  a < p1+len1) =>  ! (p2 <=  a < p2+len2) => m'.[a] = m.[a].

lemma eq_spec_impl_xwing_kg_dereand_ref4 mem _pkp _skp:
    equiv [M._crypto_xkem_keypair_derand_jazz ~ XWing.kg_derand:
        Glob.mem{1} = mem /\
        to_uint pkp{1} = _pkp /\
        to_uint skp{1} = _skp /\
        coins{2}.`1 = Array32.init (fun i => randomness{1}.[0 + i])    /\
        coins{2}.`2 = Array32.init (fun i => randomness{1}.[32 + i])   /\
        coins{2}.`3 = Array32.init (fun i => randomness{1}.[64 + i])   /\
        valid_disj_reg _pkp (1216) _skp (2496)
        ==>
        touches2 Glob.mem{1} mem _pkp (1216) _skp (2496)                /\
        let (pk,sk) = res{2} in let (pk_M, pk_X) = pk in
          sk.`1.`1    =    load_array1152 Glob.mem{1} _skp /\
          sk.`1.`2.`1 = load_array1152    Glob.mem{1} (_skp + 1152) /\
          sk.`1.`2.`2 = load_array32      Glob.mem{1} (_skp + 2304) /\
          sk.`1.`3    = load_array32      Glob.mem{1} (_skp + 2336) /\
          sk.`1.`4    = load_array32      Glob.mem{1} (_skp + 2368) /\
          sk.`2       = load_array32      Glob.mem{1} (_skp + 2400)              /\
          sk.`3       = load_array32      Glob.mem{1} (_skp + 2432)                /\
          pk_M.`1     = load_array1152    Glob.mem{1} _pkp  /\
          pk_M.`2     = load_array32      Glob.mem{1} (_pkp+1152) /\
          pk_X        = load_array32      Glob.mem{1} (_pkp+1216)
    ].
proc.
    auto => />.
    move => &1 &2 [H] [H0] [H1] [H2] [H3] [H4] [H5] [H6] H7.
    move => GM pk_M pk_X_bits sk_M sk_X_bits.
    move => [H8] [H9] [H10] [H11] [H12] [H13] [H14] [H15] [H16] [H17] H18 H19 H20.
    do split.
    + rewrite -H0 -H1 -H. smt.
    rewrite /touches => a Ht0 Ht1 />.
qed.
