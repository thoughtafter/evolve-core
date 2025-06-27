; ModuleID = 'evolve_inner_core.890a26d00ef1129c-cgu.0'
source_filename = "evolve_inner_core.890a26d00ef1129c-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"object::Object" = type { i64, ptr }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h02825bf31b279f6dE" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_477d6fd19596379e27b9bd4358550877 = private unnamed_addr constant [11 x i8] c"LayoutError", align 1
@alloc_56364bedf34ce628f32d679ecc390c52 = private unnamed_addr constant [117 x i8] c"/home/lemur/dotfiles/.rustup/toolchains/1.87-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/slice.rs", align 1
@alloc_5c61c6fce112c89d9092413237e17979 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_56364bedf34ce628f32d679ecc390c52, [16 x i8] c"u\00\00\00\00\00\00\00\BE\01\00\00\1D\00\00\00" }>, align 8
@alloc_204a7f2109033cc676c2fc41bdad3753 = private unnamed_addr constant [30 x i8] c"evolve_inner_core/src/array.rs", align 1
@alloc_19e0d9ae61daa6b8e2f1aeb8b0710cdd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_204a7f2109033cc676c2fc41bdad3753, [16 x i8] c"\1E\00\00\00\00\00\00\00\17\00\00\00\11\00\00\00" }>, align 8
@alloc_c21ab44a88bfab6885db655a76892ac7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_204a7f2109033cc676c2fc41bdad3753, [16 x i8] c"\1E\00\00\00\00\00\00\00!\00\00\00\0B\00\00\00" }>, align 8
@alloc_e9164108e3a8c437bd8ee95ca79fdb9f = private unnamed_addr constant [16 x i8] zeroinitializer, align 8
@alloc_1a3b627145dc0fe65f658cb38c278359 = private unnamed_addr constant [6 x i8] c"Object", align 1
@vtable.2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0b72a0c3171fc4b1E" }>, align 8
@alloc_a8456fb127012b2b67e2f034dd8cd60c = private unnamed_addr constant [4 x i8] c"NULL", align 1
@alloc_5f51429af5bff0c26097b04b86db779e = private unnamed_addr constant [5 x i8] c"FALSE", align 1
@alloc_68f2a445488f20082ceefa0ab63c19b2 = private unnamed_addr constant [4 x i8] c"TRUE", align 1
@alloc_f20ab71f06765100d92312e3a01bb989 = private unnamed_addr constant [3 x i8] c"APP", align 1
@vtable.3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h5e775334de869d8bE" }>, align 8
@alloc_250b91d3432a6fe0c6c420b70e341432 = private unnamed_addr constant [4 x i8] c"argc", align 1
@alloc_e4771d6525973485a812fe783cd28050 = private unnamed_addr constant [7 x i8] c"POINTER", align 1
@vtable.4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he7b0ad01b0a66b25E" }>, align 8
@alloc_0869314c06f5536ea9cfbda8e3d75f40 = private unnamed_addr constant [6 x i8] c"STRING", align 1
@vtable.5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17h9519d4d0f667b9d2E" }>, align 8
@alloc_f4db005b851b7259d0b6ded255335a8c = private unnamed_addr constant [3 x i8] c"I64", align 1
@vtable.6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN73_$LT$ordered_float..OrderedFloat$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6fbfed60165d6167E" }>, align 8
@alloc_82b1bf185e1b461c8b8241303ddf0563 = private unnamed_addr constant [3 x i8] c"F64", align 1
@alloc_22f0e91223dabf1bef5f103b8560c3f1 = private unnamed_addr constant [5 x i8] c"TUPLE", align 1
@alloc_a2e5f6be2a03b9f5ed256baff3399a84 = private unnamed_addr constant [4 x i8] c"size", align 1
@vtable.7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN17evolve_inner_core6object5debug80_$LT$impl$u20$core..fmt..Debug$u20$for$u20$evolve_inner_core..object..Object$GT$3fmt17h0ade02e4520b77fdE" }>, align 8
@alloc_ac368d9a707b52d21ed3ba3af2bad0d5 = private unnamed_addr constant [3 x i8] c"[1]", align 1
@alloc_5b8c386f77829feb42882cd52d13ac4a = private unnamed_addr constant [3 x i8] c"[2]", align 1
@alloc_3fb291eefbcf3fa3c1d2137966dc6e7c = private unnamed_addr constant [7 x i8] c"CLOSURE", align 1
@vtable.8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u16$GT$3fmt17h7a8e99faa92b5001E" }>, align 8
@alloc_63744475ac4d11caf5a224426ca4a84c = private unnamed_addr constant [8 x i8] c"class_id", align 1
@alloc_a6c9073709f4dc3faf09868fececa07c = private unnamed_addr constant [3 x i8] c"aux", align 1
@alloc_eb15813ccc20d20673372177ea4f1c88 = private unnamed_addr constant [3 x i8] c"ptr", align 1
@alloc_50981fdc3d28c727f94146500adf1421 = private unnamed_addr constant [41 x i8] c"assertion failed: this.is_intrinsic_win()", align 1
@alloc_3c256bd16f1162804612e53b4407e585 = private unnamed_addr constant [40 x i8] c"evolve_inner_core/src/intrinsic/loops.rs", align 1
@alloc_332024b46f60319414f831d326a815b7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3c256bd16f1162804612e53b4407e585, [16 x i8] c"(\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8
@alloc_6f27fed333f105f471eaa5362a49c01f = private unnamed_addr constant [16 x i8] c"\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@alloc_40ec68d6228a8f6da03af3939cc8bd3e = private unnamed_addr constant [30 x i8] c"evolve_inner_core/src/tuple.rs", align 1
@alloc_5b602e1a4cb4cf5305617b913cb00c63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_40ec68d6228a8f6da03af3939cc8bd3e, [16 x i8] c"\1E\00\00\00\00\00\00\00D\00\00\00\15\00\00\00" }>, align 8
@alloc_6d2baaaa10e0f232f5ed3d3681c3bb0e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_40ec68d6228a8f6da03af3939cc8bd3e, [16 x i8] c"\1E\00\00\00\00\00\00\00T\00\00\00C\00\00\00" }>, align 8

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he7b0ad01b0a66b25E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_3.1 = load i64, ptr %0, align 8, !noundef !3
; call <core::ffi::c_str::CStr as core::fmt::Debug>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN59_$LT$core..ffi..c_str..CStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h94decb9d48d51cf8E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  ret i1 %_0
}

; core::fmt::num::<impl core::fmt::Debug for i64>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17h9519d4d0f667b9d2E"(ptr noalias noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %f, i64 16
  %_4 = load i32, ptr %0, align 8, !noundef !3
  %_3 = and i32 %_4, 33554432
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 67108864
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for i64>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h59560f0032de1340E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h4f386850af10b31bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for i64>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h14f9476d065f7d83E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; core::fmt::num::<impl core::fmt::Debug for u16>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u16$GT$3fmt17h7a8e99faa92b5001E"(ptr noalias noundef readonly align 2 dereferenceable(2) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %f, i64 16
  %_4 = load i32, ptr %0, align 8, !noundef !3
  %_3 = and i32 %_4, 33554432
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 67108864
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for u16>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hf874c5c03ecb5b11E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h8616bceb8eb636d7E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for u16>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h3c55c7e9e5b63cbfE"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; core::fmt::num::<impl core::fmt::Debug for u32>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h5e775334de869d8bE"(ptr noalias noundef readonly align 4 dereferenceable(4) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %f, i64 16
  %_4 = load i32, ptr %0, align 8, !noundef !3
  %_3 = and i32 %_4, 33554432
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 67108864
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17hb705dd44df3376ccE"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h26475d19456b9dacE"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h8ef525817f1029d7E"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; <*const T as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0b72a0c3171fc4b1E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %self.val = load ptr, ptr %self, align 8, !noundef !3
  %_4.i = ptrtoint ptr %self.val to i64
; call core::fmt::pointer_fmt_inner
  %0 = tail call noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hfcf647fb9e267042E(i64 noundef %_4.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  ret i1 %0
}

; alloc::collections::vec_deque::VecDeque<T,A>::grow
; Function Attrs: noinline nounwind nonlazybind
define void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17hbd7eed07c6143c84E"(ptr noalias nocapture noundef align 8 dereferenceable(32) %self, ptr noalias noundef readonly align 8 dereferenceable(24) %0) unnamed_addr #2 {
start:
  %self1 = load i64, ptr %self, align 8, !range !5, !noundef !3
; call alloc::raw_vec::RawVec<T,A>::grow_one
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5e137b346b078229E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %self, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %self1.i = load i64, ptr %self, align 8, !range !5, !alias.scope !6, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5.i = load i64, ptr %1, align 8, !alias.scope !6, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_7.i = load i64, ptr %2, align 8, !alias.scope !6, !noundef !3
  %_6.i = sub i64 %self1, %_7.i
  %_4.not.i = icmp ugt i64 %_5.i, %_6.i
  br i1 %_4.not.i, label %bb2.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h2b861be16624773dE.exit"

bb2.i:                                            ; preds = %start
  %head_len.i = sub i64 %self1, %_5.i
  %tail_len.i = sub i64 %_7.i, %head_len.i
  %_12.i = icmp ule i64 %head_len.i, %tail_len.i
  %_14.i = sub nsw i64 %self1.i, %self1
  %_13.not.i = icmp ult i64 %_14.i, %tail_len.i
  %or.cond.i = select i1 %_12.i, i1 true, i1 %_13.not.i
  br i1 %or.cond.i, label %bb6.i, label %bb4.i

bb6.i:                                            ; preds = %bb2.i
  %new_head.i = sub i64 %self1.i, %head_len.i
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_93.i = load ptr, ptr %3, align 8, !alias.scope !6, !nonnull !3, !noundef !3
  %_73.i = getelementptr inbounds nuw %"object::Object", ptr %_93.i, i64 %_5.i
  %dst.i = getelementptr inbounds nuw %"object::Object", ptr %_93.i, i64 %new_head.i
  %4 = shl i64 %head_len.i, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %dst.i, ptr nonnull align 8 %_73.i, i64 %4, i1 false), !noalias !6
  store i64 %new_head.i, ptr %1, align 8, !alias.scope !6
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h2b861be16624773dE.exit"

bb4.i:                                            ; preds = %bb2.i
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_53.i = load ptr, ptr %5, align 8, !alias.scope !6, !nonnull !3, !noundef !3
  %dst2.i = getelementptr inbounds nuw %"object::Object", ptr %_53.i, i64 %self1
  %6 = shl i64 %tail_len.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %dst2.i, ptr nonnull align 8 %_53.i, i64 %6, i1 false), !noalias !6
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h2b861be16624773dE.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h2b861be16624773dE.exit": ; preds = %start, %bb6.i, %bb4.i
  ret void
}

; alloc::raw_vec::finish_grow
; Function Attrs: cold nounwind nonlazybind
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h24bb7d043ca5ed92E(ptr dead_on_unwind noalias nocapture noundef nonnull writable writeonly align 8 dereferenceable(24) initializes((0, 24)) %_0, i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1, ptr noalias nocapture noundef nonnull readonly align 8 dereferenceable(24) %current_memory) unnamed_addr #3 {
start:
  %2 = getelementptr inbounds nuw i8, ptr %current_memory, i64 8
  %3 = load i64, ptr %2, align 8, !range !9, !noundef !3
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %ptr = load ptr, ptr %current_memory, align 8, !nonnull !3, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %current_memory, i64 16
  %5 = load i64, ptr %4, align 8, !noundef !3
  %cond = icmp eq i64 %3, %0
  tail call void @llvm.assume(i1 %cond)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb2.i.i, label %bb3.i.i

bb2.i.i:                                          ; preds = %bb3
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %bb2.i.i.i, label %bb4.i.i.i

bb2.i.i.i:                                        ; preds = %bb2.i.i
  %data.i.i.i = getelementptr i8, ptr null, i64 %0
  br label %bb6

bb4.i.i.i:                                        ; preds = %bb2.i.i
  %8 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
; call __rustc::__rust_alloc
  %_0.i.i.i.i = tail call noalias noundef ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) %0) #32
  br label %bb6

bb3.i.i:                                          ; preds = %bb3
  %cond.i.i = icmp uge i64 %1, %5
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %9 = tail call noundef ptr @_RNvCscSpY9Juk0HT_7___rustc14___rust_realloc(ptr noundef nonnull %ptr, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1) #32
  br label %bb6

bb2:                                              ; preds = %start
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %bb2.i.i12, label %bb4.i.i10

bb2.i.i12:                                        ; preds = %bb2
  %data.i.i = getelementptr i8, ptr null, i64 %0
  br label %bb6

bb4.i.i10:                                        ; preds = %bb2
  %11 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
; call __rustc::__rust_alloc
  %_0.i.i.i = tail call noalias noundef ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) %0) #32
  br label %bb6

bb6:                                              ; preds = %bb4.i.i10, %bb2.i.i12, %bb3.i.i, %bb4.i.i.i, %bb2.i.i.i
  %_0.sroa.0.0.i.i.pn = phi ptr [ %9, %bb3.i.i ], [ %data.i.i.i, %bb2.i.i.i ], [ %_0.i.i.i.i, %bb4.i.i.i ], [ %data.i.i, %bb2.i.i12 ], [ %_0.i.i.i, %bb4.i.i10 ]
  %12 = icmp eq ptr %_0.sroa.0.0.i.i.pn, null
  %13 = inttoptr i64 %0 to ptr
  %spec.select = select i1 %12, ptr %13, ptr %_0.sroa.0.0.i.i.pn
  %spec.select4 = zext i1 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %spec.select, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %1, ptr %15, align 8
  store i64 %spec.select4, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nounwind nonlazybind
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5e137b346b078229E"(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, ptr noalias noundef readonly align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_26.i = alloca [24 x i8], align 8
  %self6.i = alloca [24 x i8], align 8
  %self1 = load i64, ptr %self, align 8, !range !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %v112.i = shl nuw i64 %self1, 1
  %1 = icmp eq i64 %self1, 0
  %_0.sroa.0.0.sroa.speculated.i.i = select i1 %1, i64 1, i64 %v112.i
  %_0.sroa.0.0.sroa.speculated.i40.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.sroa.speculated.i.i, i64 4)
  %_9.0.i.i.i = shl i64 %_0.sroa.0.0.sroa.speculated.i40.i, 4
  %_9.1.i.i.i = icmp ugt i64 %_0.sroa.0.0.sroa.speculated.i.i, 1152921504606846975
  %_14.i.i.i = icmp ugt i64 %_9.0.i.i.i, 9223372036854775800
  %2 = or i1 %_9.1.i.i.i, %_14.i.i.i
  br i1 %2, label %bb2, label %bb22.i

bb22.i:                                           ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26.i), !noalias !10
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 8
  br i1 %1, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E.exit.i", label %bb4.i.i

bb4.i.i:                                          ; preds = %bb22.i
  %self.val39.i = load ptr, ptr %3, align 8, !alias.scope !10, !nonnull !3, !noundef !3
  %4 = shl nuw i64 %self1, 4
  store ptr %self.val39.i, ptr %_26.i, align 8, !alias.scope !13, !noalias !10
  %_15.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26.i, i64 16
  store i64 %4, ptr %_15.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !13, !noalias !10
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E.exit.i": ; preds = %bb4.i.i, %bb22.i
  %.sink.i.i = phi i64 [ 8, %bb4.i.i ], [ 0, %bb22.i ]
  %5 = getelementptr inbounds nuw i8, ptr %_26.i, i64 8
  store i64 %.sink.i.i, ptr %5, align 8, !alias.scope !13, !noalias !10
; call alloc::raw_vec::finish_grow
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h24bb7d043ca5ed92E(ptr noalias nocapture noundef align 8 dereferenceable(24) %self6.i, i64 noundef 8, i64 noundef %_9.0.i.i.i, ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %_26.i) #32, !noalias !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26.i), !noalias !10
  %_53.i = load i64, ptr %self6.i, align 8, !range !16, !noalias !10, !noundef !3
  %6 = trunc nuw i64 %_53.i to i1
  %7 = getelementptr inbounds nuw i8, ptr %self6.i, i64 8
  br i1 %6, label %bb23.i, label %bb3

bb23.i:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E.exit.i"
  %e.0.i = load i64, ptr %7, align 8, !range !9, !noalias !10, !noundef !3
  %8 = getelementptr inbounds nuw i8, ptr %self6.i, i64 16
  %e.1.i = load i64, ptr %8, align 8, !noalias !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  br label %bb2

bb2:                                              ; preds = %bb23.i, %start
  %_0.sroa.6.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb23.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb23.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5b039796a4ecc373E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) #33
  unreachable

bb3:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E.exit.i"
  %v.016.i = load ptr, ptr %7, align 8, !noalias !10, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  store ptr %v.016.i, ptr %3, align 8, !alias.scope !10
  store i64 %_0.sroa.0.0.sroa.speculated.i40.i, ptr %self, align 8, !alias.scope !10
  ret void
}

; <core::alloc::layout::LayoutError as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h02825bf31b279f6dE"(ptr noalias nocapture nonnull readonly align 1 %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
; call core::fmt::Formatter::write_str
  %_0 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h448b00798f40aad6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 @alloc_477d6fd19596379e27b9bd4358550877, i64 noundef 11) #32
  ret i1 %_0
}

; <ordered_float::OrderedFloat<T> as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN73_$LT$ordered_float..OrderedFloat$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6fbfed60165d6167E"(ptr noalias noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
; call core::fmt::float::<impl core::fmt::Debug for f64>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h5e3719bc82d0d63cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #32
  ret i1 %_0
}

; Function Attrs: alwaysinline nounwind nonlazybind
define noalias noundef nonnull align 8 dereferenceable(32) ptr @evolve_array_literal(i64 noundef %size) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %size, i64 8)
  %_9.0.i.i.i.i = shl i64 %_0.sroa.0.0.sroa.speculated.i, 4
  %_9.1.i.i.i.i = icmp ugt i64 %size, 1152921504606846975
  %_14.i.i.i.i = icmp ugt i64 %_9.0.i.i.i.i, 9223372036854775800
  %0 = or i1 %_9.1.i.i.i.i, %_14.i.i.i.i
  br i1 %0, label %bb3.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i": ; preds = %start
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !17
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i = tail call noalias noundef align 8 ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_9.0.i.i.i.i, i64 noundef range(i64 1, 9) 8) #32, !noalias !17
  %2 = icmp eq ptr %_0.i.i.i.i.i, null
  br i1 %2, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE.exit"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i" ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5b039796a4ecc373E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_9.0.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_19e0d9ae61daa6b8e2f1aeb8b0710cdd) #33
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i"
  %3 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !22
; call __rustc::__rust_alloc
  %_0.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !22
  %4 = icmp eq ptr %_0.i.i.i, null
  br i1 %4, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17he7dced161648df71E.exit, !prof !25

bb2.i:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE.exit"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he8b8c0d2be2abab7E(i64 noundef 8, i64 noundef 32) #33, !noalias !22
  unreachable

_ZN5alloc5alloc15exchange_malloc17he7dced161648df71E.exit: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE.exit"
  store i64 %_0.sroa.0.0.sroa.speculated.i, ptr %_0.i.i.i, align 8
  %array.sroa.2.0._0.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i, i64 8
  store ptr %_0.i.i.i.i.i, ptr %array.sroa.2.0._0.i.i.i.sroa_idx, align 8
  %array.sroa.3.0._0.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %array.sroa.3.0._0.i.i.i.sroa_idx, i8 0, i64 16, i1 false)
  ret ptr %_0.i.i.i
}

; Function Attrs: alwaysinline nounwind nonlazybind
define void @evolve_array_inbounds_push(ptr noalias nocapture noundef align 8 dereferenceable(32) %array, i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %0 = getelementptr inbounds nuw i8, ptr %array, i64 24
  %_8.i = load i64, ptr %0, align 8, !alias.scope !26, !noundef !3
  %self1.i = load i64, ptr %array, align 8, !range !5, !alias.scope !26, !noundef !3
  %_3.i = icmp eq i64 %_8.i, %self1.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h7d5ab770a2c8a926E.exit"

bb1.i:                                            ; preds = %start
; call alloc::collections::vec_deque::VecDeque<T,A>::grow
  tail call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17hbd7eed07c6143c84E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %array, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c21ab44a88bfab6885db655a76892ac7) #32
  %idx.pre.i = load i64, ptr %0, align 8, !alias.scope !26
  %self3.pre.i = load i64, ptr %array, align 8, !range !5, !alias.scope !26
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h7d5ab770a2c8a926E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h7d5ab770a2c8a926E.exit": ; preds = %start, %bb1.i
  %self3.i = phi i64 [ %self3.pre.i, %bb1.i ], [ %self1.i, %start ]
  %idx.i = phi i64 [ %idx.pre.i, %bb1.i ], [ %_8.i, %start ]
  %1 = getelementptr inbounds nuw i8, ptr %array, i64 16
  %idx2.i = load i64, ptr %1, align 8, !alias.scope !26, !noundef !3
  %logical_index.i = add i64 %idx2.i, %idx.i
  %_21.not.i = icmp ult i64 %logical_index.i, %self3.i
  %2 = select i1 %_21.not.i, i64 0, i64 %self3.i
  %off.sroa.0.0.i = sub nuw i64 %logical_index.i, %2
  %3 = getelementptr inbounds nuw i8, ptr %array, i64 8
  %_24.i = load ptr, ptr %3, align 8, !alias.scope !26, !nonnull !3, !noundef !3
  %_22.i = getelementptr inbounds nuw %"object::Object", ptr %_24.i, i64 %off.sroa.0.0.i
  store i64 %value.0, ptr %_22.i, align 8, !noalias !26
  %4 = getelementptr inbounds nuw i8, ptr %_22.i, i64 8
  store ptr %value.1, ptr %4, align 8, !noalias !26
  %5 = add i64 %idx.i, 1
  store i64 %5, ptr %0, align 8, !alias.scope !26
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve_array_get(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array, i64 noundef %index) unnamed_addr #5 {
start:
  %adjusted_index = add i64 %index, -1
  %0 = getelementptr inbounds nuw i8, ptr %array, i64 24
  %_4.i = load i64, ptr %0, align 8, !alias.scope !29, !noundef !3
  %_3.i = icmp ult i64 %adjusted_index, %_4.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit"

bb1.i:                                            ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %array, i64 16
  %idx1.i = load i64, ptr %1, align 8, !alias.scope !29, !noundef !3
  %logical_index.i = add i64 %idx1.i, %adjusted_index
  %self2.i = load i64, ptr %array, align 8, !range !5, !alias.scope !29, !noundef !3
  %_17.not.i = icmp ult i64 %logical_index.i, %self2.i
  %2 = select i1 %_17.not.i, i64 0, i64 %self2.i
  %idx.sroa.0.0.i = sub nuw i64 %logical_index.i, %2
  %3 = getelementptr inbounds nuw i8, ptr %array, i64 8
  %_18.i = load ptr, ptr %3, align 8, !alias.scope !29, !nonnull !3, !noundef !3
  %_7.i = getelementptr inbounds nuw %"object::Object", ptr %_18.i, i64 %idx.sroa.0.0.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit": ; preds = %start, %bb1.i
  %_0.sroa.0.0.i = phi ptr [ %_7.i, %bb1.i ], [ null, %start ]
  %.not = icmp eq ptr %_0.sroa.0.0.i, null
  %alloc_e9164108e3a8c437bd8ee95ca79fdb9f. = select i1 %.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_0.sroa.0.0.i
  %_0.0 = load i64, ptr %alloc_e9164108e3a8c437bd8ee95ca79fdb9f., align 8, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %alloc_e9164108e3a8c437bd8ee95ca79fdb9f., i64 8
  %_0.1 = load ptr, ptr %4, align 8, !noundef !3
  %5 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %6 = insertvalue { i64, ptr } %5, ptr %_0.1, 1
  ret { i64, ptr } %6
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef i64 @evolve_array_size(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array) unnamed_addr #6 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %array, i64 24
  %_0 = load i64, ptr %0, align 8, !noundef !3
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef range(i64 0, -9223372036854775808) i64 @evolve_array_capacity(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array) unnamed_addr #6 {
start:
  %_2 = load i64, ptr %array, align 8, !range !5, !noundef !3
  ret i64 %_2
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define { i64, ptr } @evolve.from.ptr.closure2(ptr noundef %closure_data_ptr, ptr noundef nonnull %closure_function_ptr, i64 noundef %params) unnamed_addr #7 {
start:
  %size = add i64 %params, 3
  %_6.i = and i64 %size, 4294967295
  %_8.i3.not = icmp eq i64 %_6.i, 0
  br i1 %_8.i3.not, label %"evolve.tuple.put!.exit", label %"evolve.tuple.put!.exit8"

"evolve.tuple.put!.exit8":                        ; preds = %start
  %_11.i7 = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 16
  store i64 256, ptr %_11.i7, align 8
  %0 = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 24
  store ptr %closure_function_ptr, ptr %0, align 8
  %_8.i.not = icmp eq i64 %_6.i, 1
  br i1 %_8.i.not, label %"evolve.tuple.put!.exit", label %bb5.i

bb5.i:                                            ; preds = %"evolve.tuple.put!.exit8"
  %_2.i.i11 = inttoptr i64 %size to ptr
  %_11.i = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 32
  store i64 4, ptr %_11.i, align 8
  %1 = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 40
  store ptr %_2.i.i11, ptr %1, align 8
  br label %"evolve.tuple.put!.exit"

"evolve.tuple.put!.exit":                         ; preds = %start, %"evolve.tuple.put!.exit8", %bb5.i
  %_5.i = shl nuw i64 %_6.i, 32
  %_4.i = or disjoint i64 %_5.i, 19
  %2 = insertvalue { i64, ptr } poison, i64 %_4.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr %closure_data_ptr, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @evolve.closure.call(i64 noundef %closure.0, ptr noundef %closure.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %_6.i2 = icmp ugt i64 %closure.0, 12884901887
  %_9.i8 = getelementptr inbounds nuw i8, ptr %closure.1, i64 48
  %spec.select = select i1 %_6.i2, ptr %_9.i8, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i4 = load i64, ptr %spec.select, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i5 = load ptr, ptr %0, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %closure.0, 4294967296
  %_9.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 16
  %spec.select13 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %1 = getelementptr inbounds nuw i8, ptr %spec.select13, i64 8
  %_0.1.i = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %closure.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %2, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i12 = shl i64 %_0.i, 32
  %_7.i = or disjoint i64 %_9.i12, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %closure.1
  %3 = tail call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i4, ptr noundef %_0.1.i5, i64 noundef %tuple.0, ptr noundef %tuple.1, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  ret { i64, ptr } %3
}

; evolve_inner_core::closure::evolve_closure_get_size
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef i64 @_ZN17evolve_inner_core7closure23evolve_closure_get_size17h40c9b9b57cf73efeE(i64 noundef %closure.0, ptr nocapture noundef readonly %closure.1) unnamed_addr #8 {
start:
  %_6.i = icmp ugt i64 %closure.0, 8589934591
  %_9.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 32
  %spec.select = select i1 %_6.i, ptr %_9.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %0 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i = load ptr, ptr %0, align 8, !noundef !3
  %_0 = ptrtoint ptr %_0.1.i to i64
  ret i64 %_0
}

; evolve_inner_core::closure::<impl evolve_inner_core::object::Object>::closure_size
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef i64 @"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17hc62d3778749a8bc2E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self) unnamed_addr #8 {
start:
  %_2.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_2.1 = load ptr, ptr %0, align 8, !noundef !3
  %_6.i.i = icmp ugt i64 %_2.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %_2.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %1, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  ret i64 %_0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @evolve.mem.gep.byte(ptr noundef readnone %ptr, i64 noundef %offset) unnamed_addr #9 {
start:
  %0 = getelementptr i8, ptr %ptr, i64 %offset
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @evolve.mem.gep.object(ptr noundef readnone %ptr, i64 noundef %offset) unnamed_addr #9 {
start:
  %0 = getelementptr %"object::Object", ptr %ptr, i64 %offset
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef ptr @evolve.mem.load.ptr(ptr nocapture noundef readonly %ptr, i64 noundef %offset) unnamed_addr #10 {
start:
  %0 = getelementptr ptr, ptr %ptr, i64 %offset
  %_0 = load ptr, ptr %0, align 8, !noundef !3
  ret ptr %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef i32 @evolve.mem.load.i32(ptr nocapture noundef readonly %ptr, i64 noundef %offset) unnamed_addr #10 {
start:
  %0 = getelementptr i32, ptr %ptr, i64 %offset
  %_0 = load i32, ptr %0, align 4, !noundef !3
  ret i32 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define { i64, ptr } @evolve.mem.load.object(ptr nocapture noundef readonly %ptr, i64 noundef %offset) unnamed_addr #10 {
start:
  %0 = getelementptr %"object::Object", ptr %ptr, i64 %offset
  %_0.0 = load i64, ptr %0, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_0.1 = load ptr, ptr %1, align 8, !noundef !3
  %2 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %3 = insertvalue { i64, ptr } %2, ptr %_0.1, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define void @evolve.mem.store.ptr(ptr nocapture noundef writeonly %ptr, ptr noundef %value, i64 noundef %offset) unnamed_addr #11 {
start:
  %0 = getelementptr ptr, ptr %ptr, i64 %offset
  store ptr %value, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define void @evolve.mem.store.i32(ptr nocapture noundef writeonly %ptr, i32 noundef %value, i64 noundef %offset) unnamed_addr #11 {
start:
  %0 = getelementptr i32, ptr %ptr, i64 %offset
  store i32 %value, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define void @evolve.mem.store.object(ptr nocapture noundef writeonly %ptr, i64 noundef %value.0, ptr noundef %value.1, i64 noundef %offset) unnamed_addr #11 {
start:
  %0 = getelementptr %"object::Object", ptr %ptr, i64 %offset
  store i64 %value.0, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %value.1, ptr %1, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_build_true() unnamed_addr #12 {
start:
  ret { i64, ptr } { i64 2, ptr null }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_build_false() unnamed_addr #9 {
start:
  ret { i64, ptr } { i64 1, ptr null }
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_i1(i1 noundef zeroext %value) unnamed_addr #12 {
start:
  %spec.select = select i1 %value, i64 2, i64 1
  %0 = insertvalue { i64, ptr } poison, i64 %spec.select, 0
  %1 = insertvalue { i64, ptr } %0, ptr null, 1
  ret { i64, ptr } %1
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.true?"(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  %_0 = icmp ugt i64 %self.0, 1
  ret i1 %_0
}

; evolve_inner_core::object::convert::bool::<impl core::convert::From<bool> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert4bool95_$LT$impl$u20$core..convert..From$LT$bool$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17he51ffed81e8005e7E"(i1 noundef zeroext %value) unnamed_addr #9 {
start:
  %spec.select = select i1 %value, i64 2, i64 1
  %0 = insertvalue { i64, ptr } poison, i64 %spec.select, 0
  %1 = insertvalue { i64, ptr } %0, ptr null, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::object::convert::bool::<impl core::convert::From<evolve_inner_core::object::Object> for bool>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"_ZN17evolve_inner_core6object7convert4bool95_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$bool$GT$4from17h180fa3cd577799a8E"(i64 noundef %val.0, ptr nocapture noundef readnone %val.1) unnamed_addr #9 {
start:
  %_0.i = icmp ugt i64 %val.0, 1
  ret i1 %_0.i
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_ptr(ptr noundef %value) unnamed_addr #12 {
start:
  %0 = insertvalue { i64, ptr } { i64 17, ptr poison }, ptr %value, 1
  ret { i64, ptr } %0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @evolve.extract.ptr(i64 noundef %self.0, ptr noundef readnone returned %self.1) unnamed_addr #12 {
start:
  ret ptr %self.1
}

; evolve_inner_core::object::convert::ptr::<impl core::convert::From<*const evolve_inner_core::object::Object> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3ptr138_$LT$impl$u20$core..convert..From$LT$$BP$const$u20$evolve_inner_core..object..Object$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17haf5bece4f73593d1E"(ptr noundef %value) unnamed_addr #9 {
start:
  %0 = insertvalue { i64, ptr } { i64 17, ptr poison }, ptr %value, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::ptr::<impl core::convert::From<evolve_inner_core::object::Object> for *const evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @"_ZN17evolve_inner_core6object7convert3ptr138_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$$BP$const$u20$evolve_inner_core..object..Object$GT$4from17hd325b427f49cdcf4E"(i64 noundef %value.0, ptr noundef readnone returned %value.1) unnamed_addr #9 {
start:
  ret ptr %value.1
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_i64(i64 noundef %value) unnamed_addr #12 {
start:
  %_2 = inttoptr i64 %value to ptr
  %0 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %_2, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::i64::<impl core::convert::From<i64> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3i6494_$LT$impl$u20$core..convert..From$LT$i64$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hc0ef35616186dbb7E"(i64 noundef %value) unnamed_addr #9 {
start:
  %_2.i = inttoptr i64 %value to ptr
  %0 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %_2.i, 1
  ret { i64, ptr } %0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.extract.i64(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #12 {
start:
  %_0 = ptrtoint ptr %value.1 to i64
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_f64(double noundef %value) unnamed_addr #12 {
start:
  %_3 = bitcast double %value to i64
  %_2 = inttoptr i64 %_3 to ptr
  %0 = insertvalue { i64, ptr } { i64 5, ptr poison }, ptr %_2, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::f64::<impl core::convert::From<f64> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3f6494_$LT$impl$u20$core..convert..From$LT$f64$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hdcec1e6b85d4ff87E"(double noundef %value) unnamed_addr #9 {
start:
  %_3.i = bitcast double %value to i64
  %_2.i = inttoptr i64 %_3.i to ptr
  %0 = insertvalue { i64, ptr } { i64 5, ptr poison }, ptr %_2.i, 1
  ret { i64, ptr } %0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve.extract.f64(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #12 {
start:
  %_2 = ptrtoint ptr %value.1 to i64
  %_0 = bitcast i64 %_2 to double
  ret double %_0
}

; evolve_inner_core::object::debug::<impl core::fmt::Debug for evolve_inner_core::object::Object>::fmt
; Function Attrs: nounwind nonlazybind
define noundef zeroext i1 @"_ZN17evolve_inner_core6object5debug80_$LT$impl$u20$core..fmt..Debug$u20$for$u20$evolve_inner_core..object..Object$GT$3fmt17h0ade02e4520b77fdE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_102 = alloca [8 x i8], align 8
  %_98 = alloca [4 x i8], align 4
  %_94 = alloca [2 x i8], align 2
  %_87 = alloca [8 x i8], align 8
  %_83 = alloca [8 x i8], align 8
  %_76 = alloca [16 x i8], align 8
  %_72 = alloca [16 x i8], align 8
  %_68 = alloca [4 x i8], align 4
  %_64 = alloca [8 x i8], align 8
  %_56 = alloca [8 x i8], align 8
  %_51 = alloca [8 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %_39 = alloca [8 x i8], align 8
  %_33 = alloca [4 x i8], align 4
  %_29 = alloca [8 x i8], align 8
  %_22 = alloca [8 x i8], align 8
  %_16 = alloca [8 x i8], align 8
  %_10 = alloca [8 x i8], align 8
  %common = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %common)
; call core::fmt::Formatter::debug_struct
  call void @_ZN4core3fmt9Formatter12debug_struct17h1f370e5feb2ae33bE(ptr noalias nocapture noundef nonnull sret([16 x i8]) align 8 dereferenceable(16) %common, ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 @alloc_1a3b627145dc0fe65f658cb38c278359, i64 noundef 6) #32
  %_6.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_0.i1 = trunc i64 %_6.0 to i16
  switch i16 %_0.i1, label %bb3 [
    i16 0, label %bb13
    i16 1, label %bb12
    i16 2, label %bb11
    i16 3, label %bb10
    i16 17, label %bb9
    i16 6, label %bb8
    i16 4, label %bb7
    i16 5, label %bb6
    i16 15, label %bb5
    i16 19, label %bb4
  ]

bb3:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_94)
  store i16 %_0.i1, ptr %_94, align 2
; call core::fmt::builders::DebugStruct::field
  %_90 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_63744475ac4d11caf5a224426ca4a84c, i64 noundef 8, ptr noundef nonnull align 1 %_94, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.8) #32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_98)
  %_2.i = lshr i64 %_6.0, 32
  %_0.i2 = trunc nuw i64 %_2.i to i32
  store i32 %_0.i2, ptr %_98, align 4
; call core::fmt::builders::DebugStruct::field
  %_89 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_90, ptr noalias noundef nonnull readonly align 1 @alloc_a6c9073709f4dc3faf09868fececa07c, i64 noundef 3, ptr noundef nonnull align 1 %_98, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_102)
  %_103.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_103.1, ptr %_102, align 8
; call core::fmt::builders::DebugStruct::field
  %_88 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_89, ptr noalias noundef nonnull readonly align 1 @alloc_eb15813ccc20d20673372177ea4f1c88, i64 noundef 3, ptr noundef nonnull align 1 %_102, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_98)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_94)
  br label %bb48

bb13:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_10)
  %_11.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_11.1, ptr %_10, align 8
; call core::fmt::builders::DebugStruct::field
  %1 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_a8456fb127012b2b67e2f034dd8cd60c, i64 noundef 4, ptr noundef nonnull align 1 %_10, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_10)
  br label %bb48

bb12:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_16)
  %_17.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_17.1, ptr %_16, align 8
; call core::fmt::builders::DebugStruct::field
  %_12 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_5f51429af5bff0c26097b04b86db779e, i64 noundef 5, ptr noundef nonnull align 1 %_16, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_16)
  br label %bb48

bb11:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_22)
  %_23.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_23.1, ptr %_22, align 8
; call core::fmt::builders::DebugStruct::field
  %_18 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_68f2a445488f20082ceefa0ab63c19b2, i64 noundef 4, ptr noundef nonnull align 1 %_22, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_22)
  br label %bb48

bb10:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_29)
  %_30.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_30.1, ptr %_29, align 8
; call core::fmt::builders::DebugStruct::field
  %_25 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_f20ab71f06765100d92312e3a01bb989, i64 noundef 3, ptr noundef nonnull align 1 %_29, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_33)
  %_2.i5 = lshr i64 %_6.0, 32
  %_0.i6 = trunc nuw i64 %_2.i5 to i32
  store i32 %_0.i6, ptr %_33, align 4
; call core::fmt::builders::DebugStruct::field
  %_24 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_25, ptr noalias noundef nonnull readonly align 1 @alloc_250b91d3432a6fe0c6c420b70e341432, i64 noundef 4, ptr noundef nonnull align 1 %_33, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_29)
  br label %bb48

bb9:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_39)
  %_40.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_40.1, ptr %_39, align 8
; call core::fmt::builders::DebugStruct::field
  %_35 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_e4771d6525973485a812fe783cd28050, i64 noundef 7, ptr noundef nonnull align 1 %_39, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_39)
  br label %bb48

bb8:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_45)
  %_46.1 = load ptr, ptr %0, align 8, !noundef !3
  %_2.i.i = lshr i64 %_6.0, 32
  %_4.i = add nuw nsw i64 %_2.i.i, 1
  store ptr %_46.1, ptr %_45, align 8
  %2 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  store i64 %_4.i, ptr %2, align 8
; call core::fmt::builders::DebugStruct::field
  %_41 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_0869314c06f5536ea9cfbda8e3d75f40, i64 noundef 6, ptr noundef nonnull align 1 %_45, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.4) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  br label %bb48

bb7:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_51)
  %_108 = load ptr, ptr %0, align 8, !noundef !3
  %3 = ptrtoint ptr %_108 to i64
  store i64 %3, ptr %_51, align 8
; call core::fmt::builders::DebugStruct::field
  %_47 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_f4db005b851b7259d0b6ded255335a8c, i64 noundef 3, ptr noundef nonnull align 1 %_51, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.5) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_51)
  br label %bb48

bb6:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_56)
  %_109 = load ptr, ptr %0, align 8, !noundef !3
  %_107 = ptrtoint ptr %_109 to i64
  store i64 %_107, ptr %_56, align 8
; call core::fmt::builders::DebugStruct::field
  %_52 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_82b1bf185e1b461c8b8241303ddf0563, i64 noundef 3, ptr noundef nonnull align 1 %_56, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.6) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_56)
  br label %bb48

bb5:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_64)
  %_65.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_65.1, ptr %_64, align 8
; call core::fmt::builders::DebugStruct::field
  %_60 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_22f0e91223dabf1bef5f103b8560c3f1, i64 noundef 5, ptr noundef nonnull align 1 %_64, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_68)
  %_2.i3 = lshr i64 %_6.0, 32
  %_0.i4 = trunc nuw i64 %_2.i3 to i32
  store i32 %_0.i4, ptr %_68, align 4
; call core::fmt::builders::DebugStruct::field
  %_59 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_60, ptr noalias noundef nonnull readonly align 1 @alloc_a2e5f6be2a03b9f5ed256baff3399a84, i64 noundef 4, ptr noundef nonnull align 1 %_68, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_72)
  %_6.i8.not = icmp ult i64 %_6.0, 4294967296
  %_9.i14 = getelementptr inbounds nuw i8, ptr %_65.1, i64 16
  %spec.select = select i1 %_6.i8.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i14
  %_0.0.i10 = load i64, ptr %spec.select, align 8, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i11 = load ptr, ptr %4, align 8, !noundef !3
  store i64 %_0.0.i10, ptr %_72, align 8
  %5 = getelementptr inbounds nuw i8, ptr %_72, i64 8
  store ptr %_0.1.i11, ptr %5, align 8
; call core::fmt::builders::DebugStruct::field
  %_58 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_59, ptr noalias noundef nonnull readonly align 1 @alloc_ac368d9a707b52d21ed3ba3af2bad0d5, i64 noundef 3, ptr noundef nonnull align 1 %_72, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.7) #32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_76)
  %_6.i = icmp ugt i64 %_6.0, 8589934591
  %_9.i = getelementptr inbounds nuw i8, ptr %_65.1, i64 32
  %spec.select19 = select i1 %_6.i, ptr %_9.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i = load i64, ptr %spec.select19, align 8, !noundef !3
  %6 = getelementptr inbounds nuw i8, ptr %spec.select19, i64 8
  %_0.1.i = load ptr, ptr %6, align 8, !noundef !3
  store i64 %_0.0.i, ptr %_76, align 8
  %7 = getelementptr inbounds nuw i8, ptr %_76, i64 8
  store ptr %_0.1.i, ptr %7, align 8
; call core::fmt::builders::DebugStruct::field
  %_57 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_58, ptr noalias noundef nonnull readonly align 1 @alloc_5b8c386f77829feb42882cd52d13ac4a, i64 noundef 3, ptr noundef nonnull align 1 %_76, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.7) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_76)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_72)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_68)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_64)
  br label %bb48

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_83)
  %_84.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_84.1, ptr %_83, align 8
; call core::fmt::builders::DebugStruct::field
  %_79 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_3fb291eefbcf3fa3c1d2137966dc6e7c, i64 noundef 7, ptr noundef nonnull align 1 %_83, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_87)
  %_6.i.i.i = icmp ugt i64 %_6.0, 8589934591
  %_9.i.i.i = getelementptr inbounds nuw i8, ptr %_84.1, i64 32
  %spec.select.i.i = select i1 %_6.i.i.i, ptr %_9.i.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %_0.1.i.i.i = load ptr, ptr %8, align 8, !noalias !32, !noundef !3
  %_0.i.i = ptrtoint ptr %_0.1.i.i.i to i64
  store i64 %_0.i.i, ptr %_87, align 8
; call core::fmt::builders::DebugStruct::field
  %_78 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_79, ptr noalias noundef nonnull readonly align 1 @alloc_a2e5f6be2a03b9f5ed256baff3399a84, i64 noundef 4, ptr noundef nonnull align 1 %_87, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.5) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_87)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_83)
  br label %bb48

bb48:                                             ; preds = %bb3, %bb4, %bb5, %bb6, %bb7, %bb8, %bb9, %bb10, %bb11, %bb12, %bb13
  %more.sroa.0.0 = phi ptr [ %_88, %bb3 ], [ %_78, %bb4 ], [ %_57, %bb5 ], [ %_52, %bb6 ], [ %_47, %bb7 ], [ %_41, %bb8 ], [ %_35, %bb9 ], [ %_24, %bb10 ], [ %_18, %bb11 ], [ %_12, %bb12 ], [ %1, %bb13 ]
; call core::fmt::builders::DebugStruct::finish
  %_0 = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h317f1e5336de0063E(ptr noalias noundef nonnull align 8 dereferenceable(16) %more.sroa.0.0) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %common)
  ret i1 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_build_ptr(i16 noundef %class_id, i32 noundef %aux4, ptr noundef %ptr) unnamed_addr #9 {
start:
  %_6 = zext i32 %aux4 to i64
  %_5 = shl nuw i64 %_6, 32
  %_7 = zext i16 %class_id to i64
  %_4 = or disjoint i64 %_5, %_7
  %0 = insertvalue { i64, ptr } poison, i64 %_4, 0
  %1 = insertvalue { i64, ptr } %0, ptr %ptr, 1
  ret { i64, ptr } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_core_build_null() unnamed_addr #9 {
start:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.core.tag(i64 noundef returned %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  ret i64 %self.0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i16 @evolve.core.class_id.u16(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  %_0 = trunc i64 %self.0 to i16
  ret i16 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i64 0, 65536) i64 @evolve.core.class_id(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  %_0 = and i64 %self.0, 65535
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i32 @evolve.core.aux4(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  %_2 = lshr i64 %self.0, 32
  %_0 = trunc nuw i64 %_2 to i32
  ret i32 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_core_class(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #9 {
start:
  %_0.i = trunc i64 %self.0 to i16
  %_3 = and i16 %_0.i, 1
  %0 = icmp eq i16 %_3, 0
  %_5 = add i64 %self.0, 65535
  %_7 = and i64 %_5, 65535
  %_0.sroa.0.0 = select i1 %0, i64 65534, i64 %_7
  %_0.sroa.3.0.in = and i64 %self.0, 65535
  %_0.sroa.3.0 = inttoptr i64 %_0.sroa.3.0.in to ptr
  %1 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %2
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.is?"(i64 noundef %self.0, ptr noundef readnone %self.1, i64 noundef %rhs.0, ptr noundef readnone %rhs.1) unnamed_addr #12 {
start:
  %_3 = icmp eq i64 %self.0, %rhs.0
  %0 = icmp eq ptr %self.1, %rhs.1
  %_0.sroa.0.0 = and i1 %_3, %0
  ret i1 %_0.sroa.0.0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.null?"(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  %_0 = icmp eq i64 %self.0, 0
  ret i1 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { ptr, i64 } @evolve_extract_rust_cstr(i64 noundef %self.0, ptr noundef %self.1) unnamed_addr #9 {
start:
  %_2.i = lshr i64 %self.0, 32
  %_4 = add nuw nsw i64 %_2.i, 1
  %0 = insertvalue { ptr, i64 } poison, ptr %self.1, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %_4, 1
  ret { ptr, i64 } %1
}

; <evolve_inner_core::object::Object as core::cmp::PartialEq>::eq
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite)
define noundef zeroext i1 @"_ZN74_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0fb06241df5f19c3E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %_4.0.i = load i64, ptr %self, align 8, !alias.scope !35, !noalias !38, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_4.1.i = load ptr, ptr %0, align 8, !alias.scope !35, !noalias !38, !noundef !3
  %_5.0.i = load i64, ptr %other, align 8, !alias.scope !38, !noalias !35, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %other, i64 8
  %_5.1.i = load ptr, ptr %1, align 8, !alias.scope !38, !noalias !35, !noundef !3
  %_3.i.i = icmp eq i64 %_4.0.i, %_5.0.i
  %2 = icmp eq ptr %_4.1.i, %_5.1.i
  %_0.sroa.0.0.i.i = and i1 %_3.i.i, %2
  %_3.i.i.not = xor i1 %_3.i.i, true
  %brmerge = or i1 %2, %_3.i.i.not
  br i1 %brmerge, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit", label %bb6.i

bb6.i:                                            ; preds = %start
  %_11.i = trunc i64 %_4.0.i to i16
  switch i16 %_11.i, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit" [
    i16 4, label %bb10.i
    i16 5, label %bb9.i
    i16 6, label %bb8.i
  ]

bb10.i:                                           ; preds = %bb6.i
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

bb9.i:                                            ; preds = %bb6.i
  %_9.i.i = ptrtoint ptr %_4.1.i to i64
  %_12.i.i = ptrtoint ptr %_5.1.i to i64
  %3 = bitcast i64 %_9.i.i to double
  %4 = bitcast i64 %_12.i.i to double
  %_0.i4.i.i.i = fcmp uno double %3, 0.000000e+00
  %_0.i3.i.i.i = fcmp oge double %3, %4
  %_5.i.i.i = or i1 %_0.i4.i.i.i, %_0.i3.i.i.i
  %_0.i5.i.i.i = fcmp uno double %4, 0.000000e+00
  %_0.i.i.i.i = fcmp oge double %4, %3
  %_11.not.i.i.i.not = or i1 %_0.i5.i.i.i, %_0.i.i.i.i
  %5 = and i1 %_5.i.i.i, %_11.not.i.i.i.not
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

bb8.i:                                            ; preds = %bb6.i
  %_2.i.i.i.i = lshr i64 %_4.0.i, 32
  %bcmp = tail call i32 @bcmp(ptr %_4.1.i, ptr %_5.1.i, i64 %_2.i.i.i.i)
  %6 = icmp eq i32 %bcmp, 0
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit": ; preds = %start, %bb6.i, %bb10.i, %bb9.i, %bb8.i
  %_0.sroa.0.0.i = phi i1 [ %6, %bb8.i ], [ %5, %bb9.i ], [ %2, %bb10.i ], [ %_0.sroa.0.0.i.i, %start ], [ true, %bb6.i ]
  ret i1 %_0.sroa.0.0.i
}

; <evolve_inner_core::object::Object as core::cmp::PartialOrd>::partial_cmp
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite)
define noundef range(i8 -1, 3) i8 @"_ZN75_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h249089aa55eb3313E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %_4.0.i = load i64, ptr %self, align 8, !alias.scope !40, !noalias !43, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_4.1.i = load ptr, ptr %0, align 8, !alias.scope !40, !noalias !43, !noundef !3
  %_5.0.i = load i64, ptr %other, align 8, !alias.scope !43, !noalias !40, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %other, i64 8
  %_5.1.i = load ptr, ptr %1, align 8, !alias.scope !43, !noalias !40, !noundef !3
  %_3.i.i = icmp eq i64 %_4.0.i, %_5.0.i
  %2 = icmp eq ptr %_4.1.i, %_5.1.i
  %_0.sroa.0.0.i.i = and i1 %_3.i.i, %2
  br i1 %_0.sroa.0.0.i.i, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit", label %bb3.i

bb3.i:                                            ; preds = %start
  br i1 %_3.i.i, label %bb6.i, label %bb13.i

bb13.i:                                           ; preds = %bb6.i, %bb3.i
  %3 = tail call i8 @llvm.ucmp.i8.i64(i64 %_4.0.i, i64 %_5.0.i)
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

bb6.i:                                            ; preds = %bb3.i
  %_11.i = trunc i64 %_4.0.i to i16
  switch i16 %_11.i, label %bb13.i [
    i16 4, label %bb10.i
    i16 5, label %bb9.i
    i16 6, label %bb8.i
  ]

bb10.i:                                           ; preds = %bb6.i
  %_16.i = ptrtoint ptr %_4.1.i to i64
  %_17.i = ptrtoint ptr %_5.1.i to i64
  %4 = tail call i8 @llvm.scmp.i8.i64(i64 %_16.i, i64 %_17.i)
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

bb9.i:                                            ; preds = %bb6.i
  %_9.i.i = ptrtoint ptr %_4.1.i to i64
  %_12.i.i = ptrtoint ptr %_5.1.i to i64
  %5 = bitcast i64 %_9.i.i to double
  %6 = bitcast i64 %_12.i.i to double
  %_0.i4.i.i.i = fcmp uno double %5, 0.000000e+00
  %_0.i3.i.i.i = fcmp oge double %5, %6
  %_5.i.i.i = or i1 %_0.i4.i.i.i, %_0.i3.i.i.i
  %_0.i5.i.i.i = fcmp ord double %6, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %6, %5
  %_11.not.i.i.i = and i1 %_0.i5.i.i.i, %_0.i.i.i.i
  %..i.i.i = zext i1 %_11.not.i.i.i to i8
  %_0.sroa.0.0.i.i.i = select i1 %_5.i.i.i, i8 %..i.i.i, i8 -1
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

bb8.i:                                            ; preds = %bb6.i
  %_2.i.i.i.i = lshr i64 %_4.0.i, 32
  %7 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_4.1.i, ptr nonnull readonly align 1 %_5.1.i, i64 %_2.i.i.i.i), !alias.scope !45, !noalias !49
  %8 = sext i32 %7 to i64
  %_0.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %8, i64 0)
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit"

"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E.exit": ; preds = %start, %bb13.i, %bb10.i, %bb9.i, %bb8.i
  %_0.sroa.0.0.i = phi i8 [ %3, %bb13.i ], [ %_0.i.i.i, %bb8.i ], [ %_0.sroa.0.0.i.i.i, %bb9.i ], [ %4, %bb10.i ], [ 0, %start ]
  ret i8 %_0.sroa.0.0.i
}

; <evolve_inner_core::object::Object as core::cmp::Ord>::cmp
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef range(i8 -1, 2) i8 @"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #14 {
start:
  %_4.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_4.1 = load ptr, ptr %0, align 8, !noundef !3
  %_5.0 = load i64, ptr %other, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %other, i64 8
  %_5.1 = load ptr, ptr %1, align 8, !noundef !3
  %_3.i = icmp eq i64 %_4.0, %_5.0
  %2 = icmp eq ptr %_4.1, %_5.1
  %_0.sroa.0.0.i = and i1 %_3.i, %2
  br i1 %_0.sroa.0.0.i, label %bb15, label %bb3

bb3:                                              ; preds = %start
  br i1 %_3.i, label %bb6, label %bb13

bb13:                                             ; preds = %bb6, %bb3
  %3 = tail call i8 @llvm.ucmp.i8.i64(i64 %_4.0, i64 %_5.0)
  br label %bb15

bb6:                                              ; preds = %bb3
  %_11 = trunc i64 %_4.0 to i16
  switch i16 %_11, label %bb13 [
    i16 4, label %bb10
    i16 5, label %bb9
    i16 6, label %bb8
  ]

bb10:                                             ; preds = %bb6
  %_16 = ptrtoint ptr %_4.1 to i64
  %_17 = ptrtoint ptr %_5.1 to i64
  %4 = tail call i8 @llvm.scmp.i8.i64(i64 %_16, i64 %_17)
  br label %bb15

bb9:                                              ; preds = %bb6
  %_9.i = ptrtoint ptr %_4.1 to i64
  %_12.i = ptrtoint ptr %_5.1 to i64
  %5 = bitcast i64 %_9.i to double
  %6 = bitcast i64 %_12.i to double
  %_0.i4.i.i = fcmp uno double %5, 0.000000e+00
  %_0.i3.i.i = fcmp oge double %5, %6
  %_5.i.i = or i1 %_0.i4.i.i, %_0.i3.i.i
  %_0.i5.i.i = fcmp ord double %6, 0.000000e+00
  %_0.i.i.i = fcmp ult double %6, %5
  %_11.not.i.i = and i1 %_0.i5.i.i, %_0.i.i.i
  %..i.i = zext i1 %_11.not.i.i to i8
  %_0.sroa.0.0.i.i = select i1 %_5.i.i, i8 %..i.i, i8 -1
  br label %bb15

bb8:                                              ; preds = %bb6
  %_2.i.i.i = lshr i64 %_4.0, 32
  %7 = tail call i32 @memcmp(ptr nonnull readonly align 1 %_4.1, ptr nonnull readonly align 1 %_5.1, i64 %_2.i.i.i), !alias.scope !50
  %8 = sext i32 %7 to i64
  %_0.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %8, i64 0)
  br label %bb15

bb15:                                             ; preds = %start, %bb10, %bb9, %bb8, %bb13
  %_0.sroa.0.0 = phi i8 [ %3, %bb13 ], [ %_0.i.i, %bb8 ], [ %_0.sroa.0.0.i.i, %bb9 ], [ %4, %bb10 ], [ 0, %start ]
  ret i8 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.from.ptr.app(i32 noundef %argc, ptr noundef %argv) unnamed_addr #9 {
start:
  %_6.i = zext i32 %argc to i64
  %_5.i = shl nuw i64 %_6.i, 32
  %_4.i = or disjoint i64 %_5.i, 3
  %0 = insertvalue { i64, ptr } poison, i64 %_4.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %argv, 1
  ret { i64, ptr } %1
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i8 -1, 2) i8 @evolve_f64_cmp(double noundef %value1, double noundef %value2) unnamed_addr #12 {
start:
  %_0.i4.i = fcmp uno double %value1, 0.000000e+00
  %_0.i3.i = fcmp oge double %value1, %value2
  %_5.i = or i1 %_0.i4.i, %_0.i3.i
  %_0.i5.i = fcmp ord double %value2, 0.000000e+00
  %_0.i.i = fcmp ult double %value2, %value1
  %_11.not.i = and i1 %_0.i5.i, %_0.i.i
  %..i = zext i1 %_11.not.i to i8
  %_0.sroa.0.0.i = select i1 %_5.i, i8 %..i, i8 -1
  ret i8 %_0.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @evolve_f64_eq(double noundef %value1, double noundef %value2) unnamed_addr #9 {
start:
  %_3 = fcmp uno double %value1, 0.000000e+00
  %0 = fcmp uno double %value2, 0.000000e+00
  %1 = fcmp oeq double %value1, %value2
  %_0.sroa.0.0.in = select i1 %_3, i1 %0, i1 %1
  ret i1 %_0.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve.f64.fptosi.checked(double noundef %value) unnamed_addr #12 {
start:
  %_2 = fcmp ult double %value, 0xC3E0000000000000
  %_3 = fcmp uge double %value, 0x43E0000000000000
  %or.cond.not = or i1 %_2, %_3
  %0 = fptosi double %value to i64
  %spec.select = select i1 %or.cond.not, i64 0, i64 %0
  %1 = insertvalue { i64, i1 } poison, i64 %spec.select, 0
  %2 = insertvalue { i64, i1 } %1, i1 %or.cond.not, 1
  ret { i64, i1 } %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve.next_down(double noundef %value) unnamed_addr #9 {
start:
  %_2 = bitcast double %value to i64
  %_3 = fcmp uno double %value, 0.000000e+00
  %0 = icmp eq i64 %_2, -4503599627370496
  %or.cond = or i1 %_3, %0
  br i1 %or.cond, label %bb1, label %bb4

bb4:                                              ; preds = %start
  %1 = tail call double @llvm.fabs.f64(double %value)
  %_4 = bitcast double %1 to i64
  %2 = icmp eq i64 %_4, 0
  br i1 %2, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %_6 = icmp eq i64 %_2, %_4
  br i1 %_6, label %bb7, label %bb8

bb10:                                             ; preds = %bb4, %bb8, %bb7
  %_5.sroa.0.0 = phi i64 [ %5, %bb7 ], [ %4, %bb8 ], [ -9223372036854775807, %bb4 ]
  %3 = bitcast i64 %_5.sroa.0.0 to double
  br label %bb1

bb8:                                              ; preds = %bb6
  %4 = add i64 %_2, 1
  br label %bb10

bb7:                                              ; preds = %bb6
  %5 = add nsw i64 %_2, -1
  br label %bb10

bb1:                                              ; preds = %start, %bb10
  %_0.sroa.0.0 = phi double [ %3, %bb10 ], [ %value, %start ]
  ret double %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve.next_up(double noundef %value) unnamed_addr #9 {
start:
  %_2 = bitcast double %value to i64
  %_3 = fcmp uno double %value, 0.000000e+00
  %0 = icmp eq i64 %_2, 9218868437227405312
  %or.cond = or i1 %_3, %0
  br i1 %or.cond, label %bb1, label %bb4

bb4:                                              ; preds = %start
  %1 = tail call double @llvm.fabs.f64(double %value)
  %_4 = bitcast double %1 to i64
  %2 = icmp eq i64 %_4, 0
  br i1 %2, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %_6 = icmp eq i64 %_2, %_4
  br i1 %_6, label %bb7, label %bb8

bb10:                                             ; preds = %bb4, %bb8, %bb7
  %_5.sroa.0.0 = phi i64 [ %5, %bb7 ], [ %4, %bb8 ], [ 1, %bb4 ]
  %3 = bitcast i64 %_5.sroa.0.0 to double
  br label %bb1

bb8:                                              ; preds = %bb6
  %4 = add i64 %_2, -1
  br label %bb10

bb7:                                              ; preds = %bb6
  %5 = add i64 %_2, 1
  br label %bb10

bb1:                                              ; preds = %start, %bb10
  %_0.sroa.0.0 = phi double [ %3, %bb10 ], [ %value, %start ]
  ret double %_0.sroa.0.0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i8 -1, 2) i8 @evolve_i64_cmp(i64 noundef %value1, i64 noundef %value2) unnamed_addr #12 {
start:
  %_0 = tail call i8 @llvm.scmp.i8.i64(i64 %value1, i64 %value2)
  ret i8 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_checked_div(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  %0 = icmp eq i64 %rhs, 0
  br i1 %0, label %bb1, label %bb2, !prof !25

bb2:                                              ; preds = %start
  %_5 = icmp eq i64 %lhs, -9223372036854775808
  %1 = icmp eq i64 %rhs, -1
  %or.cond = and i1 %_5, %1
  br i1 %or.cond, label %bb1, label %bb7, !prof !54

bb7:                                              ; preds = %bb2
  %_6 = sdiv i64 %lhs, %rhs
  br label %bb1

bb1:                                              ; preds = %start, %bb2, %bb7
  %_0.sroa.3.0 = phi i1 [ false, %bb7 ], [ true, %bb2 ], [ true, %start ]
  %_0.sroa.0.0 = phi i64 [ %_6, %bb7 ], [ 0, %bb2 ], [ 0, %start ]
  %2 = insertvalue { i64, i1 } poison, i64 %_0.sroa.0.0, 0
  %3 = insertvalue { i64, i1 } %2, i1 %_0.sroa.3.0, 1
  ret { i64, i1 } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_checked_rem(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  switch i64 %rhs, label %bb5.i.i [
    i64 0, label %_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h9c35821960c8387aE.exit
    i64 -1, label %bb2.i.i
  ]

bb2.i.i:                                          ; preds = %start
  br label %_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h9c35821960c8387aE.exit

bb5.i.i:                                          ; preds = %start
  %0 = srem i64 %lhs, %rhs
  br label %_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h9c35821960c8387aE.exit

_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h9c35821960c8387aE.exit: ; preds = %start, %bb2.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %0, %bb5.i.i ], [ 0, %bb2.i.i ], [ %lhs, %start ]
  %1 = insertvalue { i64, i1 } poison, i64 %_0.sroa.0.0.i.i, 0
  %2 = insertvalue { i64, i1 } %1, i1 false, 1
  ret { i64, i1 } %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_i64_safe_rem(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  switch i64 %rhs, label %bb5 [
    i64 0, label %bb6
    i64 -1, label %bb2
  ]

bb2:                                              ; preds = %start
  br label %bb6

bb6:                                              ; preds = %start, %bb5, %bb2
  %_0.sroa.0.0 = phi i64 [ %0, %bb5 ], [ 0, %bb2 ], [ %lhs, %start ]
  ret i64 %_0.sroa.0.0

bb5:                                              ; preds = %start
  %0 = srem i64 %lhs, %rhs
  br label %bb6
}

; evolve_inner_core::i64::evolve_i64_safe_rem_option
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i64 } @_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h9c35821960c8387aE(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  switch i64 %rhs, label %bb5.i [
    i64 0, label %evolve_i64_safe_rem.exit
    i64 -1, label %bb2.i
  ]

bb2.i:                                            ; preds = %start
  br label %evolve_i64_safe_rem.exit

bb5.i:                                            ; preds = %start
  %0 = srem i64 %lhs, %rhs
  br label %evolve_i64_safe_rem.exit

evolve_i64_safe_rem.exit:                         ; preds = %start, %bb2.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %0, %bb5.i ], [ 0, %bb2.i ], [ %lhs, %start ]
  %1 = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %_0.sroa.0.0.i, 1
  ret { i64, i64 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i64 } @evolve_i64_checked_div_rem(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  %0 = icmp eq i64 %rhs, 0
  br i1 %0, label %bb3, label %bb4, !prof !25

bb4:                                              ; preds = %start
  %_10 = icmp eq i64 %lhs, -9223372036854775808
  %.not = icmp eq i64 %rhs, -1
  %or.cond = and i1 %_10, %.not
  br i1 %or.cond, label %bb3, label %bb2, !prof !54

bb2:                                              ; preds = %bb4
  %div.sroa.9.2 = sdiv i64 %lhs, %rhs
  %1 = srem i64 %lhs, %rhs
  br label %bb3

bb3:                                              ; preds = %bb4, %start, %bb2
  %_0.sroa.3.0 = phi i64 [ %1, %bb2 ], [ -1, %start ], [ -1, %bb4 ]
  %_0.sroa.0.0 = phi i64 [ %div.sroa.9.2, %bb2 ], [ -1, %start ], [ -1, %bb4 ]
  %2 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0, 0
  %3 = insertvalue { i64, i64 } %2, i64 %_0.sroa.3.0, 1
  ret { i64, i64 } %3
}

; evolve_inner_core::i64::evolve_i64_divisible_by
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @_ZN17evolve_inner_core3i6423evolve_i64_divisible_by17h3bd369bb2d5f600cE(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  switch i64 %rhs, label %bb11 [
    i64 -1, label %bb5
    i64 0, label %bb2
  ]

bb2:                                              ; preds = %start
  %0 = icmp eq i64 %lhs, 0
  br label %bb5

bb5:                                              ; preds = %bb11, %start, %bb2
  %_0.sroa.0.0 = phi i1 [ %0, %bb2 ], [ true, %start ], [ %1, %bb11 ]
  ret i1 %_0.sroa.0.0

bb11:                                             ; preds = %start
  %_5 = srem i64 %lhs, %rhs
  %1 = icmp eq i64 %_5, 0
  br label %bb5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_overflowing_abs(i64 noundef %value) unnamed_addr #9 {
start:
  %_2.sroa.0.0 = tail call i64 @llvm.abs.i64(i64 %value, i1 false)
  %_3 = icmp eq i64 %value, -9223372036854775808
  %0 = insertvalue { i64, i1 } poison, i64 %_2.sroa.0.0, 0
  %1 = insertvalue { i64, i1 } %0, i1 %_3, 1
  ret { i64, i1 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_overflowing_neg(i64 noundef %value) unnamed_addr #9 {
start:
  %_2 = icmp eq i64 %value, -9223372036854775808
  %_3 = sub i64 0, %value
  %0 = insertvalue { i64, i1 } poison, i64 %_3, 0
  %1 = insertvalue { i64, i1 } %0, i1 %_2, 1
  ret { i64, i1 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i64 -9223372036854775808, 1) i64 @evolve_i64_nabs(i64 noundef %value) unnamed_addr #9 {
start:
  %0 = tail call i64 @llvm.abs.i64(i64 %value, i1 false)
  %_0.sroa.0.0 = sub i64 0, %0
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.signed-shift-right(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_3 = icmp sgt i64 %rhs, 0
  %_0.sroa.0.0.sroa.speculated.i = tail call range(i64 1, 64) i64 @llvm.umin.i64(i64 range(i64 1, -9223372036854775808) %rhs, i64 63)
  %0 = select i1 %_3, i64 %_0.sroa.0.0.sroa.speculated.i, i64 0
  %_0.sroa.0.0 = ashr i64 %lhs, %0
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.unsigned-shift-right(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  %or.cond = icmp ult i64 %rhs, 64
  %_9 = lshr i64 %lhs, %rhs
  %_5 = icmp sgt i64 %rhs, 63
  %spec.select = select i1 %_5, i64 0, i64 %lhs
  %_0.sroa.0.0 = select i1 %or.cond, i64 %_9, i64 %spec.select
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #9 {
start:
  %_3 = icmp ult i32 %rhs, 64
  %0 = zext nneg i32 %rhs to i64
  %1 = shl i64 %lhs, %0
  %_0.sroa.0.0 = select i1 %_3, i64 %1, i64 0
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_overflowing_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #9 {
start:
  %0 = icmp eq i32 %rhs, 0
  br i1 %0, label %bb5, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp ugt i32 %rhs, 63
  br i1 %_3, label %bb5, label %bb4

bb5:                                              ; preds = %bb2, %start, %bb4
  %_0.sroa.4.0 = phi i1 [ %_6, %bb4 ], [ false, %start ], [ true, %bb2 ]
  %_0.sroa.0.0 = phi i64 [ %shl, %bb4 ], [ %lhs, %start ], [ 0, %bb2 ]
  %1 = insertvalue { i64, i1 } poison, i64 %_0.sroa.0.0, 0
  %2 = insertvalue { i64, i1 } %1, i1 %_0.sroa.4.0, 1
  ret { i64, i1 } %2

bb4:                                              ; preds = %bb2
  %3 = zext nneg i32 %rhs to i64
  %shl = shl i64 %lhs, %3
  %shr = ashr exact i64 %shl, %3
  %_6 = icmp ne i64 %lhs, %shr
  br label %bb5
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.intrinsic.win?"(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #12 {
start:
  %_0 = icmp ne i64 %self.0, 257
  ret i1 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i64 0, 65536) i64 @evolve.intrinsic2.class_id(i64 noundef %value.0, ptr nocapture noundef readnone %value.1) unnamed_addr #12 {
start:
  %_0 = and i64 %value.0, 65535
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.is?"(i64 noundef %left.0, ptr noundef readnone %left.1, i64 noundef %right.0, ptr noundef readnone %right.1) unnamed_addr #12 {
start:
  %_3.i = icmp eq i64 %left.0, %right.0
  %0 = icmp eq ptr %left.1, %right.1
  %_0.sroa.0.0.i = and i1 %_3.i, %0
  ret i1 %_0.sroa.0.0.i
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.is_not?"(i64 noundef %left.0, ptr noundef readnone %left.1, i64 noundef %right.0, ptr noundef readnone %right.1) unnamed_addr #12 {
start:
  %_3.i = icmp ne i64 %left.0, %right.0
  %0 = icmp ne ptr %left.1, %right.1
  %_0.sroa.0.0.i.not = or i1 %_3.i, %0
  ret i1 %_0.sroa.0.0.i.not
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.true?"(i64 noundef %value.0, ptr nocapture noundef readnone %value.1) unnamed_addr #12 {
start:
  %_0.i = icmp ugt i64 %value.0, 1
  ret i1 %_0.i
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.false?"(i64 noundef %value.0, ptr nocapture noundef readnone %value.1) unnamed_addr #12 {
start:
  %_0.i = icmp ult i64 %value.0, 2
  ret i1 %_0.i
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve.intrinsic2.get(i64 noundef %value.0, ptr nocapture noundef readonly %value.1, i64 noundef %index.0, ptr noundef %index.1) unnamed_addr #5 {
start:
  %0 = icmp eq i64 %index.0, 4
  br i1 %0, label %bb3, label %bb10

bb3:                                              ; preds = %start
  %_0.i = trunc i64 %value.0 to i16
  switch i16 %_0.i, label %bb10 [
    i16 15, label %bb6
    i16 16, label %bb5
  ]

bb6:                                              ; preds = %bb3
  %_6 = ptrtoint ptr %index.1 to i64
  %_2.i.i = lshr i64 %value.0, 32
  %_6.i.not = icmp ult i64 %_2.i.i, %_6
  %_9.i = getelementptr inbounds nuw %"object::Object", ptr %value.1, i64 %_6
  %spec.select = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  br label %bb10.sink.split

bb5:                                              ; preds = %bb3
  %_9 = ptrtoint ptr %index.1 to i64
  %adjusted_index.i = add i64 %_9, -1
  %1 = getelementptr inbounds nuw i8, ptr %value.1, i64 24
  %_4.i = load i64, ptr %1, align 8, !alias.scope !55, !noundef !3
  %_3.i = icmp ult i64 %adjusted_index.i, %_4.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit"

bb1.i:                                            ; preds = %bb5
  %2 = getelementptr inbounds nuw i8, ptr %value.1, i64 16
  %idx1.i = load i64, ptr %2, align 8, !alias.scope !55, !noundef !3
  %logical_index.i = add i64 %idx1.i, %adjusted_index.i
  %self2.i = load i64, ptr %value.1, align 8, !range !5, !alias.scope !55, !noundef !3
  %_17.not.i = icmp ult i64 %logical_index.i, %self2.i
  %3 = select i1 %_17.not.i, i64 0, i64 %self2.i
  %idx.sroa.0.0.i = sub nuw i64 %logical_index.i, %3
  %4 = getelementptr inbounds nuw i8, ptr %value.1, i64 8
  %_18.i = load ptr, ptr %4, align 8, !alias.scope !55, !nonnull !3, !noundef !3
  %_7.i = getelementptr inbounds nuw %"object::Object", ptr %_18.i, i64 %idx.sroa.0.0.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit": ; preds = %bb5, %bb1.i
  %_0.sroa.0.0.i = phi ptr [ %_7.i, %bb1.i ], [ null, %bb5 ]
  %.not.i = icmp eq ptr %_0.sroa.0.0.i, null
  %alloc_e9164108e3a8c437bd8ee95ca79fdb9f..i = select i1 %.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_0.sroa.0.0.i
  br label %bb10.sink.split

bb10.sink.split:                                  ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit", %bb6
  %spec.select.sink3 = phi ptr [ %spec.select, %bb6 ], [ %alloc_e9164108e3a8c437bd8ee95ca79fdb9f..i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E.exit" ]
  %_0.0.i1 = load i64, ptr %spec.select.sink3, align 8, !noundef !3
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.sink3, i64 8
  %_0.1.i2 = load ptr, ptr %5, align 8, !noundef !3
  br label %bb10

bb10:                                             ; preds = %bb10.sink.split, %bb3, %start
  %_0.sroa.5.0 = phi ptr [ null, %start ], [ null, %bb3 ], [ %_0.1.i2, %bb10.sink.split ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb3 ], [ %_0.0.i1, %bb10.sink.split ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.5.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.call!"(i64 noundef %s.0, ptr noundef %s.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %0 = and i64 %s.0, 65535
  %_4 = icmp eq i64 %0, 19
  br i1 %_4, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %_6.i2 = icmp ugt i64 %s.0, 12884901887
  %_9.i8 = getelementptr inbounds nuw i8, ptr %s.1, i64 48
  %spec.select = select i1 %_6.i2, ptr %_9.i8, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i4 = load i64, ptr %spec.select, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i5 = load ptr, ptr %1, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %s.0, 4294967296
  %_9.i = getelementptr inbounds nuw i8, ptr %s.1, i64 16
  %spec.select13 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %2 = getelementptr inbounds nuw i8, ptr %spec.select13, i64 8
  %_0.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %s.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %s.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %3, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i12 = shl i64 %_0.i, 32
  %_7.i = or disjoint i64 %_9.i12, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %s.1
  %4 = tail call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i4, ptr noundef %_0.1.i5, i64 noundef %tuple.0, ptr noundef %tuple.1, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  %5 = extractvalue { i64, ptr } %4, 0
  %6 = extractvalue { i64, ptr } %4, 1
  br label %bb4

bb4:                                              ; preds = %start, %bb2
  %_0.sroa.3.0 = phi ptr [ %6, %bb2 ], [ null, %start ]
  %_0.sroa.0.0 = phi i64 [ %5, %bb2 ], [ 257, %start ]
  %7 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %8
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.to_i(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #12 {
start:
  %_3 = trunc i64 %value.0 to i16
  switch i16 %_3, label %bb8 [
    i16 4, label %bb3
    i16 5, label %bb2
  ]

bb3:                                              ; preds = %start
  br label %bb8

bb2:                                              ; preds = %start
  %_10 = ptrtoint ptr %value.1 to i64
  %_8 = bitcast i64 %_10 to double
  %_2.i1 = fcmp ult double %_8, 0xC3E0000000000000
  %_3.i = fcmp uge double %_8, 0x43E0000000000000
  %or.cond.not.i = or i1 %_2.i1, %_3.i
  br i1 %or.cond.not.i, label %bb8, label %bb5

bb8:                                              ; preds = %bb2, %start, %bb5, %bb3
  %_0.sroa.5.0 = phi ptr [ %_2.i, %bb5 ], [ %value.1, %bb3 ], [ null, %start ], [ null, %bb2 ]
  %_0.sroa.0.0 = phi i64 [ 4, %bb5 ], [ %value.0, %bb3 ], [ 257, %start ], [ 257, %bb2 ]
  %0 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %1 = insertvalue { i64, ptr } %0, ptr %_0.sroa.5.0, 1
  ret { i64, ptr } %1

bb5:                                              ; preds = %bb2
  %2 = fptosi double %_8 to i64
  %_2.i = inttoptr i64 %2 to ptr
  br label %bb8
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.to_f(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #12 {
start:
  %_3 = trunc i64 %value.0 to i16
  switch i16 %_3, label %bb6 [
    i16 4, label %bb3
    i16 5, label %bb2
  ]

bb3:                                              ; preds = %start
  %_5 = ptrtoint ptr %value.1 to i64
  %_0.i = sitofp i64 %_5 to double
  %_3.i = bitcast double %_0.i to i64
  %_2.i = inttoptr i64 %_3.i to ptr
  br label %bb6

bb2:                                              ; preds = %start
  br label %bb6

bb6:                                              ; preds = %start, %bb2, %bb3
  %_0.sroa.4.0 = phi ptr [ %value.1, %bb2 ], [ %_2.i, %bb3 ], [ null, %start ]
  %_0.sroa.0.0 = phi i64 [ %value.0, %bb2 ], [ 5, %bb3 ], [ 257, %start ]
  %0 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %1 = insertvalue { i64, ptr } %0, ptr %_0.sroa.4.0, 1
  ret { i64, ptr } %1
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.eq?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha584530b50061e89E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha584530b50061e89E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp eq ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha584530b50061e89E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i2.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i1.i.i = fcmp oeq double %0, %1
  %_0.sroa.0.0.in.i.i = select i1 %_0.i.i.i, i1 %_0.i2.i.i, i1 %_0.i1.i.i
  %spec.select.i1 = select i1 %_0.sroa.0.0.in.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha584530b50061e89E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha584530b50061e89E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.ne?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hedcceef85180cb1bE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hedcceef85180cb1bE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp eq ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hedcceef85180cb1bE.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i.i.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i2.i.i.i = fcmp ord double %1, 0.000000e+00
  %_0.i1.i.i.i = fcmp une double %0, %1
  %_0.sroa.0.0.in.i.i.i = select i1 %_0.i.i.i.i, i1 %_0.i2.i.i.i, i1 %_0.i1.i.i.i
  %spec.select.i1 = select i1 %_0.sroa.0.0.in.i.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hedcceef85180cb1bE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hedcceef85180cb1bE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.lt?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h1f86499ef42247fbE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h1f86499ef42247fbE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp slt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h1f86499ef42247fbE.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp ord double %0, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %0, %1
  %_0.i.not.i.i = and i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i1 = select i1 %_0.i.not.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h1f86499ef42247fbE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h1f86499ef42247fbE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.ge?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb3dd1cedc84245e2E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb3dd1cedc84245e2E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp slt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb3dd1cedc84245e2E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i.i.i = fcmp oge double %0, %1
  %_0.i.i1 = or i1 %_0.i1.i.i, %_0.i.i.i
  %spec.select.i2 = select i1 %_0.i.i1, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb3dd1cedc84245e2E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb3dd1cedc84245e2E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i2, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.gt?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h82fb85b79554d7e2E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h82fb85b79554d7e2E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp sgt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h82fb85b79554d7e2E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp ord double %1, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %1, %0
  %_0.i.not.i.i = and i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i1 = select i1 %_0.i.not.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h82fb85b79554d7e2E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h82fb85b79554d7e2E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.le?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h344e06628d4d416cE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h344e06628d4d416cE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp sgt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h344e06628d4d416cE.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i.i.i.i = fcmp oge double %1, %0
  %_0.i.i.i = or i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i1 = select i1 %_0.i.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h344e06628d4d416cE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h344e06628d4d416cE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.in?"(i64 noundef %lhs.0, ptr noundef %lhs.1, i64 noundef %rhs.0, ptr noundef %rhs.1) unnamed_addr #12 {
start:
  %_7.not.i.i = icmp eq i64 %lhs.0, %rhs.0
  br i1 %_7.not.i.i, label %bb4.i.i, label %"evolve.intrinsic2.eq?.exit"

bb4.i.i:                                          ; preds = %start
  %_8.i.i = trunc i64 %lhs.0 to i16
  switch i16 %_8.i.i, label %"evolve.intrinsic2.eq?.exit" [
    i16 4, label %bb6.i.i
    i16 5, label %bb5.i.i
  ]

bb6.i.i:                                          ; preds = %bb4.i.i
  %_0.i.i = icmp eq ptr %lhs.1, %rhs.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %"evolve.intrinsic2.eq?.exit"

bb5.i.i:                                          ; preds = %bb4.i.i
  %_29.i.i = ptrtoint ptr %lhs.1 to i64
  %_32.i.i = ptrtoint ptr %rhs.1 to i64
  %0 = bitcast i64 %_29.i.i to double
  %1 = bitcast i64 %_32.i.i to double
  %_0.i.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i2.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i1.i.i = fcmp oeq double %0, %1
  %_0.sroa.0.0.in.i.i = select i1 %_0.i.i.i, i1 %_0.i2.i.i, i1 %_0.i1.i.i
  %spec.select.i1 = select i1 %_0.sroa.0.0.in.i.i, i64 2, i64 1
  br label %"evolve.intrinsic2.eq?.exit"

"evolve.intrinsic2.eq?.exit":                     ; preds = %start, %bb4.i.i, %bb6.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %spec.select.i1, %bb5.i.i ], [ %spec.select.i, %bb6.i.i ], [ 257, %start ], [ 257, %bb4.i.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.times!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %_0.i1.not.i = icmp ne i64 %this.0, 4
  %0 = and i64 %tuple.0, 65535
  %_0.i3.i = icmp ne i64 %0, 19
  %or.cond = or i1 %_0.i1.not.i, %_0.i3.i
  br i1 %or.cond, label %"evolve.intrinsic2.step!.exit", label %bb10.i

bb10.i:                                           ; preds = %start
  %limit.i = ptrtoint ptr %this.1 to i64
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  %_9.i9 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 48
  %spec.select = select i1 %_6.i3, ptr %_9.i9, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i5 = load i64, ptr %spec.select, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i6 = load ptr, ptr %1, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  %_9.i1 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 16
  %spec.select28 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i1
  %2 = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %_0.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %3, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i24 = shl i64 %_0.i, 32
  %_7.i = or disjoint i64 %_9.i24, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_28.i29 = icmp slt ptr %this.1, inttoptr (i64 1 to ptr)
  br i1 %_28.i29, label %"evolve.intrinsic2.step!.exit", label %bb5.i.lr.ph

bb5.i.lr.ph:                                      ; preds = %bb10.i
  %_11.i = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 24
  br label %bb5.i

bb5.i:                                            ; preds = %bb5.i, %bb5.i.lr.ph
  %internal_index.sroa.0.0.i30 = phi i64 [ 1, %bb5.i.lr.ph ], [ %_50.0.i, %bb5.i ]
  %_2.i.i = inttoptr i64 %internal_index.sroa.0.0.i30 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %4, align 8
  %5 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i5, ptr noundef %_0.1.i6, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.0.i30, i64 1)
  %_50.1.i = extractvalue { i64, i1 } %6, 1
  %_50.0.i = extractvalue { i64, i1 } %6, 0
  %_28.i = icmp sgt i64 %_50.0.i, %limit.i
  %or.cond31 = or i1 %_50.1.i, %_28.i
  br i1 %or.cond31, label %"evolve.intrinsic2.step!.exit", label %bb5.i, !prof !58

"evolve.intrinsic2.step!.exit":                   ; preds = %bb10.i, %bb5.i, %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  %7 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %this.1, 1
  ret { i64, ptr } %8
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.upto!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %_0.i.not.i = icmp ne i64 %this.0, 4
  %_0.i1.not.i = icmp ne i64 %limit.0, 4
  %or.cond.not30 = or i1 %_0.i.not.i, %_0.i1.not.i
  %0 = and i64 %tuple.0, 65535
  %_0.i3.i = icmp ne i64 %0, 19
  %or.cond28 = or i1 %or.cond.not30, %_0.i3.i
  br i1 %or.cond28, label %"evolve.intrinsic2.step!.exit", label %bb10.i

bb10.i:                                           ; preds = %start
  %limit.i = ptrtoint ptr %limit.1 to i64
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  %_9.i9 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 48
  %spec.select = select i1 %_6.i3, ptr %_9.i9, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i5 = load i64, ptr %spec.select, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i6 = load ptr, ptr %1, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  %_9.i1 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 16
  %spec.select29 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i1
  %2 = getelementptr inbounds nuw i8, ptr %spec.select29, i64 8
  %_0.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %3, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i24 = shl i64 %_0.i, 32
  %_7.i = or disjoint i64 %_9.i24, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_28.i31 = icmp sgt ptr %this.1, %limit.1
  br i1 %_28.i31, label %"evolve.intrinsic2.step!.exit", label %bb5.i.lr.ph

bb5.i.lr.ph:                                      ; preds = %bb10.i
  %start1.i = ptrtoint ptr %this.1 to i64
  %_11.i = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 24
  br label %bb5.i

bb5.i:                                            ; preds = %bb5.i, %bb5.i.lr.ph
  %internal_index.sroa.0.0.i32 = phi i64 [ %start1.i, %bb5.i.lr.ph ], [ %_50.0.i, %bb5.i ]
  %_2.i.i = inttoptr i64 %internal_index.sroa.0.0.i32 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %4, align 8
  %5 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i5, ptr noundef %_0.1.i6, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.0.i32, i64 1)
  %_50.1.i = extractvalue { i64, i1 } %6, 1
  %_50.0.i = extractvalue { i64, i1 } %6, 0
  %_28.i = icmp sgt i64 %_50.0.i, %limit.i
  %or.cond = or i1 %_50.1.i, %_28.i
  br i1 %or.cond, label %"evolve.intrinsic2.step!.exit", label %bb5.i, !prof !58

"evolve.intrinsic2.step!.exit":                   ; preds = %bb10.i, %bb5.i, %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  %7 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %this.1, 1
  ret { i64, ptr } %8
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.downto!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %_0.i.not.i = icmp ne i64 %this.0, 4
  %_0.i1.not.i = icmp ne i64 %limit.0, 4
  %or.cond.not30 = or i1 %_0.i.not.i, %_0.i1.not.i
  %0 = and i64 %tuple.0, 65535
  %_0.i3.i = icmp ne i64 %0, 19
  %or.cond28 = or i1 %or.cond.not30, %_0.i3.i
  br i1 %or.cond28, label %"evolve.intrinsic2.step!.exit", label %bb10.i

bb10.i:                                           ; preds = %start
  %limit.i = ptrtoint ptr %limit.1 to i64
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  %_9.i9 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 48
  %spec.select = select i1 %_6.i3, ptr %_9.i9, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i5 = load i64, ptr %spec.select, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i6 = load ptr, ptr %1, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  %_9.i1 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 16
  %spec.select29 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i1
  %2 = getelementptr inbounds nuw i8, ptr %spec.select29, i64 8
  %_0.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %3, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i24 = shl i64 %_0.i, 32
  %_7.i = or disjoint i64 %_9.i24, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_31.i31 = icmp slt ptr %this.1, %limit.1
  br i1 %_31.i31, label %"evolve.intrinsic2.step!.exit", label %bb5.i.lr.ph

bb5.i.lr.ph:                                      ; preds = %bb10.i
  %start1.i = ptrtoint ptr %this.1 to i64
  %_11.i = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 24
  br label %bb5.i

bb5.i:                                            ; preds = %bb5.i, %bb5.i.lr.ph
  %internal_index.sroa.0.0.i32 = phi i64 [ %start1.i, %bb5.i.lr.ph ], [ %_50.0.i, %bb5.i ]
  %_2.i.i = inttoptr i64 %internal_index.sroa.0.0.i32 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %4, align 8
  %5 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i5, ptr noundef %_0.1.i6, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.0.i32, i64 -1)
  %_50.1.i = extractvalue { i64, i1 } %6, 1
  %_50.0.i = extractvalue { i64, i1 } %6, 0
  %_31.i = icmp slt i64 %_50.0.i, %limit.i
  %or.cond = or i1 %_50.1.i, %_31.i
  br i1 %or.cond, label %"evolve.intrinsic2.step!.exit", label %bb5.i, !prof !58

"evolve.intrinsic2.step!.exit":                   ; preds = %bb10.i, %bb5.i, %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  %7 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %this.1, 1
  ret { i64, ptr } %8
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.loop!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %0 = and i64 %tuple.0, 65535
  %_0.i3.i.not = icmp eq i64 %0, 19
  br i1 %_0.i3.i.not, label %bb10.i, label %"evolve.intrinsic2.step!.exit"

bb10.i:                                           ; preds = %start
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  %_9.i9 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 48
  %spec.select = select i1 %_6.i3, ptr %_9.i9, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i5 = load i64, ptr %spec.select, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i6 = load ptr, ptr %1, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  %_9.i1 = getelementptr inbounds nuw i8, ptr %tuple.1, i64 16
  %spec.select28 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i1
  %2 = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %_0.1.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %3, align 8, !noundef !3
  %_0.i24 = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i25 = shl i64 %_0.i24, 32
  %_7.i = or disjoint i64 %_9.i25, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_11.i = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %raw_tuple.i, i64 24
  store i64 4, ptr %_11.i, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8
  %5 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i5, ptr noundef %_0.1.i6, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  br label %bb36.i

bb36.i:                                           ; preds = %bb10.i, %bb36.i
  %6 = phi { i64, i1 } [ { i64 2, i1 false }, %bb10.i ], [ %8, %bb36.i ]
  %_50.0.i = extractvalue { i64, i1 } %6, 0
  %_2.i.i = inttoptr i64 %_50.0.i to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %4, align 8
  %7 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i5, ptr noundef %_0.1.i6, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #32
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_50.0.i, i64 1)
  %_50.1.i = extractvalue { i64, i1 } %8, 1
  br i1 %_50.1.i, label %"evolve.intrinsic2.step!.exit", label %bb36.i, !prof !59

"evolve.intrinsic2.step!.exit":                   ; preds = %bb36.i, %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  %_0.i.not = icmp eq i64 %this.0, 257
  br i1 %_0.i.not, label %bb4, label %bb3, !prof !25

bb4:                                              ; preds = %"evolve.intrinsic2.step!.exit"
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h48a7e1f3665210c6E(ptr noalias noundef nonnull readonly align 1 @alloc_50981fdc3d28c727f94146500adf1421, i64 noundef 41, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_332024b46f60319414f831d326a815b7) #33
  unreachable

bb3:                                              ; preds = %"evolve.intrinsic2.step!.exit"
  %9 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %10 = insertvalue { i64, ptr } %9, ptr %this.1, 1
  ret { i64, ptr } %10
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %step.0, ptr noundef %step.1, i64 noundef %closure.0, ptr noundef %closure.1) unnamed_addr #4 {
start:
  %raw_tuple = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple, i8 0, i64 32, i1 false)
  %_0.i.not.i = icmp ne i64 %this.0, 4
  %_0.i1.not.i = icmp ne i64 %limit.0, 4
  %or.cond32.not37 = or i1 %_0.i.not.i, %_0.i1.not.i
  %_0.i2.not.i = icmp ne i64 %step.0, 4
  %or.cond33.not36 = or i1 %or.cond32.not37, %_0.i2.not.i
  %0 = and i64 %closure.0, 65535
  %_0.i3.i = icmp ne i64 %0, 19
  %or.cond34 = or i1 %or.cond33.not36, %_0.i3.i
  br i1 %or.cond34, label %bb27, label %bb8

bb8:                                              ; preds = %start
  %limit = ptrtoint ptr %limit.1 to i64
  %step = ptrtoint ptr %step.1 to i64
  %1 = icmp eq ptr %step.1, null
  br i1 %1, label %bb27, label %bb10

bb10:                                             ; preds = %bb8
  %start1 = ptrtoint ptr %this.1 to i64
  %_6.i9 = icmp ugt i64 %closure.0, 12884901887
  %_9.i15 = getelementptr inbounds nuw i8, ptr %closure.1, i64 48
  %spec.select = select i1 %_6.i9, ptr %_9.i15, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i11 = load i64, ptr %spec.select, align 8, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1.i12 = load ptr, ptr %2, align 8, !noundef !3
  %_6.i.not = icmp ult i64 %closure.0, 4294967296
  %_9.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 16
  %spec.select35 = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %3 = getelementptr inbounds nuw i8, ptr %spec.select35, i64 8
  %_0.1.i = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %closure.0, 8589934591
  %_9.i.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %4, align 8, !noundef !3
  %_0.i26 = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i27 = shl i64 %_0.i26, 32
  %_7.i28 = or disjoint i64 %_9.i27, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %closure.1
  %_27 = icmp sgt ptr %step.1, null
  %_2838 = icmp sgt ptr %this.1, %limit.1
  %or.cond39 = and i1 %_27, %_2838
  br i1 %or.cond39, label %bb27, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb10
  %_30 = icmp slt ptr %step.1, null
  %_11.i = getelementptr inbounds nuw i8, ptr %raw_tuple, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %raw_tuple, i64 24
  br i1 %_30, label %bb16.lr.ph.split.split.us, label %bb16.lr.ph.split.us

bb16.lr.ph.split.us:                              ; preds = %bb16.lr.ph
  br i1 %_27, label %bb16.us, label %bb16.lr.ph.split.us.split.us

bb16.lr.ph.split.us.split.us:                     ; preds = %bb16.lr.ph.split.us
  store i64 4, ptr %_11.i, align 8
  store ptr %this.1, ptr %5, align 8
  %6 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i11, ptr noundef %_0.1.i12, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i28, ptr noundef %_0.sroa.3.0.i) #32
  %7 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %start1, i64 %step)
  %_50.1.us.us52 = extractvalue { i64, i1 } %7, 1
  br i1 %_50.1.us.us52, label %bb27, label %bb36.us.us, !prof !60

bb36.us.us:                                       ; preds = %bb16.lr.ph.split.us.split.us, %bb36.us.us
  %8 = phi { i64, i1 } [ %10, %bb36.us.us ], [ %7, %bb16.lr.ph.split.us.split.us ]
  %_50.0.us.us = extractvalue { i64, i1 } %8, 0
  %_2.i.us.us = inttoptr i64 %_50.0.us.us to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.us.us, ptr %5, align 8
  %9 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i11, ptr noundef %_0.1.i12, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i28, ptr noundef %_0.sroa.3.0.i) #32
  %10 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_50.0.us.us, i64 %step)
  %_50.1.us.us = extractvalue { i64, i1 } %10, 1
  br i1 %_50.1.us.us, label %bb27, label %bb36.us.us, !prof !61

bb16.us:                                          ; preds = %bb16.lr.ph.split.us, %bb16.us
  %internal_index.sroa.0.040.us = phi i64 [ %_50.0.us, %bb16.us ], [ %start1, %bb16.lr.ph.split.us ]
  %_2.i.us = inttoptr i64 %internal_index.sroa.0.040.us to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.us, ptr %5, align 8
  %11 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i11, ptr noundef %_0.1.i12, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i28, ptr noundef %_0.sroa.3.0.i) #32
  %12 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.040.us, i64 %step)
  %_50.1.us = extractvalue { i64, i1 } %12, 1
  %_50.0.us = extractvalue { i64, i1 } %12, 0
  %_28.us = icmp sgt i64 %_50.0.us, %limit
  %or.cond = or i1 %_50.1.us, %_28.us
  br i1 %or.cond, label %bb27, label %bb16.us, !prof !58

bb16.lr.ph.split.split.us:                        ; preds = %bb16.lr.ph
  %_31.us50 = icmp slt ptr %this.1, %limit.1
  br i1 %_31.us50, label %bb27, label %bb5.i.us43

bb5.i.us43:                                       ; preds = %bb16.lr.ph.split.split.us, %bb5.i.us43
  %internal_index.sroa.0.040.us4251 = phi i64 [ %_50.0.us47, %bb5.i.us43 ], [ %start1, %bb16.lr.ph.split.split.us ]
  %_2.i.us44 = inttoptr i64 %internal_index.sroa.0.040.us4251 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.us44, ptr %5, align 8
  %13 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i11, ptr noundef %_0.1.i12, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i28, ptr noundef %_0.sroa.3.0.i) #32
  %14 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.040.us4251, i64 %step)
  %_50.1.us45 = extractvalue { i64, i1 } %14, 1
  %_50.0.us47 = extractvalue { i64, i1 } %14, 0
  %_31.us = icmp slt i64 %_50.0.us47, %limit
  %or.cond53 = or i1 %_50.1.us45, %_31.us
  br i1 %or.cond53, label %bb27, label %bb5.i.us43, !prof !58

bb27:                                             ; preds = %bb10, %bb16.lr.ph.split.us.split.us, %bb16.lr.ph.split.split.us, %bb5.i.us43, %bb16.us, %bb36.us.us, %bb8, %start
  %_0.sroa.4.1 = phi ptr [ null, %start ], [ null, %bb8 ], [ %this.1, %bb36.us.us ], [ %this.1, %bb16.us ], [ %this.1, %bb5.i.us43 ], [ %this.1, %bb16.lr.ph.split.split.us ], [ %this.1, %bb16.lr.ph.split.us.split.us ], [ %this.1, %bb10 ]
  %_0.sroa.0.1 = phi i64 [ 257, %start ], [ 257, %bb8 ], [ 4, %bb36.us.us ], [ 4, %bb16.us ], [ 4, %bb5.i.us43 ], [ 4, %bb16.lr.ph.split.split.us ], [ 4, %bb16.lr.ph.split.us.split.us ], [ 4, %bb10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple)
  %15 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.1, 0
  %16 = insertvalue { i64, ptr } %15, ptr %_0.sroa.4.1, 1
  ret { i64, ptr } %16
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.add(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hcedf17bea90a9b22E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hcedf17bea90a9b22E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_13.i = ptrtoint ptr %right.1 to i64
  %0 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_12.i, i64 %_13.i)
  %_5.1.i.i = extractvalue { i64, i1 } %0, 1
  %_5.0.i.i = extractvalue { i64, i1 } %0, 0
  %_2.i.i = inttoptr i64 %_5.0.i.i to ptr
  %spec.select = select i1 %_5.1.i.i, ptr null, ptr %_2.i.i
  %spec.select1 = select i1 %_5.1.i.i, i64 257, i64 4
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hcedf17bea90a9b22E.exit

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_28.i = ptrtoint ptr %right.1 to i64
  %_20.i = bitcast i64 %_28.i to double
  %_0.i.i = fadd double %_19.i, %_20.i
  %1 = tail call double @llvm.fabs.f64(double %_0.i.i)
  %_30.i = fcmp une double %1, 0x7FF0000000000000
  %_36.i = bitcast double %_0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %2 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp ne i64 %_38.i, 0
  %3 = or i1 %2, %cond.i
  %_29.not.i = and i1 %_30.i, %3
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select3 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select4 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hcedf17bea90a9b22E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17hcedf17bea90a9b22E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
  %_0.sroa.6.0.i = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select, %bb6.i ], [ %spec.select3, %bb5.i ]
  %_0.sroa.0.0.i = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select1, %bb6.i ], [ %spec.select4, %bb5.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.6.0.i, 1
  ret { i64, ptr } %5
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.sub(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17ha0491ba739081c39E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17ha0491ba739081c39E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_13.i = ptrtoint ptr %right.1 to i64
  %0 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %_12.i, i64 %_13.i)
  %_5.1.i.i = extractvalue { i64, i1 } %0, 1
  %_5.0.i.i = extractvalue { i64, i1 } %0, 0
  %_2.i.i = inttoptr i64 %_5.0.i.i to ptr
  %spec.select = select i1 %_5.1.i.i, ptr null, ptr %_2.i.i
  %spec.select1 = select i1 %_5.1.i.i, i64 257, i64 4
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17ha0491ba739081c39E.exit

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_28.i = ptrtoint ptr %right.1 to i64
  %_20.i = bitcast i64 %_28.i to double
  %_0.i.i = fsub double %_19.i, %_20.i
  %1 = tail call double @llvm.fabs.f64(double %_0.i.i)
  %_30.i = fcmp une double %1, 0x7FF0000000000000
  %_36.i = bitcast double %_0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %2 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp ne i64 %_38.i, 0
  %3 = or i1 %2, %cond.i
  %_29.not.i = and i1 %_30.i, %3
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select3 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select4 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17ha0491ba739081c39E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17ha0491ba739081c39E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
  %_0.sroa.6.0.i = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select, %bb6.i ], [ %spec.select3, %bb5.i ]
  %_0.sroa.0.0.i = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select1, %bb6.i ], [ %spec.select4, %bb5.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.6.0.i, 1
  ret { i64, ptr } %5
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.mul(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h73e8efc95fd2cd72E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h73e8efc95fd2cd72E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_13.i = ptrtoint ptr %right.1 to i64
  %0 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %_12.i, i64 %_13.i)
  %_5.1.i.i = extractvalue { i64, i1 } %0, 1
  %_5.0.i.i = extractvalue { i64, i1 } %0, 0
  %_2.i.i = inttoptr i64 %_5.0.i.i to ptr
  %spec.select = select i1 %_5.1.i.i, ptr null, ptr %_2.i.i
  %spec.select1 = select i1 %_5.1.i.i, i64 257, i64 4
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h73e8efc95fd2cd72E.exit

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_28.i = ptrtoint ptr %right.1 to i64
  %_20.i = bitcast i64 %_28.i to double
  %_0.i.i = fmul double %_19.i, %_20.i
  %1 = tail call double @llvm.fabs.f64(double %_0.i.i)
  %_30.i = fcmp une double %1, 0x7FF0000000000000
  %_36.i = bitcast double %_0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %2 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp ne i64 %_38.i, 0
  %3 = or i1 %2, %cond.i
  %_29.not.i = and i1 %_30.i, %3
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select3 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select4 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h73e8efc95fd2cd72E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17h73e8efc95fd2cd72E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
  %_0.sroa.6.0.i = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select, %bb6.i ], [ %spec.select3, %bb5.i ]
  %_0.sroa.0.0.i = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select1, %bb6.i ], [ %spec.select4, %bb5.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.6.0.i, 1
  ret { i64, ptr } %5
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.trem(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_6 = ptrtoint ptr %right.1 to i64
  %0 = and i64 %_6, 9223372036854775807
  %_3 = icmp ne i64 %0, 0
  %_7.not.i = icmp eq i64 %left.0, %right.0
  %or.cond = and i1 %_7.not.i, %_3
  br i1 %or.cond, label %bb4.i, label %bb3

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %bb3 [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %cond = icmp eq ptr %right.1, inttoptr (i64 -1 to ptr)
  br i1 %cond, label %bb3, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb6.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %1 = srem i64 %_12.i, %_6
  %2 = inttoptr i64 %1 to ptr
  br label %bb3

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_0.i.i = frem double %_19.i, %_20.i
  %3 = tail call double @llvm.fabs.f64(double %_0.i.i)
  %_30.i = fcmp une double %3, 0x7FF0000000000000
  %_36.i = bitcast double %_0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %4 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp ne i64 %_38.i, 0
  %5 = or i1 %4, %cond.i
  %_29.not.i = and i1 %_30.i, %5
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select1 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select2 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i, %bb6.i, %bb5.i.i.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select1, %bb5.i ], [ %2, %bb5.i.i.i ], [ null, %bb6.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select2, %bb5.i ], [ 4, %bb5.i.i.i ], [ 4, %bb6.i ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.rem(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_6 = ptrtoint ptr %right.1 to i64
  %0 = and i64 %_6, 9223372036854775807
  %_3 = icmp ne i64 %0, 0
  %_7.not.i = icmp eq i64 %left.0, %right.0
  %or.cond = and i1 %_7.not.i, %_3
  br i1 %or.cond, label %bb4.i, label %bb3

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %bb3 [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %cond = icmp eq ptr %right.1, inttoptr (i64 -1 to ptr)
  br i1 %cond, label %bb3, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17h05695ee9ae7005cfE.exit.i.i.i"

"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17h05695ee9ae7005cfE.exit.i.i.i": ; preds = %bb6.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %r.i.i.i.i = srem i64 %_12.i, %_6
  %_8.i.i.i.i = icmp slt i64 %r.i.i.i.i, 0
  %rhs1.sroa.0.0.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %_6, i1 false)
  %1 = select i1 %_8.i.i.i.i, i64 %rhs1.sroa.0.0.i.i.i.i, i64 0
  %_0.sroa.0.0.i.i.i.i = add i64 %1, %r.i.i.i.i
  %2 = inttoptr i64 %_0.sroa.0.0.i.i.i.i to ptr
  br label %bb3

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_4.i.i = frem double %_19.i, %_20.i
  %_5.i.i = fcmp olt double %_4.i.i, 0.000000e+00
  %_0.sroa.0.0.i.i.i1 = tail call double @llvm.fabs.f64(double %_20.i)
  %3 = fadd double %_4.i.i, %_0.sroa.0.0.i.i.i1
  %_0.sroa.0.0.i.i = select i1 %_5.i.i, double %3, double %_4.i.i
  %4 = tail call double @llvm.fabs.f64(double %_0.sroa.0.0.i.i)
  %_30.i = fcmp une double %4, 0x7FF0000000000000
  %_36.i = bitcast double %_0.sroa.0.0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %5 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp eq i64 %_38.i, 0
  %or.cond4.i = and i1 %_30.i, %cond.i
  %not.or.cond4.i = xor i1 %or.cond4.i, true
  %spec.select = select i1 %not.or.cond4.i, i1 true, i1 %5
  %_29.not.i = and i1 %_30.i, %spec.select
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select2 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select3 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i, %bb6.i, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17h05695ee9ae7005cfE.exit.i.i.i", %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select2, %bb5.i ], [ %2, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17h05695ee9ae7005cfE.exit.i.i.i" ], [ null, %bb6.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select3, %bb5.i ], [ 4, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17h05695ee9ae7005cfE.exit.i.i.i" ], [ 4, %bb6.i ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.div(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_6 = ptrtoint ptr %right.1 to i64
  %0 = and i64 %_6, 9223372036854775807
  %_3 = icmp ne i64 %0, 0
  %_7.not.i = icmp eq i64 %left.0, %right.0
  %or.cond = and i1 %_7.not.i, %_3
  br i1 %or.cond, label %bb4.i, label %bb3

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %bb3 [
    i16 4, label %bb5.i.i
    i16 5, label %bb5.i
  ]

bb5.i.i:                                          ; preds = %bb4.i
  %_6.i.i = icmp eq ptr %left.1, inttoptr (i64 -9223372036854775808 to ptr)
  %1 = icmp eq ptr %right.1, inttoptr (i64 -1 to ptr)
  %or.cond.i1 = and i1 %_6.i.i, %1
  br i1 %or.cond.i1, label %bb3, label %_ZN4core3ops8function6FnOnce9call_once17h7ba35c26bb31f6a7E.exit, !prof !54

_ZN4core3ops8function6FnOnce9call_once17h7ba35c26bb31f6a7E.exit: ; preds = %bb5.i.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %rem.sroa.7.2.i.i = srem i64 %_12.i, %_6
  %2 = sdiv i64 %_12.i, %_6
  %3 = icmp eq i64 %rem.sroa.7.2.i.i, 0
  %_2.i.i = inttoptr i64 %2 to ptr
  %spec.select = select i1 %3, ptr %_2.i.i, ptr null
  %spec.select7 = select i1 %3, i64 4, i64 257
  br label %bb3

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_0.i.i = fdiv double %_19.i, %_20.i
  %4 = tail call double @llvm.fabs.f64(double %_0.i.i)
  %_30.i = fcmp une double %4, 0x7FF0000000000000
  %_36.i = bitcast double %_0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %5 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp ne i64 %_38.i, 0
  %6 = or i1 %5, %cond.i
  %_29.not.i = and i1 %_30.i, %6
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select9 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select10 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i.i, %_ZN4core3ops8function6FnOnce9call_once17h7ba35c26bb31f6a7E.exit, %bb5.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ null, %bb5.i.i ], [ %spec.select, %_ZN4core3ops8function6FnOnce9call_once17h7ba35c26bb31f6a7E.exit ], [ %spec.select9, %bb5.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ 257, %bb5.i.i ], [ %spec.select7, %_ZN4core3ops8function6FnOnce9call_once17h7ba35c26bb31f6a7E.exit ], [ %spec.select10, %bb5.i ]
  %7 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %8
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.tdiv(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_6 = ptrtoint ptr %right.1 to i64
  %0 = and i64 %_6, 9223372036854775807
  %_3 = icmp ne i64 %0, 0
  %_7.not.i = icmp eq i64 %left.0, %right.0
  %or.cond = and i1 %_7.not.i, %_3
  br i1 %or.cond, label %bb4.i, label %bb3

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %bb3 [
    i16 4, label %bb2.i.i
    i16 5, label %bb5.i
  ]

bb2.i.i:                                          ; preds = %bb4.i
  %_4.i.i = icmp eq ptr %left.1, inttoptr (i64 -9223372036854775808 to ptr)
  %1 = icmp eq ptr %right.1, inttoptr (i64 -1 to ptr)
  %or.cond.i.i = and i1 %_4.i.i, %1
  br i1 %or.cond.i.i, label %bb3, label %bb8.i, !prof !54

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_3.i.i1 = fdiv double %_19.i, %_20.i
  %_0.i.i.i.i = fcmp oeq double %_3.i.i1, 0.000000e+00
  %_0.i1.i.i.i = frem double %_3.i.i1, 1.000000e+00
  %_0.sroa.0.0.i.i.i = select i1 %_0.i.i.i.i, double 0.000000e+00, double %_0.i1.i.i.i
  %_0.i.i.i = fcmp uno double %_0.sroa.0.0.i.i.i, 0.000000e+00
  %_0.i1.i.i = fsub double %_3.i.i1, %_0.sroa.0.0.i.i.i
  %_0.sroa.0.0.i.i2 = select i1 %_0.i.i.i, double %_3.i.i1, double %_0.i1.i.i
  %2 = tail call double @llvm.fabs.f64(double %_0.sroa.0.0.i.i2)
  %_30.i = fcmp une double %2, 0x7FF0000000000000
  %_36.i = bitcast double %_0.sroa.0.0.i.i2 to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %3 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp eq i64 %_38.i, 0
  %or.cond4.i = and i1 %_30.i, %cond.i
  %not.or.cond4.i = xor i1 %or.cond4.i, true
  %spec.select = select i1 %not.or.cond4.i, i1 true, i1 %3
  %_29.not.i = and i1 %_30.i, %spec.select
  %_2.i5.i = inttoptr i64 %_36.i to ptr
  %spec.select6 = select i1 %_29.not.i, ptr %_2.i5.i, ptr null
  %spec.select7 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb8.i:                                            ; preds = %bb2.i.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_5.i.i = sdiv i64 %_12.i, %_6
  %_2.i.i = inttoptr i64 %_5.i.i to ptr
  br label %bb3

bb3:                                              ; preds = %bb8.i, %bb4.i, %bb5.i, %bb2.i.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ %_2.i.i, %bb8.i ], [ null, %bb4.i ], [ %spec.select6, %bb5.i ], [ null, %bb2.i.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 4, %bb8.i ], [ 257, %bb4.i ], [ %spec.select7, %bb5.i ], [ 257, %bb2.i.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %5
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.div?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_5.not = icmp eq i64 %left.0, %right.0
  br i1 %_5.not, label %bb4, label %bb11

bb4:                                              ; preds = %start
  %_7 = trunc i64 %left.0 to i16
  switch i16 %_7, label %bb11 [
    i16 4, label %bb7
    i16 5, label %bb6
  ]

bb7:                                              ; preds = %bb4
  %_10 = ptrtoint ptr %right.1 to i64
  switch i64 %_10, label %bb9 [
    i64 -1, label %bb1.i
    i64 0, label %bb2.i3
  ]

bb2.i3:                                           ; preds = %bb7
  %0 = icmp eq ptr %left.1, null
  br i1 %0, label %bb1.i, label %bb11

bb6:                                              ; preds = %bb4
  %_17 = ptrtoint ptr %left.1 to i64
  %_12 = bitcast i64 %_17 to double
  %_19 = ptrtoint ptr %right.1 to i64
  %_13 = bitcast i64 %_19 to double
  %_20 = frem double %_12, %_13
  %div1 = fcmp oeq double %_20, 0.000000e+00
  br i1 %div1, label %bb1.i, label %bb11

bb9:                                              ; preds = %bb7
  %_9 = ptrtoint ptr %left.1 to i64
  %_5.i = srem i64 %_9, %_10
  %1 = icmp eq i64 %_5.i, 0
  br i1 %1, label %bb1.i, label %bb11

bb1.i:                                            ; preds = %bb7, %bb2.i3, %bb6, %bb9
  br label %bb11

bb11:                                             ; preds = %bb1.i, %bb2.i3, %bb6, %bb9, %bb4, %start
  %_0.sroa.0.1 = phi i64 [ 257, %start ], [ 257, %bb4 ], [ 2, %bb1.i ], [ 1, %bb2.i3 ], [ 1, %bb6 ], [ 1, %bb9 ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.1, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.zero?"(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #12 {
start:
  %_3 = trunc i64 %value.0 to i16
  switch i16 %_3, label %bb6 [
    i16 4, label %bb3
    i16 5, label %bb2
  ]

bb3:                                              ; preds = %start
  %_4 = icmp eq ptr %value.1, null
  %spec.select = select i1 %_4, i64 2, i64 1
  br label %bb6

bb2:                                              ; preds = %start
  %_10 = ptrtoint ptr %value.1 to i64
  %0 = and i64 %_10, 9223372036854775807
  %_6 = icmp eq i64 %0, 0
  %spec.select5 = select i1 %_6, i64 2, i64 1
  br label %bb6

bb6:                                              ; preds = %start, %bb2, %bb3
  %_0.sroa.0.0 = phi i64 [ %spec.select5, %bb2 ], [ %spec.select, %bb3 ], [ 257, %start ]
  %1 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr null, 1
  ret { i64, ptr } %2
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_sitofp(i64 noundef %value) unnamed_addr #12 {
start:
  %_0 = sitofp i64 %value to double
  ret double %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_fptosi(double noundef %value) unnamed_addr #12 {
start:
  %0 = fptosi double %value to i64
  ret i64 %0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_and(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #12 {
start:
  %_0 = and i64 %rhs, %lhs
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_or(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #12 {
start:
  %_0 = or i64 %rhs, %lhs
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_xor(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #12 {
start:
  %_0 = xor i64 %rhs, %lhs
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fneg(double noundef %value) unnamed_addr #12 {
start:
  %_0 = fneg double %value
  ret double %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fadd(double noundef %lhs, double noundef %rhs) unnamed_addr #12 {
start:
  %_0 = fadd double %lhs, %rhs
  ret double %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fsub(double noundef %lhs, double noundef %rhs) unnamed_addr #12 {
start:
  %_0 = fsub double %lhs, %rhs
  ret double %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fmul(double noundef %lhs, double noundef %rhs) unnamed_addr #12 {
start:
  %_0 = fmul double %lhs, %rhs
  ret double %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fdiv(double noundef %lhs, double noundef %rhs) unnamed_addr #12 {
start:
  %_0 = fdiv double %lhs, %rhs
  ret double %_0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_frem(double noundef %lhs, double noundef %rhs) unnamed_addr #12 {
start:
  %_0 = frem double %lhs, %rhs
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @new_string(ptr noalias noundef nonnull readonly align 1 %value.0, i64 noundef %value.1) unnamed_addr #9 {
start:
  %_5.i = shl i64 %value.1, 32
  %_3.i = or disjoint i64 %_5.i, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %value.0, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::string::use_str::<impl core::convert::From<evolve_inner_core::object::Object> for &str>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { ptr, i64 } @"_ZN17evolve_inner_core6string7use_str98_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$$RF$str$GT$4from17ha3df9a52ebed70baE"(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #9 {
start:
  %_2.i.i = lshr i64 %value.0, 32
  %0 = insertvalue { ptr, i64 } poison, ptr %value.1, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %_2.i.i, 1
  ret { ptr, i64 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @from_mut_str_to_object(ptr noalias noundef nonnull align 1 %value.0, i64 noundef %value.1) unnamed_addr #9 {
start:
  %_5.i = shl i64 %value.1, 32
  %_3.i = or disjoint i64 %_5.i, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %value.0, 1
  ret { i64, ptr } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define { i64, ptr } @from_string_to_object(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #10 {
start:
  %_3.sroa.1.0.value.sroa_idx = getelementptr inbounds nuw i8, ptr %value, i64 8
  %_3.sroa.1.0.copyload = load ptr, ptr %_3.sroa.1.0.value.sroa_idx, align 8, !nonnull !3, !noundef !3
  %_3.sroa.2.0.value.sroa_idx = getelementptr inbounds nuw i8, ptr %value, i64 16
  %_3.sroa.2.0.copyload = load i64, ptr %_3.sroa.2.0.value.sroa_idx, align 8
  %_5.i.i = shl i64 %_3.sroa.2.0.copyload, 32
  %_3.i.i = or disjoint i64 %_5.i.i, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3.i.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %_3.sroa.1.0.copyload, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::string::use_str::<impl core::convert::From<evolve_inner_core::object::Object> for alloc::string::String>::from
; Function Attrs: nounwind nonlazybind
define void @"_ZN17evolve_inner_core6string7use_str112_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$alloc..string..String$GT$4from17h14bb0f03d01c59e7E"(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([24 x i8]) align 8 dereferenceable(24) %_0, i64 noundef %value.0, ptr nocapture noundef readonly %value.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_2.i.i.i = lshr i64 %value.0, 32
  %0 = icmp ult i64 %value.0, 4294967296
  br i1 %0, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17he60c8b8f2f47592bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i": ; preds = %start
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !62
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i.i = tail call noalias noundef ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4294967296) %_2.i.i.i, i64 noundef range(i64 1, 9) 1) #32, !noalias !62
  %2 = icmp eq ptr %_0.i.i.i.i.i.i, null
  br i1 %2, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17he60c8b8f2f47592bE.exit"

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i"
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5b039796a4ecc373E(i64 noundef 1, i64 range(i64 0, 4294967296) %_2.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5c61c6fce112c89d9092413237e17979) #33, !noalias !70
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17he60c8b8f2f47592bE.exit": ; preds = %start, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i"
  %_4.sroa.10.0.i.i = phi ptr [ %_0.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i" ], [ inttoptr (i64 1 to ptr), %start ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %_4.sroa.10.0.i.i, ptr nonnull readonly align 1 %value.1, i64 range(i64 0, 4294967296) %_2.i.i.i, i1 false), !noalias !71
  store i64 %_2.i.i.i, ptr %_0, align 8
  %_3.sroa.4.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %_3.sroa.4.0._0.sroa_idx, align 8
  %_3.sroa.5.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %_2.i.i.i, ptr %_3.sroa.5.0._0.sroa_idx, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
define noundef range(i64 -1, 2) i64 @evolve_string_bytes_cmp(ptr noalias nocapture noundef nonnull readonly align 1 %value1.0, i64 noundef %value1.1, ptr noalias nocapture noundef nonnull readonly align 1 %value2.0, i64 noundef %value2.1) unnamed_addr #15 {
start:
  %left.1.right.1.i = tail call i64 @llvm.umin.i64(i64 %value1.1, i64 %value2.1)
  %diff.i = sub i64 %value1.1, %value2.1
  %0 = tail call i32 @memcmp(ptr nonnull readonly align 1 %value1.0, ptr nonnull readonly align 1 %value2.0, i64 %left.1.right.1.i), !alias.scope !72
  %1 = sext i32 %0 to i64
  %2 = icmp eq i32 %0, 0
  %spec.store.select.i = select i1 %2, i64 %diff.i, i64 %1
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i, i64 0)
  %_0 = sext i8 %_0.i to i64
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
define noundef zeroext i1 @evolve_string_bytes_eq(ptr noalias nocapture noundef nonnull readonly align 1 %value1.0, i64 noundef %value1.1, ptr noalias nocapture noundef nonnull readonly align 1 %value2.0, i64 noundef %value2.1) unnamed_addr #15 {
start:
  %_3.not = icmp eq i64 %value1.1, %value2.1
  br i1 %_3.not, label %bb2, label %bb3

bb2:                                              ; preds = %start
  %bcmp = tail call i32 @bcmp(ptr nonnull %value1.0, ptr nonnull %value2.0, i64 %value1.1)
  %0 = icmp eq i32 %bcmp, 0
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  %_0.sroa.0.0 = phi i1 [ %0, %bb2 ], [ false, %start ]
  ret i1 %_0.sroa.0.0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_string(i32 noundef %len, ptr noundef %ptr) unnamed_addr #12 {
start:
  %_5 = zext i32 %len to i64
  %_4 = shl nuw i64 %_5, 32
  %_3 = or disjoint i64 %_4, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3, 0
  %1 = insertvalue { i64, ptr } %0, ptr %ptr, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::string::<impl evolve_inner_core::object::Object>::extract_str
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { ptr, i64 } @"_ZN17evolve_inner_core6string51_$LT$impl$u20$evolve_inner_core..object..Object$GT$11extract_str17h9b97e25111f05f24E"(i64 noundef %self.0, ptr noundef %self.1) unnamed_addr #9 {
start:
  %_2.i = lshr i64 %self.0, 32
  %0 = insertvalue { ptr, i64 } poison, ptr %self.1, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %_2.i, 1
  ret { ptr, i64 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @test_evolve.from.ptr.tuple(i64 noundef %size, ptr noundef %ptr) unnamed_addr #9 {
start:
  %_3.not = icmp eq i64 %size, 0
  %_9 = shl i64 %size, 32
  %_7 = or disjoint i64 %_9, 15
  %_0.sroa.3.0 = select i1 %_3.not, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %ptr
  %0 = insertvalue { i64, ptr } poison, i64 %_7, 0
  %1 = insertvalue { i64, ptr } %0, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %1
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @evolve.alloc.tuple(i64 noundef %size) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_2.not = icmp eq i64 %size, 0
  br i1 %_2.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %_6 = add i64 %size, 1
  %_9.0.i.i.i.i.i = shl i64 %_6, 4
  %_9.1.i.i.i.i.i = icmp ugt i64 %_6, 1152921504606846975
  %_14.i.i.i.i.i = icmp ugt i64 %_9.0.i.i.i.i.i, 9223372036854775800
  %0 = or i1 %_9.1.i.i.i.i.i, %_14.i.i.i.i.i
  br i1 %0, label %bb3.i.i, label %bb18.i.i.i

bb18.i.i.i:                                       ; preds = %bb1
  %1 = icmp eq i64 %_9.0.i.i.i.i.i, 0
  br i1 %1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i": ; preds = %bb18.i.i.i
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !76
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i.i = tail call noalias noundef align 8 ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_9.0.i.i.i.i.i, i64 noundef range(i64 1, 9) 8) #32, !noalias !76
  %3 = icmp eq ptr %_0.i.i.i.i.i.i, null
  br i1 %3, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i"

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i", %bb1
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i" ], [ 0, %bb1 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5b039796a4ecc373E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_9.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5b602e1a4cb4cf5305617b913cb00c63) #33, !noalias !83
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h429698438490c537E.exit.i.i.i"
  %_276.i.i = icmp samesign ugt i64 %_6, 1
  br i1 %_276.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i.thread": ; preds = %bb18.i.i.i
  %_8.i.i10 = icmp eq i64 %_6, 0
  tail call void @llvm.assume(i1 %_8.i.i10)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit"

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i"
  %4 = add nsw i64 %_9.0.i.i.i.i.i, -16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %_0.i.i.i.i.i.i, i8 0, i64 %4, i1 false), !noalias !84
  %5 = getelementptr i8, ptr %_0.i.i.i.i.i.i, i64 %_9.0.i.i.i.i.i
  %scevgep.i.i = getelementptr i8, ptr %5, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i.i, i8 0, i64 16, i1 false), !noalias !84
  %6 = icmp samesign ult i64 %_6, 576460752303423488
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i.thread"
  %storemerge5.i.i3 = phi i1 [ %6, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E.exit" ], [ true, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i.thread" ], [ true, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i" ]
  %value.sroa.4.0.copyload.i = phi ptr [ %_0.i.i.i.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E.exit" ], [ inttoptr (i64 8 to ptr), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i.thread" ], [ %_0.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h14a42ee28c6062b7E.exit.i.i" ]
  tail call void @llvm.assume(i1 %storemerge5.i.i3)
  %_9.i = shl i64 %size, 32
  %_7.i = or disjoint i64 %_9.i, 15
  br label %bb6

bb6:                                              ; preds = %start, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit"
  %_0.sroa.3.0 = phi ptr [ %value.sroa.4.0.copyload.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit" ], [ @alloc_6f27fed333f105f471eaa5362a49c01f, %start ]
  %_0.sroa.0.0 = phi i64 [ %_7.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h6a3cd117863b1b85E.exit" ], [ 15, %start ]
  %7 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %8
}

; Function Attrs: nounwind nonlazybind
define void @evolve_tuple_alloc_test(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([24 x i8]) align 8 dereferenceable(24) %_0, i64 noundef %size) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [0 x i8], align 1
  %_2.not = icmp eq i64 %size, 0
  br i1 %_2.not, label %bb7, label %bb1

bb7:                                              ; preds = %start
  %0 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 15, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %1, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_6 = shl i64 %size, 4
  %_5 = add i64 %_6, 16
; call core::alloc::layout::Layout::is_size_align_valid
  %_14 = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h0fe1e0f623634d66E(i64 noundef %_5, i64 noundef 16) #32
  br i1 %_14, label %bb11.split, label %bb12.split

bb12.split:                                       ; preds = %bb1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
; call core::result::unwrap_failed
  call void @_ZN4core6result13unwrap_failed17he8e27e02739cd3d2E(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_6d2baaaa10e0f232f5ed3d3681c3bb0e) #33
  unreachable

bb11.split:                                       ; preds = %bb1
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
; call __rustc::__rust_alloc_zeroed
  %_8 = tail call noundef align 16 ptr @_RNvCscSpY9Juk0HT_7___rustc19___rust_alloc_zeroed(i64 noundef %_5, i64 noundef 16) #32
  %3 = icmp eq ptr %_8, null
  br i1 %3, label %bb3, label %bb5

bb3:                                              ; preds = %bb11.split
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb9

bb5:                                              ; preds = %bb11.split
  %_9.i = shl i64 %size, 32
  %_7.i = or disjoint i64 %_9.i, 15
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 %_7.i, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store ptr %_8, ptr %6, align 8
  br label %bb9

bb9:                                              ; preds = %bb7, %bb5, %bb3
  %.sink = phi i64 [ 0, %bb7 ], [ 0, %bb5 ], [ 1, %bb3 ]
  store i64 %.sink, ptr %_0, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve.tuple.get(i64 noundef %self.0, ptr nocapture noundef readonly %self.1, i64 noundef %index) unnamed_addr #5 {
start:
  %_2.i.i = lshr i64 %self.0, 32
  %_6.not = icmp ugt i64 %index, %_2.i.i
  %_9 = getelementptr inbounds nuw %"object::Object", ptr %self.1, i64 %index
  %spec.select = select i1 %_6.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9
  %_0.0 = load i64, ptr %spec.select, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %_0.1 = load ptr, ptr %0, align 8, !noundef !3
  %1 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %_0.1, 1
  ret { i64, ptr } %2
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define noundef zeroext i1 @"evolve.tuple.put!"(i64 noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %index, i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
start:
  %_2.i.i = lshr i64 %0, 32
  %2 = add i64 %index, -1
  %or.cond.not = icmp uge i64 %2, %_2.i.i
  br i1 %or.cond.not, label %bb4, label %bb5

bb4:                                              ; preds = %start, %bb5
  ret i1 %or.cond.not

bb5:                                              ; preds = %start
  %_11 = getelementptr inbounds nuw %"object::Object", ptr %1, i64 %index
  store i64 %value.0, ptr %_11, align 8
  %3 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  store ptr %value.1, ptr %3, align 8
  br label %bb4
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::vec::Vec<alloc::string::String>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs135_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h9249f1dcbc926161E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %me.sroa.0.0.copyload.i = load i64, ptr %value, align 8, !alias.scope !87, !noalias !90
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !87, !noalias !90, !nonnull !3, !noundef !3
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !87, !noalias !90
  %_34.i = icmp ult i64 %me.sroa.5.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %_34.i)
  %_17.i = getelementptr inbounds nuw %"alloc::string::String", ptr %me.sroa.4.0.copyload.i, i64 %me.sroa.5.0.copyload.i
  %0 = icmp sgt i64 %me.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %0)
  %_15.i.i.i.i.i = mul i64 %me.sroa.0.0.copyload.i, 24
  %_44.not5.i.i.i.i.i.i.i.i = icmp eq i64 %me.sroa.5.0.copyload.i, 0
  br i1 %_44.not5.i.i.i.i.i.i.i.i, label %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i", label %bb11.i.i.i.i.i.i.i.i

bb11.i.i.i.i.i.i.i.i:                             ; preds = %start, %bb11.i.i.i.i.i.i.i.i
  %accum.sroa.4.07.i.i.i.i.i.i.i.i = phi ptr [ %_5.i.i.i.i.i.i.i.i.i.i, %bb11.i.i.i.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %start ]
  %_4946.i.i.i.i.i.i.i.i = phi ptr [ %_49.i.i.i.i.i.i.i.i, %bb11.i.i.i.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %start ]
  %tmp.sroa.2.0._46.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_4946.i.i.i.i.i.i.i.i, i64 8
  %tmp.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %tmp.sroa.2.0._46.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !92, !nonnull !3, !noundef !3
  %tmp.sroa.3.0._46.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_4946.i.i.i.i.i.i.i.i, i64 16
  %tmp.sroa.3.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %tmp.sroa.3.0._46.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !92
  %_49.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_4946.i.i.i.i.i.i.i.i, i64 24
  %_5.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %tmp.sroa.3.0.copyload.i.i.i.i.i.i.i.i, 32
  %_3.i.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %_5.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  store i64 %_3.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %accum.sroa.4.07.i.i.i.i.i.i.i.i, align 8, !noalias !114
  %1 = getelementptr inbounds nuw i8, ptr %accum.sroa.4.07.i.i.i.i.i.i.i.i, i64 8
  store ptr %tmp.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %1, align 8, !noalias !114
  %_5.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %accum.sroa.4.07.i.i.i.i.i.i.i.i, i64 16
  %_44.not.i.i.i.i.i.i.i.i = icmp eq ptr %_49.i.i.i.i.i.i.i.i, %_17.i
  br i1 %_44.not.i.i.i.i.i.i.i.i, label %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i.thread", label %bb11.i.i.i.i.i.i.i.i

"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i.thread": ; preds = %bb11.i.i.i.i.i.i.i.i
  br label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc4867ce6307906caE.exit.i.i.i.i.i"

"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i": ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  br label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc4867ce6307906caE.exit.i.i.i.i.i"

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc4867ce6307906caE.exit.i.i.i.i.i": ; preds = %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i", %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i.thread"
  %accum.sroa.4.0.lcssa.i.i.i.i.i.i.i.i4 = phi ptr [ %_5.i.i.i.i.i.i.i.i.i.i, %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i.thread" ], [ %me.sroa.4.0.copyload.i, %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E.exit.i.i.i.i.i" ]
  %_88.not.i.i.i.i.i = icmp eq i64 %me.sroa.0.0.copyload.i, 0
  br i1 %_88.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit, label %bb28.i.i.i.i.i

bb28.i.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc4867ce6307906caE.exit.i.i.i.i.i"
  %_90.i.i.i.i.i = and i64 %_15.i.i.i.i.i, -16
  %_40.not.i.i.i.i.i = icmp eq i64 %_15.i.i.i.i.i, %_90.i.i.i.i.i
  br i1 %_40.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit, label %bb31.i.i.i.i.i

bb31.i.i.i.i.i:                                   ; preds = %bb28.i.i.i.i.i
  %2 = icmp eq i64 %_90.i.i.i.i.i, 0
  br i1 %2, label %bb2.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he3adfc75c90f305dE.exit.i.i.i.i.i"

bb2.i.i.i.i.i.i:                                  ; preds = %bb31.i.i.i.i.i
  %3 = icmp eq i64 %_15.i.i.i.i.i, 0
  br i1 %3, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit, label %bb11.i.i.i.i.i.i

bb11.i.i.i.i.i.i:                                 ; preds = %bb2.i.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc(ptr noundef nonnull %me.sroa.4.0.copyload.i, i64 noundef %_15.i.i.i.i.i, i64 noundef 8) #32, !noalias !120
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he3adfc75c90f305dE.exit.i.i.i.i.i": ; preds = %bb31.i.i.i.i.i
; call __rustc::__rust_realloc
  %4 = tail call noundef align 8 ptr @_RNvCscSpY9Juk0HT_7___rustc14___rust_realloc(ptr noundef nonnull %me.sroa.4.0.copyload.i, i64 noundef %_15.i.i.i.i.i, i64 noundef 8, i64 noundef %_90.i.i.i.i.i) #32, !noalias !120
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit, !prof !121

bb14.i.i.i.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he3adfc75c90f305dE.exit.i.i.i.i.i"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he8b8c0d2be2abab7E(i64 noundef 8, i64 noundef %_90.i.i.i.i.i) #33, !noalias !120
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit: ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc4867ce6307906caE.exit.i.i.i.i.i", %bb28.i.i.i.i.i, %bb2.i.i.i.i.i.i, %bb11.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he3adfc75c90f305dE.exit.i.i.i.i.i"
  %dst_buf.sroa.0.0.i.i.i.i.i = phi ptr [ %me.sroa.4.0.copyload.i, %bb28.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc4867ce6307906caE.exit.i.i.i.i.i" ], [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he3adfc75c90f305dE.exit.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb11.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i.i.i.i ]
  %6 = ptrtoint ptr %accum.sroa.4.0.lcssa.i.i.i.i.i.i.i.i4 to i64
  %7 = ptrtoint ptr %me.sroa.4.0.copyload.i to i64
  %8 = sub nuw i64 %6, %7
  %_17.i.i = icmp sgt i64 %8, -1
  tail call void @llvm.assume(i1 %_17.i.i)
  %9 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !122
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !122
  %10 = icmp eq ptr %_0.i.i.i.i.i, null
  br i1 %10, label %bb2.i.i.i, label %"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h625252b8b8d53c2cE.exit", !prof !25

bb2.i.i.i:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he8b8c0d2be2abab7E(i64 noundef 8, i64 noundef 32) #33, !noalias !122
  unreachable

"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h625252b8b8d53c2cE.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E.exit
  %11 = lshr exact i64 %8, 4
  %dst_cap14.i.i.i.i.i = lshr i64 %_15.i.i.i.i.i, 4
  store i64 %dst_cap14.i.i.i.i.i, ptr %_0.i.i.i.i.i, align 8, !noalias !129
  %_2.sroa.4.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i.i, i64 8
  store ptr %dst_buf.sroa.0.0.i.i.i.i.i, ptr %_2.sroa.4.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !129
  %_2.sroa.5.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i.i, i64 16
  store i64 0, ptr %_2.sroa.5.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !129
  %_2.sroa.6.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i.i, i64 24
  store i64 %11, ptr %_2.sroa.6.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !129
  %12 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i.i.i, 1
  ret { i64, ptr } %12
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::vec::Vec<evolve_inner_core::object::Object>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h625252b8b8d53c2cE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %me.sroa.0.0.copyload.i = load i64, ptr %value, align 8, !alias.scope !130, !noalias !133
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !130, !noalias !133, !nonnull !3, !noundef !3
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !130, !noalias !133
  %_17.i = icmp ult i64 %me.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %_17.i)
  %0 = icmp sgt i64 %me.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %0)
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !135
; call __rustc::__rust_alloc
  %_0.i.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !135
  %2 = icmp eq ptr %_0.i.i.i.i, null
  br i1 %2, label %bb2.i.i, label %"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE.exit", !prof !25

bb2.i.i:                                          ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he8b8c0d2be2abab7E(i64 noundef 8, i64 noundef 32) #33, !noalias !135
  unreachable

"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE.exit": ; preds = %start
  store i64 %me.sroa.0.0.copyload.i, ptr %_0.i.i.i.i, align 8
  %_2.sroa.4.0._0.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i, i64 8
  store ptr %me.sroa.4.0.copyload.i, ptr %_2.sroa.4.0._0.i.i.i.i.sroa_idx, align 8
  %_2.sroa.5.0._0.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i, i64 16
  store i64 0, ptr %_2.sroa.5.0._0.i.i.i.i.sroa_idx, align 8
  %_2.sroa.6.0._0.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i, i64 24
  store i64 %me.sroa.5.0.copyload.i, ptr %_2.sroa.6.0._0.i.i.i.i.sroa_idx, align 8
  %3 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i.i, 1
  ret { i64, ptr } %3
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::collections::vec_deque::VecDeque<evolve_inner_core::object::Object>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !140
; call __rustc::__rust_alloc
  %_0.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !140
  %1 = icmp eq ptr %_0.i.i.i, null
  br i1 %1, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17he7dced161648df71E.exit, !prof !25

bb2.i:                                            ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he8b8c0d2be2abab7E(i64 noundef 8, i64 noundef 32) #33, !noalias !140
  unreachable

_ZN5alloc5alloc15exchange_malloc17he7dced161648df71E.exit: ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %value, i64 32, i1 false)
  %2 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i, 1
  ret { i64, ptr } %2
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; <core::ffi::c_str::CStr as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN59_$LT$core..ffi..c_str..CStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h94decb9d48d51cf8E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.scmp.i8.i64(i64, i64) #20

; core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h4f386850af10b31bE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h14f9476d065f7d83E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h59560f0032de1340E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h8616bceb8eb636d7E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h3c55c7e9e5b63cbfE"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hf874c5c03ecb5b11E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h26475d19456b9dacE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h8ef525817f1029d7E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17hb705dd44df3376ccE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::Formatter::write_str
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h448b00798f40aad6E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #20

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking5panic17h48a7e1f3665210c6E(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #21

; core::alloc::layout::Layout::is_size_align_valid
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h0fe1e0f623634d66E(i64 noundef, i64 noundef) unnamed_addr #0

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core6result13unwrap_failed17he8e27e02739cd3d2E(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(32), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #21

; core::fmt::Formatter::debug_struct
; Function Attrs: nounwind nonlazybind
declare void @_ZN4core3fmt9Formatter12debug_struct17h1f370e5feb2ae33bE(ptr dead_on_unwind noalias nocapture noundef writable sret([16 x i8]) align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; core::fmt::builders::DebugStruct::field
; Function Attrs: nounwind nonlazybind
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17he6c4b2b828465494E(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(32)) unnamed_addr #0

; core::fmt::builders::DebugStruct::finish
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h317f1e5336de0063E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; core::fmt::pointer_fmt_inner
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hfcf647fb9e267042E(i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc7raw_vec12handle_error17h5b039796a4ecc373E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #22

; alloc::alloc::handle_alloc_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc5alloc18handle_alloc_error17he8b8c0d2be2abab7E(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #22

; __rustc::__rust_alloc_zeroed
; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0)
declare noalias noundef ptr @_RNvCscSpY9Juk0HT_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #23

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0)
declare noalias noundef ptr @_RNvCscSpY9Juk0HT_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #24

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free")
declare void @_RNvCscSpY9Juk0HT_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #25

; __rustc::__rust_realloc
; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3)
declare noalias noundef ptr @_RNvCscSpY9Juk0HT_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #26

; core::fmt::float::<impl core::fmt::Debug for f64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h5e3719bc82d0d63cE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ucmp.i8.i64(i64, i64) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #28

attributes #0 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { alwaysinline nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { alwaysinline mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nonlazybind "target-cpu"="x86-64" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #31 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.87.0 (17067e9ac 2025-05-09)"}
!3 = !{}
!4 = !{i64 1}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h2b861be16624773dE: %self"}
!8 = distinct !{!8, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h2b861be16624773dE"}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h38bd71957ebbe5e0E: %self"}
!12 = distinct !{!12, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h38bd71957ebbe5e0E"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E: %_0"}
!15 = distinct !{!15, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17habb2731bb0552753E"}
!16 = !{i64 0, i64 2}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf8243c1518ccaca4E: %_0"}
!19 = distinct !{!19, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf8243c1518ccaca4E"}
!20 = distinct !{!20, !21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE: argument 0"}
!21 = distinct !{!21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E: %x"}
!24 = distinct !{!24, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E"}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h7d5ab770a2c8a926E: %self"}
!28 = distinct !{!28, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h7d5ab770a2c8a926E"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E: %self"}
!31 = distinct !{!31, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17hc62d3778749a8bc2E: %self"}
!34 = distinct !{!34, !"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17hc62d3778749a8bc2E"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E: %self"}
!37 = distinct !{!37, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E: %other"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E: %self"}
!42 = distinct !{!42, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17hd89c54fca339e213E: %other"}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E: %left.0"}
!47 = distinct !{!47, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E"}
!48 = distinct !{!48, !47, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E: %right.0"}
!49 = !{!41, !44}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E: %left.0"}
!52 = distinct !{!52, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E"}
!53 = distinct !{!53, !52, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E: %right.0"}
!54 = !{!"branch_weights", i32 1, i32 4001}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E: %self"}
!57 = distinct !{!57, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h65989b934f5d3df7E"}
!58 = !{!"branch_weights", i32 2002, i32 2000}
!59 = !{!"branch_weights", i32 1, i32 1999}
!60 = !{!"branch_weights", i32 1, i32 127}
!61 = !{!"branch_weights", i32 127, i32 255873}
!62 = !{!63, !65, !67, !69}
!63 = distinct !{!63, !64, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf8243c1518ccaca4E: %_0"}
!64 = distinct !{!64, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf8243c1518ccaca4E"}
!65 = distinct !{!65, !66, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE: argument 0"}
!66 = distinct !{!66, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE"}
!67 = distinct !{!67, !68, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17he60c8b8f2f47592bE: %_0"}
!68 = distinct !{!68, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17he60c8b8f2f47592bE"}
!69 = distinct !{!69, !68, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17he60c8b8f2f47592bE: %s.0"}
!70 = !{!67, !69}
!71 = !{!67}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E: %left.0"}
!74 = distinct !{!74, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E"}
!75 = distinct !{!75, !74, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h564a93350b7a28f0E: %right.0"}
!76 = !{!77, !79, !81}
!77 = distinct !{!77, !78, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf8243c1518ccaca4E: %_0"}
!78 = distinct !{!78, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf8243c1518ccaca4E"}
!79 = distinct !{!79, !80, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE: argument 0"}
!80 = distinct !{!80, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h3eef181e17dffd5aE"}
!81 = distinct !{!81, !82, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E: %_0"}
!82 = distinct !{!82, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hbde3be05a73199f0E"}
!83 = !{!81}
!84 = !{!85, !81}
!85 = distinct !{!85, !86, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h8bd5998a40038f43E: %self"}
!86 = distinct !{!86, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h8bd5998a40038f43E"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h80401aa5ae874a60E: %self"}
!89 = distinct !{!89, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h80401aa5ae874a60E"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h80401aa5ae874a60E: %_0"}
!92 = !{!93, !95, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113}
!93 = distinct !{!93, !94, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h6656507daa384c5dE: %self"}
!94 = distinct !{!94, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h6656507daa384c5dE"}
!95 = distinct !{!95, !96, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17heca79ced60994ffaE: %self"}
!96 = distinct !{!96, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17heca79ced60994ffaE"}
!97 = distinct !{!97, !98, !"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E: %self"}
!98 = distinct !{!98, !"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h88c287bf2e93e904E"}
!99 = distinct !{!99, !100, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17hc178ceac22ca69efE: %vec"}
!100 = distinct !{!100, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17hc178ceac22ca69efE"}
!101 = distinct !{!101, !100, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17hc178ceac22ca69efE: %iterator"}
!102 = distinct !{!102, !103, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h334dd24879292869E: %_0"}
!103 = distinct !{!103, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h334dd24879292869E"}
!104 = distinct !{!104, !103, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h334dd24879292869E: %_1"}
!105 = distinct !{!105, !106, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h92af7522e8926c4dE: %_0"}
!106 = distinct !{!106, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h92af7522e8926c4dE"}
!107 = distinct !{!107, !106, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h92af7522e8926c4dE: %iterator"}
!108 = distinct !{!108, !109, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf0084773109bd8deE: %_0"}
!109 = distinct !{!109, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf0084773109bd8deE"}
!110 = distinct !{!110, !109, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf0084773109bd8deE: %iter"}
!111 = distinct !{!111, !112, !"_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E: %_0"}
!112 = distinct !{!112, !"_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E"}
!113 = distinct !{!113, !112, !"_ZN4core4iter6traits8iterator8Iterator7collect17h6a968c9ccfd15639E: %self"}
!114 = !{!115, !93, !95, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113}
!115 = distinct !{!115, !116, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1953c0c4122cb6acE: %elt"}
!116 = distinct !{!116, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1953c0c4122cb6acE"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h6cabe241d53dd7a5E: %_1.0"}
!119 = distinct !{!119, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h6cabe241d53dd7a5E"}
!120 = !{!99, !101, !102, !104, !105, !107, !108, !110, !111, !113}
!121 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!122 = !{!123, !125, !127}
!123 = distinct !{!123, !124, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E: %x"}
!124 = distinct !{!124, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E"}
!125 = distinct !{!125, !126, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE: %value"}
!126 = distinct !{!126, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE"}
!127 = distinct !{!127, !128, !"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h625252b8b8d53c2cE: %value"}
!128 = distinct !{!128, !"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h625252b8b8d53c2cE"}
!129 = !{!127}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h0286a3a2133e25ccE: %self"}
!132 = distinct !{!132, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h0286a3a2133e25ccE"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h0286a3a2133e25ccE: %_0"}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E: %x"}
!137 = distinct !{!137, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E"}
!138 = distinct !{!138, !139, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE: %value"}
!139 = distinct !{!139, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h183dc0680e5d2dcaE"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E: %x"}
!142 = distinct !{!142, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hf314760c9c5fc378E"}
