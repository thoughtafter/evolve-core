; ModuleID = 'evolve_inner_core.756c8e91ad4d0eff-cgu.0'
source_filename = "evolve_inner_core.756c8e91ad4d0eff-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"object::Object" = type { i64, ptr }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbaa65eea7f1a89d3E" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_477d6fd19596379e27b9bd4358550877 = private unnamed_addr constant [11 x i8] c"LayoutError", align 1
@alloc_df3438650541204e3b6d6bc35facb740 = private unnamed_addr constant [117 x i8] c"/home/lemur/dotfiles/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/slice.rs", align 1
@alloc_dcc16b9f4d8cb63715268f95336993e1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_df3438650541204e3b6d6bc35facb740, [16 x i8] c"u\00\00\00\00\00\00\00\BE\01\00\00\1D\00\00\00" }>, align 8
@alloc_204a7f2109033cc676c2fc41bdad3753 = private unnamed_addr constant [30 x i8] c"evolve_inner_core/src/array.rs", align 1
@alloc_b1d89d1e05f18642df02fb5c5c149b0d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_204a7f2109033cc676c2fc41bdad3753, [16 x i8] c"\1E\00\00\00\00\00\00\00\16\00\00\00\11\00\00\00" }>, align 8
@alloc_9b48393cc5035a030b1ac2185f99f664 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_204a7f2109033cc676c2fc41bdad3753, [16 x i8] c"\1E\00\00\00\00\00\00\00\1F\00\00\00\0B\00\00\00" }>, align 8
@alloc_e9164108e3a8c437bd8ee95ca79fdb9f = private unnamed_addr constant [16 x i8] zeroinitializer, align 8
@alloc_1a3b627145dc0fe65f658cb38c278359 = private unnamed_addr constant [6 x i8] c"Object", align 1
@vtable.2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4a7c80dee5d2339cE" }>, align 8
@alloc_a8456fb127012b2b67e2f034dd8cd60c = private unnamed_addr constant [4 x i8] c"NULL", align 1
@alloc_5f51429af5bff0c26097b04b86db779e = private unnamed_addr constant [5 x i8] c"FALSE", align 1
@alloc_68f2a445488f20082ceefa0ab63c19b2 = private unnamed_addr constant [4 x i8] c"TRUE", align 1
@alloc_f20ab71f06765100d92312e3a01bb989 = private unnamed_addr constant [3 x i8] c"APP", align 1
@vtable.3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hc1ecbfcf2e19d62dE" }>, align 8
@alloc_250b91d3432a6fe0c6c420b70e341432 = private unnamed_addr constant [4 x i8] c"argc", align 1
@alloc_e4771d6525973485a812fe783cd28050 = private unnamed_addr constant [7 x i8] c"POINTER", align 1
@vtable.4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb6d06f48931960dE" }>, align 8
@alloc_0869314c06f5536ea9cfbda8e3d75f40 = private unnamed_addr constant [6 x i8] c"STRING", align 1
@vtable.5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17h59f80f2a7113b244E" }>, align 8
@alloc_f4db005b851b7259d0b6ded255335a8c = private unnamed_addr constant [3 x i8] c"I64", align 1
@vtable.6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN73_$LT$ordered_float..OrderedFloat$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hecf78ac5dedef220E" }>, align 8
@alloc_82b1bf185e1b461c8b8241303ddf0563 = private unnamed_addr constant [3 x i8] c"F64", align 1
@alloc_22f0e91223dabf1bef5f103b8560c3f1 = private unnamed_addr constant [5 x i8] c"TUPLE", align 1
@alloc_a2e5f6be2a03b9f5ed256baff3399a84 = private unnamed_addr constant [4 x i8] c"size", align 1
@vtable.7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN17evolve_inner_core6object5debug80_$LT$impl$u20$core..fmt..Debug$u20$for$u20$evolve_inner_core..object..Object$GT$3fmt17h59c8b23ac360ec3dE" }>, align 8
@alloc_ac368d9a707b52d21ed3ba3af2bad0d5 = private unnamed_addr constant [3 x i8] c"[1]", align 1
@alloc_5b8c386f77829feb42882cd52d13ac4a = private unnamed_addr constant [3 x i8] c"[2]", align 1
@alloc_3fb291eefbcf3fa3c1d2137966dc6e7c = private unnamed_addr constant [7 x i8] c"CLOSURE", align 1
@vtable.8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u16$GT$3fmt17hdfbdca56f64c1147E" }>, align 8
@alloc_63744475ac4d11caf5a224426ca4a84c = private unnamed_addr constant [8 x i8] c"class_id", align 1
@alloc_a6c9073709f4dc3faf09868fececa07c = private unnamed_addr constant [3 x i8] c"aux", align 1
@alloc_eb15813ccc20d20673372177ea4f1c88 = private unnamed_addr constant [3 x i8] c"ptr", align 1
@alloc_50981fdc3d28c727f94146500adf1421 = private unnamed_addr constant [41 x i8] c"assertion failed: this.is_intrinsic_win()", align 1
@alloc_3c256bd16f1162804612e53b4407e585 = private unnamed_addr constant [40 x i8] c"evolve_inner_core/src/intrinsic/loops.rs", align 1
@alloc_dd3e48be704813f1891c6970a65270ee = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3c256bd16f1162804612e53b4407e585, [16 x i8] c"(\00\00\00\00\00\00\00Z\00\00\00\05\00\00\00" }>, align 8
@alloc_6f27fed333f105f471eaa5362a49c01f = private unnamed_addr constant [16 x i8] c"\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@alloc_40ec68d6228a8f6da03af3939cc8bd3e = private unnamed_addr constant [30 x i8] c"evolve_inner_core/src/tuple.rs", align 1
@alloc_751b42ff20b2cb8b70982716aabdd11e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_40ec68d6228a8f6da03af3939cc8bd3e, [16 x i8] c"\1E\00\00\00\00\00\00\00B\00\00\00\15\00\00\00" }>, align 8
@alloc_8c7fee31967aac0ea9d7581c589770b2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_40ec68d6228a8f6da03af3939cc8bd3e, [16 x i8] c"\1E\00\00\00\00\00\00\00R\00\00\00C\00\00\00" }>, align 8

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb6d06f48931960dE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_3.1 = load i64, ptr %0, align 8, !noundef !3
; call <core::ffi::c_str::CStr as core::fmt::Debug>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN59_$LT$core..ffi..c_str..CStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e24ef226e1e6739E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  ret i1 %_0
}

; core::fmt::num::<impl core::fmt::Debug for i64>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17h59f80f2a7113b244E"(ptr noalias noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
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
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h26299beddca396b9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hde631ae64c57a835E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for i64>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h92a9aa4f3aa04d0bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; core::fmt::num::<impl core::fmt::Debug for u16>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u16$GT$3fmt17hdfbdca56f64c1147E"(ptr noalias noundef readonly align 2 dereferenceable(2) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
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
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h897dea8a982c9770E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h438399c07e2161f1E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for u16>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h6d8b5e17e307a256E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; core::fmt::num::<impl core::fmt::Debug for u32>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hc1ecbfcf2e19d62dE"(ptr noalias noundef readonly align 4 dereferenceable(4) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
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
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17haf9a59fdde49fc3aE"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heae17e31cadbc382E"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17hfdb3aac080b97f7cE"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; <*const T as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4a7c80dee5d2339cE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
start:
  %self.val = load ptr, ptr %self, align 8, !noundef !3
  %_4.i = ptrtoint ptr %self.val to i64
; call core::fmt::pointer_fmt_inner
  %0 = tail call noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hbc08c16cf0101593E(i64 noundef %_4.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  ret i1 %0
}

; alloc::collections::vec_deque::VecDeque<T,A>::grow
; Function Attrs: noinline nounwind nonlazybind
define void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h9c6d8b0fa4d7f8e9E"(ptr noalias nocapture noundef align 8 dereferenceable(32) %self, ptr noalias noundef readonly align 8 dereferenceable(24) %0) unnamed_addr #2 {
start:
  %self1 = load i64, ptr %self, align 8, !range !5, !noundef !3
; call alloc::raw_vec::RawVec<T,A>::grow_one
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0dd6e27fce26aabdE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %self, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %self1.i = load i64, ptr %self, align 8, !range !5, !alias.scope !6, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5.i = load i64, ptr %1, align 8, !alias.scope !6, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_7.i = load i64, ptr %2, align 8, !alias.scope !6, !noundef !3
  %_6.i = sub i64 %self1, %_7.i
  %_4.not.i = icmp ugt i64 %_5.i, %_6.i
  br i1 %_4.not.i, label %bb2.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h4e59b13da8e4b7dfE.exit"

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
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h4e59b13da8e4b7dfE.exit"

bb4.i:                                            ; preds = %bb2.i
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_53.i = load ptr, ptr %5, align 8, !alias.scope !6, !nonnull !3, !noundef !3
  %dst2.i = getelementptr inbounds nuw %"object::Object", ptr %_53.i, i64 %self1
  %6 = shl i64 %tail_len.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %dst2.i, ptr nonnull align 8 %_53.i, i64 %6, i1 false), !noalias !6
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h4e59b13da8e4b7dfE.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h4e59b13da8e4b7dfE.exit": ; preds = %start, %bb6.i, %bb4.i
  ret void
}

; alloc::raw_vec::finish_grow
; Function Attrs: cold nounwind nonlazybind
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h5ea36c8a785ce625E(ptr dead_on_unwind noalias nocapture noundef nonnull writable writeonly align 8 dereferenceable(24) initializes((0, 24)) %_0, i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1, ptr noalias nocapture noundef nonnull readonly align 8 dereferenceable(24) %current_memory) unnamed_addr #3 {
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
  %_0.i.i.i.i = tail call noalias noundef ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) %0) #27
  br label %bb6

bb3.i.i:                                          ; preds = %bb3
  %cond.i.i = icmp uge i64 %1, %5
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %9 = tail call noundef ptr @_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc(ptr noundef nonnull %ptr, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1) #27
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
  %_0.i.i.i = tail call noalias noundef ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) %0) #27
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
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0dd6e27fce26aabdE"(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, ptr noalias noundef readonly align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  br i1 %1, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE.exit.i", label %bb4.i.i

bb4.i.i:                                          ; preds = %bb22.i
  %self.val39.i = load ptr, ptr %3, align 8, !alias.scope !10, !nonnull !3, !noundef !3
  %4 = shl nuw i64 %self1, 4
  store ptr %self.val39.i, ptr %_26.i, align 8, !alias.scope !13, !noalias !10
  %_15.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26.i, i64 16
  store i64 %4, ptr %_15.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !13, !noalias !10
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE.exit.i": ; preds = %bb4.i.i, %bb22.i
  %.sink.i.i = phi i64 [ 8, %bb4.i.i ], [ 0, %bb22.i ]
  %5 = getelementptr inbounds nuw i8, ptr %_26.i, i64 8
  store i64 %.sink.i.i, ptr %5, align 8, !alias.scope !13, !noalias !10
; call alloc::raw_vec::finish_grow
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h5ea36c8a785ce625E(ptr noalias nocapture noundef align 8 dereferenceable(24) %self6.i, i64 noundef 8, i64 noundef %_9.0.i.i.i, ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %_26.i) #27, !noalias !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26.i), !noalias !10
  %_53.i = load i64, ptr %self6.i, align 8, !range !16, !noalias !10, !noundef !3
  %6 = trunc nuw i64 %_53.i to i1
  %7 = getelementptr inbounds nuw i8, ptr %self6.i, i64 8
  br i1 %6, label %bb23.i, label %bb3

bb23.i:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE.exit.i"
  %e.0.i = load i64, ptr %7, align 8, !range !9, !noalias !10, !noundef !3
  %8 = getelementptr inbounds nuw i8, ptr %self6.i, i64 16
  %e.1.i = load i64, ptr %8, align 8, !noalias !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  br label %bb2

bb2:                                              ; preds = %bb23.i, %start
  %_0.sroa.6.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb23.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb23.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h891236e332f51b87E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) #28
  unreachable

bb3:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE.exit.i"
  %v.016.i = load ptr, ptr %7, align 8, !noalias !10, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  store ptr %v.016.i, ptr %3, align 8, !alias.scope !10
  store i64 %_0.sroa.0.0.sroa.speculated.i40.i, ptr %self, align 8, !alias.scope !10
  ret void
}

; <core::alloc::layout::LayoutError as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbaa65eea7f1a89d3E"(ptr noalias nocapture nonnull readonly align 1 %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
; call core::fmt::Formatter::write_str
  %_0 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf87901323e3d7ac9E(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 @alloc_477d6fd19596379e27b9bd4358550877, i64 noundef 11) #27
  ret i1 %_0
}

; <ordered_float::OrderedFloat<T> as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN73_$LT$ordered_float..OrderedFloat$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hecf78ac5dedef220E"(ptr noalias noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
; call core::fmt::float::<impl core::fmt::Debug for f64>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h328534903a0a7966E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(24) %f) #27
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define noalias noundef nonnull align 8 dereferenceable(32) ptr @evolve_array_literal(i64 noundef %size) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %size, i64 8)
  %_9.0.i.i.i.i = shl i64 %_0.sroa.0.0.sroa.speculated.i, 4
  %_9.1.i.i.i.i = icmp ugt i64 %size, 1152921504606846975
  %_14.i.i.i.i = icmp ugt i64 %_9.0.i.i.i.i, 9223372036854775800
  %0 = or i1 %_9.1.i.i.i.i, %_14.i.i.i.i
  br i1 %0, label %bb3.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i": ; preds = %start
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !17
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i = tail call noalias noundef align 8 ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_9.0.i.i.i.i, i64 noundef range(i64 1, 9) 8) #27, !noalias !17
  %2 = icmp eq ptr %_0.i.i.i.i.i, null
  br i1 %2, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E.exit"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i", %start
  %_4.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i" ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h891236e332f51b87E(i64 noundef %_4.sroa.4.0.ph.i, i64 %_9.0.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_b1d89d1e05f18642df02fb5c5c149b0d) #28
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i"
  %3 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !22
; call __rustc::__rust_alloc
  %_0.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !22
  %4 = icmp eq ptr %_0.i.i.i, null
  br i1 %4, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17h25a694104f40c5fcE.exit, !prof !25

bb2.i:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E.exit"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h29c279d8237d34e5E(i64 noundef 8, i64 noundef 32) #28, !noalias !22
  unreachable

_ZN5alloc5alloc15exchange_malloc17h25a694104f40c5fcE.exit: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E.exit"
  store i64 %_0.sroa.0.0.sroa.speculated.i, ptr %_0.i.i.i, align 8
  %array.sroa.2.0._0.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i, i64 8
  store ptr %_0.i.i.i.i.i, ptr %array.sroa.2.0._0.i.i.i.sroa_idx, align 8
  %array.sroa.3.0._0.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %_0.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %array.sroa.3.0._0.i.i.i.sroa_idx, i8 0, i64 16, i1 false)
  ret ptr %_0.i.i.i
}

; Function Attrs: nounwind nonlazybind
define void @evolve_array_inbounds_push(ptr noalias nocapture noundef align 8 dereferenceable(32) %array, i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %0 = getelementptr inbounds nuw i8, ptr %array, i64 24
  %_8.i = load i64, ptr %0, align 8, !alias.scope !26, !noundef !3
  %self1.i = load i64, ptr %array, align 8, !range !5, !alias.scope !26, !noundef !3
  %_3.i = icmp eq i64 %_8.i, %self1.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h3736cddd21b33ef0E.exit"

bb1.i:                                            ; preds = %start
; call alloc::collections::vec_deque::VecDeque<T,A>::grow
  tail call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h9c6d8b0fa4d7f8e9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %array, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9b48393cc5035a030b1ac2185f99f664) #27
  %idx.pre.i = load i64, ptr %0, align 8, !alias.scope !26
  %self3.pre.i = load i64, ptr %array, align 8, !range !5, !alias.scope !26
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h3736cddd21b33ef0E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h3736cddd21b33ef0E.exit": ; preds = %start, %bb1.i
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve_array_get(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array, i64 noundef %index) unnamed_addr #4 {
start:
  %adjusted_index = add i64 %index, -1
  %0 = getelementptr inbounds nuw i8, ptr %array, i64 24
  %_4.i = load i64, ptr %0, align 8, !alias.scope !29, !noundef !3
  %_3.i = icmp ult i64 %adjusted_index, %_4.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE.exit"

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
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE.exit": ; preds = %start, %bb1.i
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef i64 @evolve_array_size(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array) unnamed_addr #5 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %array, i64 24
  %_0 = load i64, ptr %0, align 8, !noundef !3
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef range(i64 0, -9223372036854775808) i64 @evolve_array_capacity(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array) unnamed_addr #5 {
start:
  %_2 = load i64, ptr %array, align 8, !range !5, !noundef !3
  ret i64 %_2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define { i64, ptr } @evolve.from.ptr.closure2(ptr noundef %closure_data_ptr, ptr noundef nonnull %closure_function_ptr, i64 noundef %params) unnamed_addr #6 {
start:
  %size = add i64 %params, 3
  %_6.i = and i64 %size, 4294967295
  %or.cond.not.i = icmp eq i64 %_6.i, 0
  br i1 %or.cond.not.i, label %"evolve.tuple.put!.exit5", label %"evolve.tuple.put!.exit"

"evolve.tuple.put!.exit":                         ; preds = %start
  %_11.i = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 16
  store i64 256, ptr %_11.i, align 8
  %0 = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 24
  store ptr %closure_function_ptr, ptr %0, align 8
  %or.cond.not.i2 = icmp eq i64 %_6.i, 1
  br i1 %or.cond.not.i2, label %"evolve.tuple.put!.exit5", label %bb5.i3

bb5.i3:                                           ; preds = %"evolve.tuple.put!.exit"
  %_2.i.i = inttoptr i64 %size to ptr
  %_11.i4 = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 32
  store i64 4, ptr %_11.i4, align 8
  %1 = getelementptr inbounds nuw i8, ptr %closure_data_ptr, i64 40
  store ptr %_2.i.i, ptr %1, align 8
  br label %"evolve.tuple.put!.exit5"

"evolve.tuple.put!.exit5":                        ; preds = %start, %"evolve.tuple.put!.exit", %bb5.i3
  %_5.i = shl nuw i64 %_6.i, 32
  %_4.i = or disjoint i64 %_5.i, 19
  %2 = insertvalue { i64, ptr } poison, i64 %_4.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr %closure_data_ptr, 1
  ret { i64, ptr } %3
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @evolve.closure.call(i64 noundef %closure.0, ptr noundef %closure.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #0 {
start:
  %_6.not.i = icmp ult i64 %closure.0, 12884901888
  %_9.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 48
  %spec.select.i = select i1 %_6.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %_0.0.i = load i64, ptr %spec.select.i, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i = load ptr, ptr %0, align 8, !noundef !3
  %_6.not.i2 = icmp ult i64 %closure.0, 4294967296
  %_9.i3 = getelementptr inbounds nuw i8, ptr %closure.1, i64 16
  %spec.select.i4 = select i1 %_6.not.i2, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i4, i64 8
  %_0.1.i6 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %_6.not.i.i = icmp ult i64 %closure.0, 8589934592
  %_9.i.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 32
  %spec.select.i.i = select i1 %_6.not.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i.i
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %_0.1.i.i = load ptr, ptr %2, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i7 = shl i64 %_0.i, 32
  %_7.i = or disjoint i64 %_9.i7, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %closure.1
  %3 = tail call { i64, ptr } %_0.1.i6(i64 noundef %_0.0.i, ptr noundef %_0.1.i, i64 noundef %tuple.0, ptr noundef %tuple.1, i64 noundef %_7.i, ptr noundef %_0.sroa.3.0.i) #27
  ret { i64, ptr } %3
}

; evolve_inner_core::closure::evolve_closure_get_size
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef i64 @_ZN17evolve_inner_core7closure23evolve_closure_get_size17h84e0e7b3b0b8fc8eE(i64 noundef %closure.0, ptr nocapture noundef readonly %closure.1) unnamed_addr #4 {
start:
  %_6.not.i = icmp ult i64 %closure.0, 8589934592
  %_9.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 32
  %spec.select.i = select i1 %_6.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %0 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i = load ptr, ptr %0, align 8, !noundef !3
  %_0 = ptrtoint ptr %_0.1.i to i64
  ret i64 %_0
}

; evolve_inner_core::closure::<impl evolve_inner_core::object::Object>::closure_size
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef i64 @"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17h4e3670979e8a99dbE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self) unnamed_addr #4 {
start:
  %_2.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_2.1 = load ptr, ptr %0, align 8, !noundef !3
  %_6.not.i.i = icmp ult i64 %_2.0, 8589934592
  %_9.i.i = getelementptr inbounds nuw i8, ptr %_2.1, i64 32
  %spec.select.i.i = select i1 %_6.not.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i.i
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %_0.1.i.i = load ptr, ptr %1, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  ret i64 %_0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @evolve.mem.gep.byte(ptr noundef readnone %ptr, i64 noundef %offset) unnamed_addr #7 {
start:
  %0 = getelementptr i8, ptr %ptr, i64 %offset
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @evolve.mem.gep.object(ptr noundef readnone %ptr, i64 noundef %offset) unnamed_addr #7 {
start:
  %0 = getelementptr %"object::Object", ptr %ptr, i64 %offset
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef ptr @evolve.mem.load.ptr(ptr nocapture noundef readonly %ptr, i64 noundef %offset) unnamed_addr #5 {
start:
  %0 = getelementptr ptr, ptr %ptr, i64 %offset
  %_0 = load ptr, ptr %0, align 8, !noundef !3
  ret ptr %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef i32 @evolve.mem.load.i32(ptr nocapture noundef readonly %ptr, i64 noundef %offset) unnamed_addr #5 {
start:
  %0 = getelementptr i32, ptr %ptr, i64 %offset
  %_0 = load i32, ptr %0, align 4, !noundef !3
  ret i32 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define { i64, ptr } @evolve.mem.load.object(ptr nocapture noundef readonly %ptr, i64 noundef %offset) unnamed_addr #5 {
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
define void @evolve.mem.store.ptr(ptr nocapture noundef writeonly %ptr, ptr noundef %value, i64 noundef %offset) unnamed_addr #6 {
start:
  %0 = getelementptr ptr, ptr %ptr, i64 %offset
  store ptr %value, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define void @evolve.mem.store.i32(ptr nocapture noundef writeonly %ptr, i32 noundef %value, i64 noundef %offset) unnamed_addr #6 {
start:
  %0 = getelementptr i32, ptr %ptr, i64 %offset
  store i32 %value, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define void @evolve.mem.store.object(ptr nocapture noundef writeonly %ptr, i64 noundef %value.0, ptr noundef %value.1, i64 noundef %offset) unnamed_addr #6 {
start:
  %0 = getelementptr %"object::Object", ptr %ptr, i64 %offset
  store i64 %value.0, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %value.1, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_build_true() unnamed_addr #7 {
start:
  ret { i64, ptr } { i64 2, ptr null }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_build_false() unnamed_addr #7 {
start:
  ret { i64, ptr } { i64 1, ptr null }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_i1(i1 noundef zeroext %value) unnamed_addr #7 {
start:
  %spec.select = select i1 %value, i64 2, i64 1
  %0 = insertvalue { i64, ptr } poison, i64 %spec.select, 0
  %1 = insertvalue { i64, ptr } %0, ptr null, 1
  ret { i64, ptr } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.true?"(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  %_0 = icmp ugt i64 %self.0, 1
  ret i1 %_0
}

; evolve_inner_core::object::convert::bool::<impl core::convert::From<bool> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert4bool95_$LT$impl$u20$core..convert..From$LT$bool$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h158da3cc6575df74E"(i1 noundef zeroext %value) unnamed_addr #7 {
start:
  %spec.select.i = select i1 %value, i64 2, i64 1
  %0 = insertvalue { i64, ptr } poison, i64 %spec.select.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr null, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::object::convert::bool::<impl core::convert::From<evolve_inner_core::object::Object> for bool>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"_ZN17evolve_inner_core6object7convert4bool95_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$bool$GT$4from17h364a89628393cf9cE"(i64 noundef %val.0, ptr nocapture noundef readnone %val.1) unnamed_addr #7 {
start:
  %_0.i = icmp ugt i64 %val.0, 1
  ret i1 %_0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_ptr(ptr noundef %value) unnamed_addr #7 {
start:
  %0 = insertvalue { i64, ptr } { i64 17, ptr poison }, ptr %value, 1
  ret { i64, ptr } %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @evolve.extract.ptr(i64 noundef %self.0, ptr noundef readnone returned %self.1) unnamed_addr #7 {
start:
  ret ptr %self.1
}

; evolve_inner_core::object::convert::ptr::<impl core::convert::From<*const evolve_inner_core::object::Object> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3ptr138_$LT$impl$u20$core..convert..From$LT$$BP$const$u20$evolve_inner_core..object..Object$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17haf04ce5fc30e2058E"(ptr noundef %value) unnamed_addr #7 {
start:
  %0 = insertvalue { i64, ptr } { i64 17, ptr poison }, ptr %value, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::ptr::<impl core::convert::From<evolve_inner_core::object::Object> for *const evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @"_ZN17evolve_inner_core6object7convert3ptr138_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$$BP$const$u20$evolve_inner_core..object..Object$GT$4from17h0aced69651ec47adE"(i64 noundef %value.0, ptr noundef readnone returned %value.1) unnamed_addr #7 {
start:
  ret ptr %value.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_i64(i64 noundef %value) unnamed_addr #7 {
start:
  %_2 = inttoptr i64 %value to ptr
  %0 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %_2, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::i64::<impl core::convert::From<i64> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3i6494_$LT$impl$u20$core..convert..From$LT$i64$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h68ae55ce5bc5e388E"(i64 noundef %value) unnamed_addr #7 {
start:
  %_2.i = inttoptr i64 %value to ptr
  %0 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %_2.i, 1
  ret { i64, ptr } %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.extract.i64(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
start:
  %_0 = ptrtoint ptr %value.1 to i64
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_f64(double noundef %value) unnamed_addr #7 {
start:
  %_3 = bitcast double %value to i64
  %_2 = inttoptr i64 %_3 to ptr
  %0 = insertvalue { i64, ptr } { i64 5, ptr poison }, ptr %_2, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::f64::<impl core::convert::From<f64> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3f6494_$LT$impl$u20$core..convert..From$LT$f64$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hacd01750226785afE"(double noundef %value) unnamed_addr #7 {
start:
  %_3.i = bitcast double %value to i64
  %_2.i = inttoptr i64 %_3.i to ptr
  %0 = insertvalue { i64, ptr } { i64 5, ptr poison }, ptr %_2.i, 1
  ret { i64, ptr } %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve.extract.f64(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
start:
  %_2 = ptrtoint ptr %value.1 to i64
  %_0 = bitcast i64 %_2 to double
  ret double %_0
}

; evolve_inner_core::object::debug::<impl core::fmt::Debug for evolve_inner_core::object::Object>::fmt
; Function Attrs: nounwind nonlazybind
define noundef zeroext i1 @"_ZN17evolve_inner_core6object5debug80_$LT$impl$u20$core..fmt..Debug$u20$for$u20$evolve_inner_core..object..Object$GT$3fmt17h59c8b23ac360ec3dE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Formatter12debug_struct17h6c85e2ff3306615eE(ptr noalias nocapture noundef nonnull sret([16 x i8]) align 8 dereferenceable(16) %common, ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 @alloc_1a3b627145dc0fe65f658cb38c278359, i64 noundef 6) #27
  %_6.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_0.i = trunc i64 %_6.0 to i16
  switch i16 %_0.i, label %bb3 [
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
  store i16 %_0.i, ptr %_94, align 2
; call core::fmt::builders::DebugStruct::field
  %_90 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_63744475ac4d11caf5a224426ca4a84c, i64 noundef 8, ptr noundef nonnull align 1 %_94, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_98)
  %_2.i = lshr i64 %_6.0, 32
  %_0.i2 = trunc nuw i64 %_2.i to i32
  store i32 %_0.i2, ptr %_98, align 4
; call core::fmt::builders::DebugStruct::field
  %_89 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_90, ptr noalias noundef nonnull readonly align 1 @alloc_a6c9073709f4dc3faf09868fececa07c, i64 noundef 3, ptr noundef nonnull align 1 %_98, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_102)
  %_103.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_103.1, ptr %_102, align 8
; call core::fmt::builders::DebugStruct::field
  %_88 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_89, ptr noalias noundef nonnull readonly align 1 @alloc_eb15813ccc20d20673372177ea4f1c88, i64 noundef 3, ptr noundef nonnull align 1 %_102, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_98)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_94)
  br label %bb48

bb13:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_10)
  %_11.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_11.1, ptr %_10, align 8
; call core::fmt::builders::DebugStruct::field
  %1 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_a8456fb127012b2b67e2f034dd8cd60c, i64 noundef 4, ptr noundef nonnull align 1 %_10, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_10)
  br label %bb48

bb12:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_16)
  %_17.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_17.1, ptr %_16, align 8
; call core::fmt::builders::DebugStruct::field
  %_12 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_5f51429af5bff0c26097b04b86db779e, i64 noundef 5, ptr noundef nonnull align 1 %_16, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_16)
  br label %bb48

bb11:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_22)
  %_23.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_23.1, ptr %_22, align 8
; call core::fmt::builders::DebugStruct::field
  %_18 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_68f2a445488f20082ceefa0ab63c19b2, i64 noundef 4, ptr noundef nonnull align 1 %_22, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_22)
  br label %bb48

bb10:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_29)
  %_30.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_30.1, ptr %_29, align 8
; call core::fmt::builders::DebugStruct::field
  %_25 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_f20ab71f06765100d92312e3a01bb989, i64 noundef 3, ptr noundef nonnull align 1 %_29, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_33)
  %_2.i3 = lshr i64 %_6.0, 32
  %_0.i4 = trunc nuw i64 %_2.i3 to i32
  store i32 %_0.i4, ptr %_33, align 4
; call core::fmt::builders::DebugStruct::field
  %_24 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_25, ptr noalias noundef nonnull readonly align 1 @alloc_250b91d3432a6fe0c6c420b70e341432, i64 noundef 4, ptr noundef nonnull align 1 %_33, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_29)
  br label %bb48

bb9:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_39)
  %_40.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_40.1, ptr %_39, align 8
; call core::fmt::builders::DebugStruct::field
  %_35 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_e4771d6525973485a812fe783cd28050, i64 noundef 7, ptr noundef nonnull align 1 %_39, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
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
  %_41 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_0869314c06f5536ea9cfbda8e3d75f40, i64 noundef 6, ptr noundef nonnull align 1 %_45, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.4) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  br label %bb48

bb7:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_51)
  %_108 = load ptr, ptr %0, align 8, !noundef !3
  %3 = ptrtoint ptr %_108 to i64
  store i64 %3, ptr %_51, align 8
; call core::fmt::builders::DebugStruct::field
  %_47 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_f4db005b851b7259d0b6ded255335a8c, i64 noundef 3, ptr noundef nonnull align 1 %_51, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_51)
  br label %bb48

bb6:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_56)
  %_109 = load ptr, ptr %0, align 8, !noundef !3
  %_107 = ptrtoint ptr %_109 to i64
  store i64 %_107, ptr %_56, align 8
; call core::fmt::builders::DebugStruct::field
  %_52 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_82b1bf185e1b461c8b8241303ddf0563, i64 noundef 3, ptr noundef nonnull align 1 %_56, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_56)
  br label %bb48

bb5:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_64)
  %_65.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_65.1, ptr %_64, align 8
; call core::fmt::builders::DebugStruct::field
  %_60 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_22f0e91223dabf1bef5f103b8560c3f1, i64 noundef 5, ptr noundef nonnull align 1 %_64, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_68)
  %_2.i5 = lshr i64 %_6.0, 32
  %_0.i6 = trunc nuw i64 %_2.i5 to i32
  store i32 %_0.i6, ptr %_68, align 4
; call core::fmt::builders::DebugStruct::field
  %_59 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_60, ptr noalias noundef nonnull readonly align 1 @alloc_a2e5f6be2a03b9f5ed256baff3399a84, i64 noundef 4, ptr noundef nonnull align 1 %_68, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_72)
  %_6.not.i = icmp ult i64 %_6.0, 4294967296
  %_9.i = getelementptr inbounds nuw i8, ptr %_65.1, i64 16
  %spec.select.i = select i1 %_6.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %_0.0.i = load i64, ptr %spec.select.i, align 8, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i = load ptr, ptr %4, align 8, !noundef !3
  store i64 %_0.0.i, ptr %_72, align 8
  %5 = getelementptr inbounds nuw i8, ptr %_72, i64 8
  store ptr %_0.1.i, ptr %5, align 8
; call core::fmt::builders::DebugStruct::field
  %_58 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_59, ptr noalias noundef nonnull readonly align 1 @alloc_ac368d9a707b52d21ed3ba3af2bad0d5, i64 noundef 3, ptr noundef nonnull align 1 %_72, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.7) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_76)
  %_6.not.i8 = icmp ult i64 %_6.0, 8589934592
  %_9.i9 = getelementptr inbounds nuw i8, ptr %_65.1, i64 32
  %spec.select.i10 = select i1 %_6.not.i8, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i9
  %_0.0.i11 = load i64, ptr %spec.select.i10, align 8, !noundef !3
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i10, i64 8
  %_0.1.i12 = load ptr, ptr %6, align 8, !noundef !3
  store i64 %_0.0.i11, ptr %_76, align 8
  %7 = getelementptr inbounds nuw i8, ptr %_76, i64 8
  store ptr %_0.1.i12, ptr %7, align 8
; call core::fmt::builders::DebugStruct::field
  %_57 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_58, ptr noalias noundef nonnull readonly align 1 @alloc_5b8c386f77829feb42882cd52d13ac4a, i64 noundef 3, ptr noundef nonnull align 1 %_76, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.7) #27
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
  %_79 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_3fb291eefbcf3fa3c1d2137966dc6e7c, i64 noundef 7, ptr noundef nonnull align 1 %_83, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_87)
  %_6.not.i.i.i = icmp ult i64 %_6.0, 8589934592
  %_9.i.i.i = getelementptr inbounds nuw i8, ptr %_84.1, i64 32
  %spec.select.i.i.i = select i1 %_6.not.i.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i.i.i
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %_0.1.i.i.i = load ptr, ptr %8, align 8, !noalias !32, !noundef !3
  %_0.i.i = ptrtoint ptr %_0.1.i.i.i to i64
  store i64 %_0.i.i, ptr %_87, align 8
; call core::fmt::builders::DebugStruct::field
  %_78 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_79, ptr noalias noundef nonnull readonly align 1 @alloc_a2e5f6be2a03b9f5ed256baff3399a84, i64 noundef 4, ptr noundef nonnull align 1 %_87, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_87)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_83)
  br label %bb48

bb48:                                             ; preds = %bb3, %bb4, %bb5, %bb6, %bb7, %bb8, %bb9, %bb10, %bb11, %bb12, %bb13
  %more.sroa.0.0 = phi ptr [ %_88, %bb3 ], [ %_78, %bb4 ], [ %_57, %bb5 ], [ %_52, %bb6 ], [ %_47, %bb7 ], [ %_41, %bb8 ], [ %_35, %bb9 ], [ %_24, %bb10 ], [ %_18, %bb11 ], [ %_12, %bb12 ], [ %1, %bb13 ]
; call core::fmt::builders::DebugStruct::finish
  %_0 = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17heb12b5c3a04a811fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %more.sroa.0.0) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %common)
  ret i1 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_build_ptr(i16 noundef %class_id, i32 noundef %aux4, ptr noundef %ptr) unnamed_addr #7 {
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
define { i64, ptr } @evolve_core_build_null() unnamed_addr #7 {
start:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.core.tag(i64 noundef returned %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  ret i64 %self.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i16 @evolve.core.class_id.u16(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  %_0 = trunc i64 %self.0 to i16
  ret i16 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i64 0, 65536) i64 @evolve.core.class_id(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  %_0 = and i64 %self.0, 65535
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i32 @evolve.core.aux4(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  %_2 = lshr i64 %self.0, 32
  %_0 = trunc nuw i64 %_2 to i32
  ret i32 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_core_class(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.is?"(i64 noundef %self.0, ptr noundef readnone %self.1, i64 noundef %rhs.0, ptr noundef readnone %rhs.1) unnamed_addr #7 {
start:
  %_3 = icmp eq i64 %self.0, %rhs.0
  %0 = icmp eq ptr %self.1, %rhs.1
  %_0.sroa.0.0 = and i1 %_3, %0
  ret i1 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.null?"(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  %_0 = icmp eq i64 %self.0, 0
  ret i1 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { ptr, i64 } @evolve_extract_rust_cstr(i64 noundef %self.0, ptr noundef %self.1) unnamed_addr #7 {
start:
  %_2.i = lshr i64 %self.0, 32
  %_4 = add nuw nsw i64 %_2.i, 1
  %0 = insertvalue { ptr, i64 } poison, ptr %self.1, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %_4, 1
  ret { ptr, i64 } %1
}

; <evolve_inner_core::object::Object as core::cmp::PartialEq>::eq
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite)
define noundef zeroext i1 @"_ZN74_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4d8c3bac26b8b71bE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #8 {
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
  br i1 %brmerge, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit", label %bb6.i

bb6.i:                                            ; preds = %start
  %_11.i = trunc i64 %_4.0.i to i16
  switch i16 %_11.i, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit" [
    i16 4, label %bb10.i
    i16 5, label %bb9.i
    i16 6, label %bb8.i
  ]

bb10.i:                                           ; preds = %bb6.i
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

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
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

bb8.i:                                            ; preds = %bb6.i
  %_2.i.i.i.i = lshr i64 %_4.0.i, 32
  %bcmp = tail call i32 @bcmp(ptr %_4.1.i, ptr %_5.1.i, i64 %_2.i.i.i.i)
  %6 = icmp eq i32 %bcmp, 0
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit": ; preds = %start, %bb6.i, %bb10.i, %bb9.i, %bb8.i
  %_0.sroa.0.0.i = phi i1 [ %6, %bb8.i ], [ %5, %bb9.i ], [ %2, %bb10.i ], [ %_0.sroa.0.0.i.i, %start ], [ true, %bb6.i ]
  ret i1 %_0.sroa.0.0.i
}

; <evolve_inner_core::object::Object as core::cmp::PartialOrd>::partial_cmp
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite)
define noundef range(i8 -1, 3) i8 @"_ZN75_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h56dc877c8c4aa309E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #8 {
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
  br i1 %_0.sroa.0.0.i.i, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit", label %bb3.i

bb3.i:                                            ; preds = %start
  br i1 %_3.i.i, label %bb6.i, label %bb13.i

bb13.i:                                           ; preds = %bb6.i, %bb3.i
  %3 = tail call i8 @llvm.ucmp.i8.i64(i64 %_4.0.i, i64 %_5.0.i)
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

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
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

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
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

bb8.i:                                            ; preds = %bb6.i
  %_2.i.i.i.i = lshr i64 %_4.0.i, 32
  %7 = tail call i32 @memcmp(ptr readonly %_4.1.i, ptr readonly %_5.1.i, i64 %_2.i.i.i.i), !noalias !45
  %8 = sext i32 %7 to i64
  %_0.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %8, i64 0)
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit"

"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E.exit": ; preds = %start, %bb13.i, %bb10.i, %bb9.i, %bb8.i
  %_0.sroa.0.0.i = phi i8 [ %3, %bb13.i ], [ %_0.i.i, %bb8.i ], [ %_0.sroa.0.0.i.i.i, %bb9.i ], [ %4, %bb10.i ], [ 0, %start ]
  ret i8 %_0.sroa.0.0.i
}

; <evolve_inner_core::object::Object as core::cmp::Ord>::cmp
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef range(i8 -1, 2) i8 @"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #9 {
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
  %7 = tail call i32 @memcmp(ptr readonly %_4.1, ptr readonly %_5.1, i64 %_2.i.i.i)
  %8 = sext i32 %7 to i64
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %8, i64 0)
  br label %bb15

bb15:                                             ; preds = %start, %bb10, %bb9, %bb8, %bb13
  %_0.sroa.0.0 = phi i8 [ %3, %bb13 ], [ %_0.i, %bb8 ], [ %_0.sroa.0.0.i.i, %bb9 ], [ %4, %bb10 ], [ 0, %start ]
  ret i8 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.from.ptr.app(i32 noundef %argc, ptr noundef %argv) unnamed_addr #7 {
start:
  %_6.i = zext i32 %argc to i64
  %_5.i = shl nuw i64 %_6.i, 32
  %_4.i = or disjoint i64 %_5.i, 3
  %0 = insertvalue { i64, ptr } poison, i64 %_4.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %argv, 1
  ret { i64, ptr } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i8 -1, 2) i8 @evolve_f64_cmp(double noundef %value1, double noundef %value2) unnamed_addr #7 {
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
define noundef zeroext i1 @evolve_f64_eq(double noundef %value1, double noundef %value2) unnamed_addr #7 {
start:
  %_3 = fcmp uno double %value1, 0.000000e+00
  %0 = fcmp uno double %value2, 0.000000e+00
  %1 = fcmp oeq double %value1, %value2
  %_0.sroa.0.0.in = select i1 %_3, i1 %0, i1 %1
  ret i1 %_0.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve.f64.fptosi.checked(double noundef %value) unnamed_addr #7 {
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
define noundef double @evolve.next_down(double noundef %value) unnamed_addr #7 {
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
define noundef double @evolve.next_up(double noundef %value) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i8 -1, 2) i8 @evolve_i64_cmp(i64 noundef %value1, i64 noundef %value2) unnamed_addr #7 {
start:
  %_0 = tail call i8 @llvm.scmp.i8.i64(i64 %value1, i64 %value2)
  ret i8 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_checked_div(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
start:
  %0 = icmp eq i64 %rhs, 0
  br i1 %0, label %bb1, label %bb2, !prof !25

bb2:                                              ; preds = %start
  %_5 = icmp eq i64 %lhs, -9223372036854775808
  %1 = icmp eq i64 %rhs, -1
  %or.cond = and i1 %_5, %1
  br i1 %or.cond, label %bb1, label %bb7, !prof !46

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
define { i64, i1 } @evolve_i64_checked_rem(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
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
  %1 = insertvalue { i64, i1 } poison, i64 %_0.sroa.0.0.i, 0
  %2 = insertvalue { i64, i1 } %1, i1 false, 1
  ret { i64, i1 } %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_i64_safe_rem(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i64 } @evolve_i64_checked_div_rem(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
start:
  %0 = icmp eq i64 %rhs, 0
  br i1 %0, label %bb3, label %bb4, !prof !25

bb4:                                              ; preds = %start
  %_10 = icmp eq i64 %lhs, -9223372036854775808
  %.not = icmp eq i64 %rhs, -1
  %or.cond = and i1 %_10, %.not
  br i1 %or.cond, label %bb3, label %bb2, !prof !46

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
define noundef zeroext i1 @_ZN17evolve_inner_core3i6423evolve_i64_divisible_by17h4d0851ce84ae4b69E(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
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
define { i64, i1 } @evolve_i64_overflowing_abs(i64 noundef %value) unnamed_addr #7 {
start:
  %_2.sroa.0.0 = tail call i64 @llvm.abs.i64(i64 %value, i1 false)
  %_3 = icmp eq i64 %value, -9223372036854775808
  %0 = insertvalue { i64, i1 } poison, i64 %_2.sroa.0.0, 0
  %1 = insertvalue { i64, i1 } %0, i1 %_3, 1
  ret { i64, i1 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_overflowing_neg(i64 noundef %value) unnamed_addr #7 {
start:
  %_2 = icmp eq i64 %value, -9223372036854775808
  %_3 = sub i64 0, %value
  %0 = insertvalue { i64, i1 } poison, i64 %_3, 0
  %1 = insertvalue { i64, i1 } %0, i1 %_2, 1
  ret { i64, i1 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i64 -9223372036854775808, 1) i64 @evolve_i64_nabs(i64 noundef %value) unnamed_addr #7 {
start:
  %0 = tail call i64 @llvm.abs.i64(i64 %value, i1 false)
  %_0.sroa.0.0 = sub i64 0, %0
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.signed-shift-right(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %_3 = icmp sgt i64 %rhs, 0
  %_0.sroa.0.0.sroa.speculated.i = tail call range(i64 1, 64) i64 @llvm.umin.i64(i64 range(i64 1, -9223372036854775808) %rhs, i64 63)
  %0 = select i1 %_3, i64 %_0.sroa.0.0.sroa.speculated.i, i64 0
  %_0.sroa.0.0 = ashr i64 %lhs, %0
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.unsigned-shift-right(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
start:
  %or.cond = icmp ult i64 %rhs, 64
  %_9 = lshr i64 %lhs, %rhs
  %_5 = icmp sgt i64 %rhs, 63
  %spec.select = select i1 %_5, i64 0, i64 %lhs
  %_0.sroa.0.0 = select i1 %or.cond, i64 %_9, i64 %spec.select
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #7 {
start:
  %_3 = icmp ult i32 %rhs, 64
  %0 = zext nneg i32 %rhs to i64
  %1 = shl i64 %lhs, %0
  %_0.sroa.0.0 = select i1 %_3, i64 %1, i64 0
  ret i64 %_0.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_overflowing_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.core.intrinsic.win?"(i64 noundef %self.0, ptr nocapture noundef readnone %self.1) unnamed_addr #7 {
start:
  %_0 = icmp ne i64 %self.0, 257
  ret i1 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i64 0, 65536) i64 @evolve.intrinsic2.class_id(i64 noundef %value.0, ptr nocapture noundef readnone %value.1) unnamed_addr #7 {
start:
  %_0 = and i64 %value.0, 65535
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.is?"(i64 noundef %left.0, ptr noundef readnone %left.1, i64 noundef %right.0, ptr noundef readnone %right.1) unnamed_addr #7 {
start:
  %_3.i = icmp eq i64 %left.0, %right.0
  %0 = icmp eq ptr %left.1, %right.1
  %_0.sroa.0.0.i = and i1 %_3.i, %0
  ret i1 %_0.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.is_not?"(i64 noundef %left.0, ptr noundef readnone %left.1, i64 noundef %right.0, ptr noundef readnone %right.1) unnamed_addr #7 {
start:
  %_3.i = icmp ne i64 %left.0, %right.0
  %0 = icmp ne ptr %left.1, %right.1
  %_0.sroa.0.0.i.not = or i1 %_3.i, %0
  ret i1 %_0.sroa.0.0.i.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.true?"(i64 noundef %value.0, ptr nocapture noundef readnone %value.1) unnamed_addr #7 {
start:
  %_0.i = icmp ugt i64 %value.0, 1
  ret i1 %_0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"evolve.intrinsic2.false?"(i64 noundef %value.0, ptr nocapture noundef readnone %value.1) unnamed_addr #7 {
start:
  %_0.i = icmp ult i64 %value.0, 2
  ret i1 %_0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve.intrinsic2.get(i64 noundef %value.0, ptr nocapture noundef readonly %value.1, i64 noundef %index.0, ptr noundef %index.1) unnamed_addr #4 {
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
  %_2.i.i.i = lshr i64 %value.0, 32
  %_6.not.i = icmp ult i64 %_2.i.i.i, %_6
  %_9.i = getelementptr inbounds nuw %"object::Object", ptr %value.1, i64 %_6
  %spec.select.i = select i1 %_6.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  br label %bb10.sink.split

bb5:                                              ; preds = %bb3
  %_9 = ptrtoint ptr %index.1 to i64
  %adjusted_index.i = add i64 %_9, -1
  %1 = getelementptr inbounds nuw i8, ptr %value.1, i64 24
  %_4.i.i = load i64, ptr %1, align 8, !alias.scope !47, !noundef !3
  %_3.i.i = icmp ult i64 %adjusted_index.i, %_4.i.i
  br i1 %_3.i.i, label %bb1.i.i, label %evolve_array_get.exit

bb1.i.i:                                          ; preds = %bb5
  %2 = getelementptr inbounds nuw i8, ptr %value.1, i64 16
  %idx1.i.i = load i64, ptr %2, align 8, !alias.scope !47, !noundef !3
  %logical_index.i.i = add i64 %idx1.i.i, %adjusted_index.i
  %self2.i.i = load i64, ptr %value.1, align 8, !range !5, !alias.scope !47, !noundef !3
  %_17.not.i.i = icmp ult i64 %logical_index.i.i, %self2.i.i
  %3 = select i1 %_17.not.i.i, i64 0, i64 %self2.i.i
  %idx.sroa.0.0.i.i = sub nuw i64 %logical_index.i.i, %3
  %4 = getelementptr inbounds nuw i8, ptr %value.1, i64 8
  %_18.i.i = load ptr, ptr %4, align 8, !alias.scope !47, !nonnull !3, !noundef !3
  %_7.i.i = getelementptr inbounds nuw %"object::Object", ptr %_18.i.i, i64 %idx.sroa.0.0.i.i
  br label %evolve_array_get.exit

evolve_array_get.exit:                            ; preds = %bb5, %bb1.i.i
  %_0.sroa.0.0.i.i = phi ptr [ %_7.i.i, %bb1.i.i ], [ null, %bb5 ]
  %.not.i = icmp eq ptr %_0.sroa.0.0.i.i, null
  %alloc_e9164108e3a8c437bd8ee95ca79fdb9f..i = select i1 %.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_0.sroa.0.0.i.i
  br label %bb10.sink.split

bb10.sink.split:                                  ; preds = %evolve_array_get.exit, %bb6
  %spec.select.i.sink3 = phi ptr [ %spec.select.i, %bb6 ], [ %alloc_e9164108e3a8c437bd8ee95ca79fdb9f..i, %evolve_array_get.exit ]
  %_0.0.i = load i64, ptr %spec.select.i.sink3, align 8, !noundef !3
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.sink3, i64 8
  %_0.1.i = load ptr, ptr %5, align 8, !noundef !3
  br label %bb10

bb10:                                             ; preds = %bb10.sink.split, %bb3, %start
  %_0.sroa.5.0 = phi ptr [ null, %start ], [ null, %bb3 ], [ %_0.1.i, %bb10.sink.split ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb3 ], [ %_0.0.i, %bb10.sink.split ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.5.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.call!"(i64 noundef %s.0, ptr noundef %s.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #0 {
start:
  %0 = and i64 %s.0, 65535
  %_4 = icmp eq i64 %0, 19
  br i1 %_4, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %_6.not.i.i = icmp ult i64 %s.0, 12884901888
  %_9.i.i = getelementptr inbounds nuw i8, ptr %s.1, i64 48
  %spec.select.i.i = select i1 %_6.not.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i.i
  %_0.0.i.i = load i64, ptr %spec.select.i.i, align 8, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %_0.1.i.i = load ptr, ptr %1, align 8, !noundef !3
  %_6.not.i2.i = icmp ult i64 %s.0, 4294967296
  %_9.i3.i = getelementptr inbounds nuw i8, ptr %s.1, i64 16
  %spec.select.i4.i = select i1 %_6.not.i2.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i3.i
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i4.i, i64 8
  %_0.1.i6.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %_6.not.i.i.i = icmp ult i64 %s.0, 8589934592
  %_9.i.i.i = getelementptr inbounds nuw i8, ptr %s.1, i64 32
  %spec.select.i.i.i = select i1 %_6.not.i.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 8
  %_0.1.i.i.i = load ptr, ptr %3, align 8, !noundef !3
  %_0.i.i = ptrtoint ptr %_0.1.i.i.i to i64
  %_3.not.i.i = icmp eq ptr %_0.1.i.i.i, null
  %_9.i7.i = shl i64 %_0.i.i, 32
  %_7.i.i = or disjoint i64 %_9.i7.i, 15
  %_0.sroa.3.0.i.i = select i1 %_3.not.i.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %s.1
  %4 = tail call { i64, ptr } %_0.1.i6.i(i64 noundef %_0.0.i.i, ptr noundef %_0.1.i.i, i64 noundef %tuple.0, ptr noundef %tuple.1, i64 noundef %_7.i.i, ptr noundef %_0.sroa.3.0.i.i) #27
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.to_i(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
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
  %_2.i = fcmp ult double %_8, 0xC3E0000000000000
  %_3.i = fcmp uge double %_8, 0x43E0000000000000
  %or.cond.not.i = or i1 %_2.i, %_3.i
  %0 = fptosi double %_8 to i64
  %_2.i1 = inttoptr i64 %0 to ptr
  %spec.select = select i1 %or.cond.not.i, ptr null, ptr %_2.i1
  %spec.select2 = select i1 %or.cond.not.i, i64 257, i64 4
  br label %bb8

bb8:                                              ; preds = %bb2, %start, %bb3
  %_0.sroa.5.0 = phi ptr [ %value.1, %bb3 ], [ null, %start ], [ %spec.select, %bb2 ]
  %_0.sroa.0.0 = phi i64 [ %value.0, %bb3 ], [ 257, %start ], [ %spec.select2, %bb2 ]
  %1 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %_0.sroa.5.0, 1
  ret { i64, ptr } %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.to_f(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.eq?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h136cfe0c7cea9997E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h136cfe0c7cea9997E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp eq ptr %left.1, %right.1
  %spec.select.i.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h136cfe0c7cea9997E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i2.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i1.i.i = fcmp oeq double %0, %1
  %_0.sroa.0.0.in.i.i = select i1 %_0.i.i.i, i1 %_0.i2.i.i, i1 %_0.i1.i.i
  %spec.select.i.i1 = select i1 %_0.sroa.0.0.in.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h136cfe0c7cea9997E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h136cfe0c7cea9997E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i.i1, %bb5.i ], [ %spec.select.i.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.ne?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h75b68b2be0c4712fE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h75b68b2be0c4712fE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp eq ptr %left.1, %right.1
  %spec.select.i.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h75b68b2be0c4712fE.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i.i.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i2.i.i.i = fcmp ord double %1, 0.000000e+00
  %_0.i1.i.i.i = fcmp une double %0, %1
  %_0.sroa.0.0.in.i.i.i = select i1 %_0.i.i.i.i, i1 %_0.i2.i.i.i, i1 %_0.i1.i.i.i
  %spec.select.i.i1 = select i1 %_0.sroa.0.0.in.i.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h75b68b2be0c4712fE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h75b68b2be0c4712fE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i.i1, %bb5.i ], [ %spec.select.i.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.lt?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h2b3aeb73c3457a11E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h2b3aeb73c3457a11E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp slt ptr %left.1, %right.1
  %spec.select.i.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h2b3aeb73c3457a11E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp ord double %0, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %0, %1
  %_0.i.not.i.i = and i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i.i1 = select i1 %_0.i.not.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h2b3aeb73c3457a11E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h2b3aeb73c3457a11E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i.i1, %bb5.i ], [ %spec.select.i.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.ge?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h17be87f33078a09fE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h17be87f33078a09fE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp slt ptr %left.1, %right.1
  %spec.select.i.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h17be87f33078a09fE.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i.i.i = fcmp oge double %0, %1
  %_0.i.i1 = or i1 %_0.i1.i.i, %_0.i.i.i
  %spec.select.i.i2 = select i1 %_0.i.i1, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h17be87f33078a09fE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h17be87f33078a09fE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i.i2, %bb5.i ], [ %spec.select.i.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.gt?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb8773a79ad879b29E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb8773a79ad879b29E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp sgt ptr %left.1, %right.1
  %spec.select.i.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb8773a79ad879b29E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp ord double %1, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %1, %0
  %_0.i.not.i.i = and i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i.i1 = select i1 %_0.i.not.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb8773a79ad879b29E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb8773a79ad879b29E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i.i1, %bb5.i ], [ %spec.select.i.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.le?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb9cb3cf538cade6cE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb9cb3cf538cade6cE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp sgt ptr %left.1, %right.1
  %spec.select.i.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb9cb3cf538cade6cE.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i.i.i.i = fcmp oge double %1, %0
  %_0.i.i.i = or i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i.i1 = select i1 %_0.i.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb9cb3cf538cade6cE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17hb9cb3cf538cade6cE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i.i1, %bb5.i ], [ %spec.select.i.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.in?"(i64 noundef %lhs.0, ptr noundef %lhs.1, i64 noundef %rhs.0, ptr noundef %rhs.1) unnamed_addr #7 {
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
  %_0.i.i.i = icmp eq ptr %lhs.1, %rhs.1
  %spec.select.i.i.i = select i1 %_0.i.i.i, i64 2, i64 1
  br label %"evolve.intrinsic2.eq?.exit"

bb5.i.i:                                          ; preds = %bb4.i.i
  %_29.i.i = ptrtoint ptr %lhs.1 to i64
  %_32.i.i = ptrtoint ptr %rhs.1 to i64
  %0 = bitcast i64 %_29.i.i to double
  %1 = bitcast i64 %_32.i.i to double
  %_0.i.i.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i2.i.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i1.i.i.i = fcmp oeq double %0, %1
  %_0.sroa.0.0.in.i.i.i = select i1 %_0.i.i.i.i, i1 %_0.i2.i.i.i, i1 %_0.i1.i.i.i
  %spec.select.i.i1.i = select i1 %_0.sroa.0.0.in.i.i.i, i64 2, i64 1
  br label %"evolve.intrinsic2.eq?.exit"

"evolve.intrinsic2.eq?.exit":                     ; preds = %start, %bb4.i.i, %bb6.i.i, %bb5.i.i
  %_0.sroa.0.0.i.i = phi i64 [ %spec.select.i.i1.i, %bb5.i.i ], [ %spec.select.i.i.i, %bb6.i.i ], [ 257, %start ], [ 257, %bb4.i.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.times!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #0 {
start:
  %0 = tail call { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), i64 noundef %this.0, ptr noundef %this.1, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), i64 noundef %tuple.0, ptr noundef %tuple.1) #27
  %1 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %this.1, 1
  ret { i64, ptr } %2
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.upto!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #0 {
start:
  %0 = tail call { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), i64 noundef %tuple.0, ptr noundef %tuple.1) #27
  %1 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %this.1, 1
  ret { i64, ptr } %2
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.downto!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #0 {
start:
  %0 = tail call { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef 4, ptr noundef nonnull inttoptr (i64 -1 to ptr), i64 noundef %tuple.0, ptr noundef %tuple.1) #27
  %1 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %this.1, 1
  ret { i64, ptr } %2
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.loop!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #0 {
start:
  %0 = tail call { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), i64 noundef 4, ptr noundef nonnull inttoptr (i64 9223372036854775807 to ptr), i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), i64 noundef %tuple.0, ptr noundef %tuple.1) #27
  %_0.i.not = icmp eq i64 %this.0, 257
  br i1 %_0.i.not, label %bb4, label %bb3, !prof !25

bb4:                                              ; preds = %start
; call core::panicking::panic
  tail call void @_ZN4core9panicking5panic17h4a11c031239f36a8E(ptr noalias noundef nonnull readonly align 1 @alloc_50981fdc3d28c727f94146500adf1421, i64 noundef 41, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_dd3e48be704813f1891c6970a65270ee) #28
  unreachable

bb3:                                              ; preds = %start
  %1 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr %this.1, 1
  ret { i64, ptr } %2
}

; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %step.0, ptr noundef %step.1, i64 noundef %closure.0, ptr noundef %closure.1) unnamed_addr #0 {
start:
  %raw_tuple = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple, i8 0, i64 32, i1 false)
  %_0.i.not.i = icmp ne i64 %this.0, 4
  %_0.i1.not.i = icmp ne i64 %limit.0, 4
  %or.cond20.not24 = or i1 %_0.i.not.i, %_0.i1.not.i
  %_0.i2.not.i = icmp ne i64 %step.0, 4
  %or.cond21.not23 = or i1 %or.cond20.not24, %_0.i2.not.i
  %0 = and i64 %closure.0, 65535
  %_0.i3.i = icmp ne i64 %0, 19
  %or.cond22 = or i1 %or.cond21.not23, %_0.i3.i
  br i1 %or.cond22, label %bb27, label %bb8

bb8:                                              ; preds = %start
  %limit = ptrtoint ptr %limit.1 to i64
  %step = ptrtoint ptr %step.1 to i64
  %1 = icmp eq ptr %step.1, null
  br i1 %1, label %bb27, label %bb10

bb10:                                             ; preds = %bb8
  %start1 = ptrtoint ptr %this.1 to i64
  %_6.not.i = icmp ult i64 %closure.0, 12884901888
  %_9.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 48
  %spec.select.i = select i1 %_6.not.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  %_0.0.i = load i64, ptr %spec.select.i, align 8, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %_0.1.i = load ptr, ptr %2, align 8, !noundef !3
  %_6.not.i9 = icmp ult i64 %closure.0, 4294967296
  %_9.i10 = getelementptr inbounds nuw i8, ptr %closure.1, i64 16
  %spec.select.i11 = select i1 %_6.not.i9, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i10
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i11, i64 8
  %_0.1.i13 = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %_6.not.i.i = icmp ult i64 %closure.0, 8589934592
  %_9.i.i = getelementptr inbounds nuw i8, ptr %closure.1, i64 32
  %spec.select.i.i = select i1 %_6.not.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i.i
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %_0.1.i.i = load ptr, ptr %4, align 8, !noundef !3
  %_0.i14 = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_9.i15 = shl i64 %_0.i14, 32
  %_7.i16 = or disjoint i64 %_9.i15, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %closure.1
  %_27 = icmp sgt ptr %step.1, null
  %_2825 = icmp sgt ptr %this.1, %limit.1
  %or.cond26 = and i1 %_27, %_2825
  br i1 %or.cond26, label %bb27, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb10
  %_30 = icmp slt ptr %step.1, null
  %_11.i18 = getelementptr inbounds nuw i8, ptr %raw_tuple, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %raw_tuple, i64 24
  br i1 %_30, label %bb16.lr.ph.split.split.us, label %bb16.lr.ph.split.us

bb16.lr.ph.split.us:                              ; preds = %bb16.lr.ph
  br i1 %_27, label %bb16.us, label %bb16.lr.ph.split.us.split.us

bb16.lr.ph.split.us.split.us:                     ; preds = %bb16.lr.ph.split.us
  store i64 4, ptr %_11.i18, align 8
  store ptr %this.1, ptr %5, align 8
  %6 = call { i64, ptr } %_0.1.i13(i64 noundef %_0.0.i, ptr noundef %_0.1.i, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i16, ptr noundef %_0.sroa.3.0.i) #27
  %7 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %start1, i64 %step)
  %_50.1.us.us39 = extractvalue { i64, i1 } %7, 1
  br i1 %_50.1.us.us39, label %bb27, label %bb36.us.us, !prof !52

bb36.us.us:                                       ; preds = %bb16.lr.ph.split.us.split.us, %bb36.us.us
  %8 = phi { i64, i1 } [ %10, %bb36.us.us ], [ %7, %bb16.lr.ph.split.us.split.us ]
  %_50.0.us.us = extractvalue { i64, i1 } %8, 0
  %_2.i.us.us = inttoptr i64 %_50.0.us.us to ptr
  store i64 4, ptr %_11.i18, align 8
  store ptr %_2.i.us.us, ptr %5, align 8
  %9 = call { i64, ptr } %_0.1.i13(i64 noundef %_0.0.i, ptr noundef %_0.1.i, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i16, ptr noundef %_0.sroa.3.0.i) #27
  %10 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_50.0.us.us, i64 %step)
  %_50.1.us.us = extractvalue { i64, i1 } %10, 1
  br i1 %_50.1.us.us, label %bb27, label %bb36.us.us, !prof !53

bb16.us:                                          ; preds = %bb16.lr.ph.split.us, %bb16.us
  %internal_index.sroa.0.027.us = phi i64 [ %_50.0.us, %bb16.us ], [ %start1, %bb16.lr.ph.split.us ]
  %_2.i.us = inttoptr i64 %internal_index.sroa.0.027.us to ptr
  store i64 4, ptr %_11.i18, align 8
  store ptr %_2.i.us, ptr %5, align 8
  %11 = call { i64, ptr } %_0.1.i13(i64 noundef %_0.0.i, ptr noundef %_0.1.i, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i16, ptr noundef %_0.sroa.3.0.i) #27
  %12 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.027.us, i64 %step)
  %_50.1.us = extractvalue { i64, i1 } %12, 1
  %_50.0.us = extractvalue { i64, i1 } %12, 0
  %_28.us = icmp sgt i64 %_50.0.us, %limit
  %or.cond = or i1 %_50.1.us, %_28.us
  br i1 %or.cond, label %bb27, label %bb16.us, !prof !54

bb16.lr.ph.split.split.us:                        ; preds = %bb16.lr.ph
  %_31.us37 = icmp slt ptr %this.1, %limit.1
  br i1 %_31.us37, label %bb27, label %bb5.i.us30

bb5.i.us30:                                       ; preds = %bb16.lr.ph.split.split.us, %bb5.i.us30
  %internal_index.sroa.0.027.us2938 = phi i64 [ %_50.0.us34, %bb5.i.us30 ], [ %start1, %bb16.lr.ph.split.split.us ]
  %_2.i.us31 = inttoptr i64 %internal_index.sroa.0.027.us2938 to ptr
  store i64 4, ptr %_11.i18, align 8
  store ptr %_2.i.us31, ptr %5, align 8
  %13 = call { i64, ptr } %_0.1.i13(i64 noundef %_0.0.i, ptr noundef %_0.1.i, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_7.i16, ptr noundef %_0.sroa.3.0.i) #27
  %14 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.027.us2938, i64 %step)
  %_50.1.us32 = extractvalue { i64, i1 } %14, 1
  %_50.0.us34 = extractvalue { i64, i1 } %14, 0
  %_31.us = icmp slt i64 %_50.0.us34, %limit
  %or.cond40 = or i1 %_50.1.us32, %_31.us
  br i1 %or.cond40, label %bb27, label %bb5.i.us30, !prof !54

bb27:                                             ; preds = %bb10, %bb16.lr.ph.split.us.split.us, %bb16.lr.ph.split.split.us, %bb5.i.us30, %bb16.us, %bb36.us.us, %bb8, %start
  %_0.sroa.4.1 = phi ptr [ null, %start ], [ null, %bb8 ], [ %this.1, %bb36.us.us ], [ %this.1, %bb16.us ], [ %this.1, %bb5.i.us30 ], [ %this.1, %bb16.lr.ph.split.split.us ], [ %this.1, %bb16.lr.ph.split.us.split.us ], [ %this.1, %bb10 ]
  %_0.sroa.0.1 = phi i64 [ 257, %start ], [ 257, %bb8 ], [ 4, %bb36.us.us ], [ 4, %bb16.us ], [ 4, %bb5.i.us30 ], [ 4, %bb16.lr.ph.split.split.us ], [ 4, %bb16.lr.ph.split.us.split.us ], [ 4, %bb10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple)
  %15 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.1, 0
  %16 = insertvalue { i64, ptr } %15, ptr %_0.sroa.4.1, 1
  ret { i64, ptr } %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.add(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h98aede765935ded4E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h98aede765935ded4E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_13.i = ptrtoint ptr %right.1 to i64
  %0 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_12.i, i64 %_13.i)
  %_5.1.i.i = extractvalue { i64, i1 } %0, 1
  %_5.0.i.i = extractvalue { i64, i1 } %0, 0
  %_2.i = inttoptr i64 %_5.0.i.i to ptr
  %spec.select = select i1 %_5.1.i.i, ptr null, ptr %_2.i
  %spec.select2 = select i1 %_5.1.i.i, i64 257, i64 4
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h98aede765935ded4E.exit

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
  %_2.i1 = inttoptr i64 %_36.i to ptr
  %spec.select4 = select i1 %_29.not.i, ptr %_2.i1, ptr null
  %spec.select5 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h98aede765935ded4E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17h98aede765935ded4E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
  %_0.sroa.6.0.i = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select, %bb6.i ], [ %spec.select4, %bb5.i ]
  %_0.sroa.0.0.i = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select2, %bb6.i ], [ %spec.select5, %bb5.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.6.0.i, 1
  ret { i64, ptr } %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.sub(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h97a6f74430999843E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h97a6f74430999843E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_13.i = ptrtoint ptr %right.1 to i64
  %0 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %_12.i, i64 %_13.i)
  %_5.1.i.i = extractvalue { i64, i1 } %0, 1
  %_5.0.i.i = extractvalue { i64, i1 } %0, 0
  %_2.i = inttoptr i64 %_5.0.i.i to ptr
  %spec.select = select i1 %_5.1.i.i, ptr null, ptr %_2.i
  %spec.select2 = select i1 %_5.1.i.i, i64 257, i64 4
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h97a6f74430999843E.exit

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
  %_2.i1 = inttoptr i64 %_36.i to ptr
  %spec.select4 = select i1 %_29.not.i, ptr %_2.i1, ptr null
  %spec.select5 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h97a6f74430999843E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17h97a6f74430999843E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
  %_0.sroa.6.0.i = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select, %bb6.i ], [ %spec.select4, %bb5.i ]
  %_0.sroa.0.0.i = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select2, %bb6.i ], [ %spec.select5, %bb5.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.6.0.i, 1
  ret { i64, ptr } %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.mul(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h813d95bf1ce319a9E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h813d95bf1ce319a9E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_13.i = ptrtoint ptr %right.1 to i64
  %0 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %_12.i, i64 %_13.i)
  %_5.1.i.i = extractvalue { i64, i1 } %0, 1
  %_5.0.i.i = extractvalue { i64, i1 } %0, 0
  %_2.i = inttoptr i64 %_5.0.i.i to ptr
  %spec.select = select i1 %_5.1.i.i, ptr null, ptr %_2.i
  %spec.select2 = select i1 %_5.1.i.i, i64 257, i64 4
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h813d95bf1ce319a9E.exit

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
  %_2.i1 = inttoptr i64 %_36.i to ptr
  %spec.select4 = select i1 %_29.not.i, ptr %_2.i1, ptr null
  %spec.select5 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h813d95bf1ce319a9E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17h813d95bf1ce319a9E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
  %_0.sroa.6.0.i = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select, %bb6.i ], [ %spec.select4, %bb5.i ]
  %_0.sroa.0.0.i = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select2, %bb6.i ], [ %spec.select5, %bb5.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.6.0.i, 1
  ret { i64, ptr } %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.trem(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
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
  br i1 %cond, label %bb3, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb6.i
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
  %_2.i1 = inttoptr i64 %_36.i to ptr
  %spec.select2 = select i1 %_29.not.i, ptr %_2.i1, ptr null
  %spec.select3 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i, %bb6.i, %bb5.i.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select2, %bb5.i ], [ %2, %bb5.i.i ], [ null, %bb6.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select3, %bb5.i ], [ 4, %bb5.i.i ], [ 4, %bb6.i ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.rem(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
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
  br i1 %cond, label %bb3, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hf4b279eb79a0c0c8E.exit.i.i"

"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hf4b279eb79a0c0c8E.exit.i.i": ; preds = %bb6.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %r.i.i.i = srem i64 %_12.i, %_6
  %_8.i.i.i = icmp slt i64 %r.i.i.i, 0
  %rhs1.sroa.0.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %_6, i1 false)
  %1 = select i1 %_8.i.i.i, i64 %rhs1.sroa.0.0.i.i.i, i64 0
  %_0.sroa.0.0.i.i.i = add i64 %1, %r.i.i.i
  %2 = inttoptr i64 %_0.sroa.0.0.i.i.i to ptr
  br label %bb3

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_4.i.i = frem double %_19.i, %_20.i
  %_5.i.i = fcmp olt double %_4.i.i, 0.000000e+00
  %_0.sroa.0.0.i.i.i1 = tail call double @llvm.fabs.f64(double %_20.i)
  %3 = fadd double %_4.i.i, %_0.sroa.0.0.i.i.i1
  %_0.sroa.0.0.i.i2 = select i1 %_5.i.i, double %3, double %_4.i.i
  %4 = tail call double @llvm.fabs.f64(double %_0.sroa.0.0.i.i2)
  %_30.i = fcmp une double %4, 0x7FF0000000000000
  %_36.i = bitcast double %_0.sroa.0.0.i.i2 to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %5 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp eq i64 %_38.i, 0
  %or.cond4.i = and i1 %_30.i, %cond.i
  %not.or.cond4.i = xor i1 %or.cond4.i, true
  %spec.select = select i1 %not.or.cond4.i, i1 true, i1 %5
  %_29.not.i = and i1 %_30.i, %spec.select
  %_2.i3 = inttoptr i64 %_36.i to ptr
  %spec.select4 = select i1 %_29.not.i, ptr %_2.i3, ptr null
  %spec.select5 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i, %bb6.i, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hf4b279eb79a0c0c8E.exit.i.i", %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select4, %bb5.i ], [ %2, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hf4b279eb79a0c0c8E.exit.i.i" ], [ null, %bb6.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select5, %bb5.i ], [ 4, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hf4b279eb79a0c0c8E.exit.i.i" ], [ 4, %bb6.i ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.div(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
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
  br i1 %or.cond.i1, label %bb3, label %_ZN4core3ops8function6FnOnce9call_once17hfae892dce9b8eba5E.exit, !prof !46

_ZN4core3ops8function6FnOnce9call_once17hfae892dce9b8eba5E.exit: ; preds = %bb5.i.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %rem.sroa.7.2.i.i = srem i64 %_12.i, %_6
  %2 = sdiv i64 %_12.i, %_6
  %3 = icmp eq i64 %rem.sroa.7.2.i.i, 0
  %_2.i = inttoptr i64 %2 to ptr
  %spec.select = select i1 %3, ptr %_2.i, ptr null
  %spec.select8 = select i1 %3, i64 4, i64 257
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
  %_2.i2 = inttoptr i64 %_36.i to ptr
  %spec.select10 = select i1 %_29.not.i, ptr %_2.i2, ptr null
  %spec.select11 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i.i, %_ZN4core3ops8function6FnOnce9call_once17hfae892dce9b8eba5E.exit, %bb5.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ null, %bb5.i.i ], [ %spec.select, %_ZN4core3ops8function6FnOnce9call_once17hfae892dce9b8eba5E.exit ], [ %spec.select10, %bb5.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ 257, %bb5.i.i ], [ %spec.select8, %_ZN4core3ops8function6FnOnce9call_once17hfae892dce9b8eba5E.exit ], [ %spec.select11, %bb5.i ]
  %7 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.tdiv(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
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
  br i1 %or.cond.i.i, label %bb3, label %bb8.i, !prof !46

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_3.i.i = fdiv double %_19.i, %_20.i
  %_0.i.i.i.i = fcmp oeq double %_3.i.i, 0.000000e+00
  %_0.i1.i.i.i = frem double %_3.i.i, 1.000000e+00
  %_0.sroa.0.0.i.i.i = select i1 %_0.i.i.i.i, double 0.000000e+00, double %_0.i1.i.i.i
  %_0.i.i.i = fcmp uno double %_0.sroa.0.0.i.i.i, 0.000000e+00
  %_0.i1.i.i = fsub double %_3.i.i, %_0.sroa.0.0.i.i.i
  %_0.sroa.0.0.i.i1 = select i1 %_0.i.i.i, double %_3.i.i, double %_0.i1.i.i
  %2 = tail call double @llvm.fabs.f64(double %_0.sroa.0.0.i.i1)
  %_30.i = fcmp une double %2, 0x7FF0000000000000
  %_36.i = bitcast double %_0.sroa.0.0.i.i1 to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %3 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp eq i64 %_38.i, 0
  %or.cond4.i = and i1 %_30.i, %cond.i
  %not.or.cond4.i = xor i1 %or.cond4.i, true
  %spec.select = select i1 %not.or.cond4.i, i1 true, i1 %3
  %_29.not.i = and i1 %_30.i, %spec.select
  %_2.i2 = inttoptr i64 %_36.i to ptr
  %spec.select6 = select i1 %_29.not.i, ptr %_2.i2, ptr null
  %spec.select7 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb8.i:                                            ; preds = %bb2.i.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_5.i.i = sdiv i64 %_12.i, %_6
  %_2.i = inttoptr i64 %_5.i.i to ptr
  br label %bb3

bb3:                                              ; preds = %bb8.i, %bb4.i, %bb5.i, %bb2.i.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ %_2.i, %bb8.i ], [ null, %bb4.i ], [ %spec.select6, %bb5.i ], [ null, %bb2.i.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 4, %bb8.i ], [ 257, %bb4.i ], [ %spec.select7, %bb5.i ], [ 257, %bb2.i.i ]
  %4 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %5 = insertvalue { i64, ptr } %4, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.div?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #7 {
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
    i64 -1, label %bb9.thread
    i64 0, label %bb2.i
  ]

bb2.i:                                            ; preds = %bb7
  %0 = icmp eq ptr %left.1, null
  br i1 %0, label %bb9.thread, label %bb11

bb6:                                              ; preds = %bb4
  %_17 = ptrtoint ptr %left.1 to i64
  %_12 = bitcast i64 %_17 to double
  %_19 = ptrtoint ptr %right.1 to i64
  %_13 = bitcast i64 %_19 to double
  %_20 = frem double %_12, %_13
  %div1 = fcmp oeq double %_20, 0.000000e+00
  br i1 %div1, label %bb9.thread, label %bb11

bb9:                                              ; preds = %bb7
  %_9 = ptrtoint ptr %left.1 to i64
  %_5.i = srem i64 %_9, %_10
  %1 = icmp eq i64 %_5.i, 0
  br i1 %1, label %bb9.thread, label %bb11

bb9.thread:                                       ; preds = %bb7, %bb2.i, %bb6, %bb9
  br label %bb11

bb11:                                             ; preds = %bb9.thread, %bb9, %bb6, %bb2.i, %bb4, %start
  %_0.sroa.0.1 = phi i64 [ 257, %start ], [ 257, %bb4 ], [ 2, %bb9.thread ], [ 1, %bb9 ], [ 1, %bb6 ], [ 1, %bb2.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.1, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.zero?"(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
start:
  %_3 = trunc i64 %value.0 to i16
  switch i16 %_3, label %bb6 [
    i16 4, label %bb3
    i16 5, label %bb2
  ]

bb3:                                              ; preds = %start
  %_4 = icmp eq ptr %value.1, null
  %spec.select.i = select i1 %_4, i64 2, i64 1
  br label %bb6

bb2:                                              ; preds = %start
  %_10 = ptrtoint ptr %value.1 to i64
  %0 = and i64 %_10, 9223372036854775807
  %_6 = icmp eq i64 %0, 0
  %spec.select.i1 = select i1 %_6, i64 2, i64 1
  br label %bb6

bb6:                                              ; preds = %start, %bb2, %bb3
  %_0.sroa.0.0 = phi i64 [ %spec.select.i1, %bb2 ], [ %spec.select.i, %bb3 ], [ 257, %start ]
  %1 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %2 = insertvalue { i64, ptr } %1, ptr null, 1
  ret { i64, ptr } %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_sitofp(i64 noundef %value) unnamed_addr #7 {
start:
  %_0 = sitofp i64 %value to double
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_fptosi(double noundef %value) unnamed_addr #7 {
start:
  %0 = fptosi double %value to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_and(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
start:
  %_0 = and i64 %rhs, %lhs
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_or(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
start:
  %_0 = or i64 %rhs, %lhs
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_llvm_xor(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #7 {
start:
  %_0 = xor i64 %rhs, %lhs
  ret i64 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fneg(double noundef %value) unnamed_addr #7 {
start:
  %_0 = fneg double %value
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fadd(double noundef %lhs, double noundef %rhs) unnamed_addr #7 {
start:
  %_0 = fadd double %lhs, %rhs
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fsub(double noundef %lhs, double noundef %rhs) unnamed_addr #7 {
start:
  %_0 = fsub double %lhs, %rhs
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fmul(double noundef %lhs, double noundef %rhs) unnamed_addr #7 {
start:
  %_0 = fmul double %lhs, %rhs
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_fdiv(double noundef %lhs, double noundef %rhs) unnamed_addr #7 {
start:
  %_0 = fdiv double %lhs, %rhs
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef double @evolve_llvm_frem(double noundef %lhs, double noundef %rhs) unnamed_addr #7 {
start:
  %_0 = frem double %lhs, %rhs
  ret double %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @new_string(ptr noalias noundef nonnull readonly align 1 %value.0, i64 noundef %value.1) unnamed_addr #7 {
start:
  %_5.i = shl i64 %value.1, 32
  %_3.i = or disjoint i64 %_5.i, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %value.0, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::string::use_str::<impl core::convert::From<evolve_inner_core::object::Object> for &str>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { ptr, i64 } @"_ZN17evolve_inner_core6string7use_str98_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$$RF$str$GT$4from17h5327544c4ffb5a5aE"(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #7 {
start:
  %_2.i.i = lshr i64 %value.0, 32
  %0 = insertvalue { ptr, i64 } poison, ptr %value.1, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %_2.i.i, 1
  ret { ptr, i64 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @from_mut_str_to_object(ptr noalias noundef nonnull align 1 %value.0, i64 noundef %value.1) unnamed_addr #7 {
start:
  %_5.i = shl i64 %value.1, 32
  %_3.i = or disjoint i64 %_5.i, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %value.0, 1
  ret { i64, ptr } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define { i64, ptr } @from_string_to_object(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #5 {
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
define void @"_ZN17evolve_inner_core6string7use_str112_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$alloc..string..String$GT$4from17h98b061f505ab6984E"(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([24 x i8]) align 8 dereferenceable(24) %_0, i64 noundef %value.0, ptr nocapture noundef readonly %value.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_2.i.i.i = lshr i64 %value.0, 32
  %0 = icmp ult i64 %value.0, 4294967296
  br i1 %0, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8e3e2ce70ef4a062E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i": ; preds = %start
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !55
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i.i = tail call noalias noundef ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4294967296) %_2.i.i.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !55
  %2 = icmp eq ptr %_0.i.i.i.i.i.i, null
  br i1 %2, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8e3e2ce70ef4a062E.exit"

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i"
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h891236e332f51b87E(i64 noundef 1, i64 range(i64 0, 4294967296) %_2.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_dcc16b9f4d8cb63715268f95336993e1) #28, !noalias !63
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8e3e2ce70ef4a062E.exit": ; preds = %start, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i"
  %_4.sroa.10.0.i.i = phi ptr [ %_0.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i" ], [ inttoptr (i64 1 to ptr), %start ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %_4.sroa.10.0.i.i, ptr nonnull readonly align 1 %value.1, i64 range(i64 0, 4294967296) %_2.i.i.i, i1 false), !noalias !64
  store i64 %_2.i.i.i, ptr %_0, align 8
  %_3.sroa.4.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %_3.sroa.4.0._0.sroa_idx, align 8
  %_3.sroa.5.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %_2.i.i.i, ptr %_3.sroa.5.0._0.sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
define noundef range(i64 -128, 128) i64 @evolve_string_bytes_cmp(ptr noalias nocapture noundef nonnull readonly align 1 %value1.0, i64 noundef %value1.1, ptr noalias nocapture noundef nonnull readonly align 1 %value2.0, i64 noundef %value2.1) unnamed_addr #10 {
start:
  %value1.1.value2.1 = tail call i64 @llvm.umin.i64(i64 %value1.1, i64 %value2.1)
  %_11 = sub i64 %value1.1, %value2.1
  %0 = tail call i32 @memcmp(ptr nonnull %value1.0, ptr nonnull %value2.0, i64 %value1.1.value2.1)
  %1 = sext i32 %0 to i64
  %2 = icmp eq i32 %0, 0
  %spec.store.select = select i1 %2, i64 %_11, i64 %1
  %_3 = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select, i64 0)
  %_0 = sext i8 %_3 to i64
  ret i64 %_0
}

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
define noundef zeroext i1 @evolve_string_bytes_eq(ptr noalias nocapture noundef nonnull readonly align 1 %value1.0, i64 noundef %value1.1, ptr noalias nocapture noundef nonnull readonly align 1 %value2.0, i64 noundef %value2.1) unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve_from_string(i32 noundef %len, ptr noundef %ptr) unnamed_addr #7 {
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
define { ptr, i64 } @"_ZN17evolve_inner_core6string51_$LT$impl$u20$evolve_inner_core..object..Object$GT$11extract_str17hbf9c44ff392f5b46E"(i64 noundef %self.0, ptr noundef %self.1) unnamed_addr #7 {
start:
  %_2.i = lshr i64 %self.0, 32
  %0 = insertvalue { ptr, i64 } poison, ptr %self.1, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %_2.i, 1
  ret { ptr, i64 } %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @test_evolve.from.ptr.tuple(i64 noundef %size, ptr noundef %ptr) unnamed_addr #7 {
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
  br i1 %1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i": ; preds = %bb18.i.i.i
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !65
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i.i = tail call noalias noundef align 8 ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_9.0.i.i.i.i.i, i64 noundef range(i64 1, 9) 8) #27, !noalias !65
  %3 = icmp eq ptr %_0.i.i.i.i.i.i, null
  br i1 %3, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i"

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i", %bb1
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i" ], [ 0, %bb1 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h891236e332f51b87E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_9.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_751b42ff20b2cb8b70982716aabdd11e) #28, !noalias !72
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdd63abfafcb14e16E.exit.i.i.i"
  %_276.i.i = icmp samesign ugt i64 %_6, 1
  br i1 %_276.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i.thread": ; preds = %bb18.i.i.i
  %_8.i.i10 = icmp eq i64 %_6, 0
  tail call void @llvm.assume(i1 %_8.i.i10)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit"

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i"
  %4 = add nsw i64 %_9.0.i.i.i.i.i, -16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %_0.i.i.i.i.i.i, i8 0, i64 %4, i1 false), !noalias !73
  %5 = getelementptr i8, ptr %_0.i.i.i.i.i.i, i64 %_9.0.i.i.i.i.i
  %scevgep.i.i = getelementptr i8, ptr %5, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i.i, i8 0, i64 16, i1 false), !noalias !73
  %6 = icmp samesign ult i64 %_6, 576460752303423488
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i.thread"
  %storemerge5.i.i3 = phi i1 [ %6, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE.exit" ], [ true, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i.thread" ], [ true, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i" ]
  %value.sroa.4.0.copyload.i = phi ptr [ %_0.i.i.i.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE.exit" ], [ inttoptr (i64 8 to ptr), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i.thread" ], [ %_0.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hda4edc211cecdcf6E.exit.i.i" ]
  tail call void @llvm.assume(i1 %storemerge5.i.i3)
  %_9.i = shl i64 %size, 32
  %_7.i = or disjoint i64 %_9.i, 15
  br label %bb6

bb6:                                              ; preds = %start, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit"
  %_0.sroa.3.0 = phi ptr [ %value.sroa.4.0.copyload.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit" ], [ @alloc_6f27fed333f105f471eaa5362a49c01f, %start ]
  %_0.sroa.0.0 = phi i64 [ %_7.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2a7561878a176929E.exit" ], [ 15, %start ]
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
  %_14 = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h31bb701b0d172f18E(i64 noundef %_5, i64 noundef 16) #27
  br i1 %_14, label %bb11.split, label %bb12.split

bb12.split:                                       ; preds = %bb1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
; call core::result::unwrap_failed
  call void @_ZN4core6result13unwrap_failed17h727108008d9f4c9bE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_8c7fee31967aac0ea9d7581c589770b2) #28
  unreachable

bb11.split:                                       ; preds = %bb1
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
; call __rustc::__rust_alloc_zeroed
  %_8 = tail call noundef align 16 ptr @_RNvCs691rhTbG0Ee_7___rustc19___rust_alloc_zeroed(i64 noundef %_5, i64 noundef 16) #27
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve.tuple.get(i64 noundef %self.0, ptr nocapture noundef readonly %self.1, i64 noundef %index) unnamed_addr #4 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write)
define noundef zeroext i1 @"evolve.tuple.put!"(i64 noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %index, i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #6 {
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
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs135_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h11d62bf7ece0f834E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %me.sroa.0.0.copyload.i = load i64, ptr %value, align 8, !alias.scope !76, !noalias !79
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !76, !noalias !79, !nonnull !3, !noundef !3
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !76, !noalias !79
  %_34.i = icmp ult i64 %me.sroa.5.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %_34.i)
  %_17.i = getelementptr inbounds nuw %"alloc::string::String", ptr %me.sroa.4.0.copyload.i, i64 %me.sroa.5.0.copyload.i
  %0 = icmp sgt i64 %me.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %0)
  %_15.i.i.i.i.i = mul i64 %me.sroa.0.0.copyload.i, 24
  %_44.not5.i.i.i.i.i.i.i.i = icmp eq i64 %me.sroa.5.0.copyload.i, 0
  br i1 %_44.not5.i.i.i.i.i.i.i.i, label %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i", label %bb11.i.i.i.i.i.i.i.i

bb11.i.i.i.i.i.i.i.i:                             ; preds = %start, %bb11.i.i.i.i.i.i.i.i
  %accum.sroa.4.07.i.i.i.i.i.i.i.i = phi ptr [ %_5.i.i.i.i.i.i.i.i.i.i, %bb11.i.i.i.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %start ]
  %_4946.i.i.i.i.i.i.i.i = phi ptr [ %_49.i.i.i.i.i.i.i.i, %bb11.i.i.i.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %start ]
  %tmp.sroa.2.0._46.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_4946.i.i.i.i.i.i.i.i, i64 8
  %tmp.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %tmp.sroa.2.0._46.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !81, !nonnull !3, !noundef !3
  %tmp.sroa.3.0._46.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_4946.i.i.i.i.i.i.i.i, i64 16
  %tmp.sroa.3.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %tmp.sroa.3.0._46.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !81
  %_49.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_4946.i.i.i.i.i.i.i.i, i64 24
  %_5.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %tmp.sroa.3.0.copyload.i.i.i.i.i.i.i.i, 32
  %_3.i.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %_5.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  store i64 %_3.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %accum.sroa.4.07.i.i.i.i.i.i.i.i, align 8, !noalias !103
  %1 = getelementptr inbounds nuw i8, ptr %accum.sroa.4.07.i.i.i.i.i.i.i.i, i64 8
  store ptr %tmp.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %1, align 8, !noalias !103
  %_5.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %accum.sroa.4.07.i.i.i.i.i.i.i.i, i64 16
  %_44.not.i.i.i.i.i.i.i.i = icmp eq ptr %_49.i.i.i.i.i.i.i.i, %_17.i
  br i1 %_44.not.i.i.i.i.i.i.i.i, label %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i.thread", label %bb11.i.i.i.i.i.i.i.i

"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i.thread": ; preds = %bb11.i.i.i.i.i.i.i.i
  br label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0751d18e718039a3E.exit.i.i.i.i.i"

"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i": ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  br label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0751d18e718039a3E.exit.i.i.i.i.i"

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0751d18e718039a3E.exit.i.i.i.i.i": ; preds = %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i", %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i.thread"
  %accum.sroa.4.0.lcssa.i.i.i.i.i.i.i.i4 = phi ptr [ %_5.i.i.i.i.i.i.i.i.i.i, %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i.thread" ], [ %me.sroa.4.0.copyload.i, %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E.exit.i.i.i.i.i" ]
  %_88.not.i.i.i.i.i = icmp eq i64 %me.sroa.0.0.copyload.i, 0
  br i1 %_88.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit, label %bb28.i.i.i.i.i

bb28.i.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0751d18e718039a3E.exit.i.i.i.i.i"
  %_90.i.i.i.i.i = and i64 %_15.i.i.i.i.i, -16
  %_40.not.i.i.i.i.i = icmp eq i64 %_15.i.i.i.i.i, %_90.i.i.i.i.i
  br i1 %_40.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit, label %bb31.i.i.i.i.i

bb31.i.i.i.i.i:                                   ; preds = %bb28.i.i.i.i.i
  %2 = icmp eq i64 %_90.i.i.i.i.i, 0
  br i1 %2, label %bb2.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hb0662c3f8aedc1bdE.exit.i.i.i.i.i"

bb2.i.i.i.i.i.i:                                  ; preds = %bb31.i.i.i.i.i
  %3 = icmp eq i64 %_15.i.i.i.i.i, 0
  br i1 %3, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit, label %bb11.i.i.i.i.i.i

bb11.i.i.i.i.i.i:                                 ; preds = %bb2.i.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCs691rhTbG0Ee_7___rustc14___rust_dealloc(ptr noundef nonnull %me.sroa.4.0.copyload.i, i64 noundef %_15.i.i.i.i.i, i64 noundef 8) #27, !noalias !109
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hb0662c3f8aedc1bdE.exit.i.i.i.i.i": ; preds = %bb31.i.i.i.i.i
; call __rustc::__rust_realloc
  %4 = tail call noundef align 8 ptr @_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc(ptr noundef nonnull %me.sroa.4.0.copyload.i, i64 noundef %_15.i.i.i.i.i, i64 noundef 8, i64 noundef %_90.i.i.i.i.i) #27, !noalias !109
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit, !prof !110

bb14.i.i.i.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hb0662c3f8aedc1bdE.exit.i.i.i.i.i"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h29c279d8237d34e5E(i64 noundef 8, i64 noundef %_90.i.i.i.i.i) #28, !noalias !109
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit: ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0751d18e718039a3E.exit.i.i.i.i.i", %bb28.i.i.i.i.i, %bb2.i.i.i.i.i.i, %bb11.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hb0662c3f8aedc1bdE.exit.i.i.i.i.i"
  %dst_buf.sroa.0.0.i.i.i.i.i = phi ptr [ %me.sroa.4.0.copyload.i, %bb28.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0751d18e718039a3E.exit.i.i.i.i.i" ], [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hb0662c3f8aedc1bdE.exit.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb11.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i.i.i.i ]
  %6 = ptrtoint ptr %accum.sroa.4.0.lcssa.i.i.i.i.i.i.i.i4 to i64
  %7 = ptrtoint ptr %me.sroa.4.0.copyload.i to i64
  %8 = sub nuw i64 %6, %7
  %_17.i.i = icmp sgt i64 %8, -1
  tail call void @llvm.assume(i1 %_17.i.i)
  %9 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !111
; call __rustc::__rust_alloc
  %_0.i.i.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !111
  %10 = icmp eq ptr %_0.i.i.i.i.i, null
  br i1 %10, label %bb2.i.i.i, label %"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h454b0b649245b76eE.exit", !prof !25

bb2.i.i.i:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h29c279d8237d34e5E(i64 noundef 8, i64 noundef 32) #28, !noalias !111
  unreachable

"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h454b0b649245b76eE.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E.exit
  %11 = lshr exact i64 %8, 4
  %dst_cap14.i.i.i.i.i = lshr i64 %_15.i.i.i.i.i, 4
  store i64 %dst_cap14.i.i.i.i.i, ptr %_0.i.i.i.i.i, align 8, !noalias !118
  %_2.sroa.4.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i.i, i64 8
  store ptr %dst_buf.sroa.0.0.i.i.i.i.i, ptr %_2.sroa.4.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !118
  %_2.sroa.5.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i.i, i64 16
  store i64 0, ptr %_2.sroa.5.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !118
  %_2.sroa.6.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0.i.i.i.i.i, i64 24
  store i64 %11, ptr %_2.sroa.6.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !118
  %12 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i.i.i, 1
  ret { i64, ptr } %12
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::vec::Vec<evolve_inner_core::object::Object>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h454b0b649245b76eE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %me.sroa.0.0.copyload.i = load i64, ptr %value, align 8, !alias.scope !119, !noalias !122
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !119, !noalias !122, !nonnull !3, !noundef !3
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %value, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !119, !noalias !122
  %_17.i = icmp ult i64 %me.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %_17.i)
  %0 = icmp sgt i64 %me.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %0)
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !124
; call __rustc::__rust_alloc
  %_0.i.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !124
  %2 = icmp eq ptr %_0.i.i.i.i, null
  br i1 %2, label %bb2.i.i, label %"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E.exit", !prof !25

bb2.i.i:                                          ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h29c279d8237d34e5E(i64 noundef 8, i64 noundef 32) #28, !noalias !124
  unreachable

"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E.exit": ; preds = %start
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
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !129
; call __rustc::__rust_alloc
  %_0.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !129
  %1 = icmp eq ptr %_0.i.i.i, null
  br i1 %1, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17h25a694104f40c5fcE.exit, !prof !25

bb2.i:                                            ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h29c279d8237d34e5E(i64 noundef 8, i64 noundef 32) #28, !noalias !129
  unreachable

_ZN5alloc5alloc15exchange_malloc17h25a694104f40c5fcE.exit: ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %value, i64 32, i1 false)
  %2 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i, 1
  ret { i64, ptr } %2
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; <core::ffi::c_str::CStr as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN59_$LT$core..ffi..c_str..CStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e24ef226e1e6739E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hde631ae64c57a835E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h92a9aa4f3aa04d0bE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h26299beddca396b9E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h438399c07e2161f1E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h6d8b5e17e307a256E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h897dea8a982c9770E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heae17e31cadbc382E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17hfdb3aac080b97f7cE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17haf9a59fdde49fc3aE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::fmt::Formatter::write_str
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf87901323e3d7ac9E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #14

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking5panic17h4a11c031239f36a8E(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #15

; core::alloc::layout::Layout::is_size_align_valid
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h31bb701b0d172f18E(i64 noundef, i64 noundef) unnamed_addr #0

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core6result13unwrap_failed17h727108008d9f4c9bE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(32), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #15

; core::fmt::Formatter::debug_struct
; Function Attrs: nounwind nonlazybind
declare void @_ZN4core3fmt9Formatter12debug_struct17h6c85e2ff3306615eE(ptr dead_on_unwind noalias nocapture noundef writable sret([16 x i8]) align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; core::fmt::builders::DebugStruct::field
; Function Attrs: nounwind nonlazybind
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h0c93207c4d9e6aeaE(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(32)) unnamed_addr #0

; core::fmt::builders::DebugStruct::finish
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17heb12b5c3a04a811fE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; core::fmt::pointer_fmt_inner
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17hbc08c16cf0101593E(i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc7raw_vec12handle_error17h891236e332f51b87E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #16

; alloc::alloc::handle_alloc_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc5alloc18handle_alloc_error17h29c279d8237d34e5E(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; __rustc::__rust_alloc_zeroed
; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0)
declare noalias noundef ptr @_RNvCs691rhTbG0Ee_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #17

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0)
declare noalias noundef ptr @_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #18

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free")
declare void @_RNvCs691rhTbG0Ee_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #19

; __rustc::__rust_realloc
; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3)
declare noalias noundef ptr @_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #20

; core::fmt::float::<impl core::fmt::Debug for f64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h328534903a0a7966E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.scmp.i8.i64(i64, i64) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ucmp.i8.i64(i64, i64) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

attributes #0 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: none) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nonlazybind "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0 (6b00bc388 2025-06-23)"}
!3 = !{}
!4 = !{i64 1}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h4e59b13da8e4b7dfE: %self"}
!8 = distinct !{!8, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h4e59b13da8e4b7dfE"}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h043e57499ee001a9E: %self"}
!12 = distinct !{!12, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17h043e57499ee001a9E"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE: %_0"}
!15 = distinct !{!15, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hda4fc522056fddbaE"}
!16 = !{i64 0, i64 2}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1343a496ee5eed85E: %_0"}
!19 = distinct !{!19, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1343a496ee5eed85E"}
!20 = distinct !{!20, !21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E: argument 0"}
!21 = distinct !{!21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E: %x"}
!24 = distinct !{!24, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E"}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h3736cddd21b33ef0E: %self"}
!28 = distinct !{!28, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h3736cddd21b33ef0E"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE: %self"}
!31 = distinct !{!31, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17h4e3670979e8a99dbE: %self"}
!34 = distinct !{!34, !"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17h4e3670979e8a99dbE"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E: %self"}
!37 = distinct !{!37, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E: %other"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E: %self"}
!42 = distinct !{!42, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h449e6621e13aba63E: %other"}
!45 = !{!41, !44}
!46 = !{!"branch_weights", i32 1, i32 4001}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE: %self"}
!49 = distinct !{!49, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h649317eb0d550a6fE"}
!50 = distinct !{!50, !51, !"evolve_array_get: %array"}
!51 = distinct !{!51, !"evolve_array_get"}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = !{!"branch_weights", i32 127, i32 255873}
!54 = !{!"branch_weights", i32 2002, i32 2000}
!55 = !{!56, !58, !60, !62}
!56 = distinct !{!56, !57, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1343a496ee5eed85E: %_0"}
!57 = distinct !{!57, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1343a496ee5eed85E"}
!58 = distinct !{!58, !59, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E: argument 0"}
!59 = distinct !{!59, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E"}
!60 = distinct !{!60, !61, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8e3e2ce70ef4a062E: %_0"}
!61 = distinct !{!61, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8e3e2ce70ef4a062E"}
!62 = distinct !{!62, !61, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8e3e2ce70ef4a062E: %s.0"}
!63 = !{!60, !62}
!64 = !{!60}
!65 = !{!66, !68, !70}
!66 = distinct !{!66, !67, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1343a496ee5eed85E: %_0"}
!67 = distinct !{!67, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1343a496ee5eed85E"}
!68 = distinct !{!68, !69, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E: argument 0"}
!69 = distinct !{!69, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4e612fad69003849E"}
!70 = distinct !{!70, !71, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE: %_0"}
!71 = distinct !{!71, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2046a00b453e81cfE"}
!72 = !{!70}
!73 = !{!74, !70}
!74 = distinct !{!74, !75, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h6569d12d35b9a734E: %self"}
!75 = distinct !{!75, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h6569d12d35b9a734E"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ab23728f4be9ae3E: %self"}
!78 = distinct !{!78, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ab23728f4be9ae3E"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ab23728f4be9ae3E: %_0"}
!81 = !{!82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!82 = distinct !{!82, !83, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5432b96a68486b0cE: %self"}
!83 = distinct !{!83, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5432b96a68486b0cE"}
!84 = distinct !{!84, !85, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7962a46b2d1f0797E: %self"}
!85 = distinct !{!85, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7962a46b2d1f0797E"}
!86 = distinct !{!86, !87, !"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E: %self"}
!87 = distinct !{!87, !"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hc8bec7e78f6e5633E"}
!88 = distinct !{!88, !89, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17heb06048d92b57b44E: %vec"}
!89 = distinct !{!89, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17heb06048d92b57b44E"}
!90 = distinct !{!90, !89, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17heb06048d92b57b44E: %iterator"}
!91 = distinct !{!91, !92, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17hb96d7bfcc912c933E: %_0"}
!92 = distinct !{!92, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17hb96d7bfcc912c933E"}
!93 = distinct !{!93, !92, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17hb96d7bfcc912c933E: %_1"}
!94 = distinct !{!94, !95, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17hb1e6c1741596c445E: %_0"}
!95 = distinct !{!95, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17hb1e6c1741596c445E"}
!96 = distinct !{!96, !95, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17hb1e6c1741596c445E: %iterator"}
!97 = distinct !{!97, !98, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h643da897012ea740E: %_0"}
!98 = distinct !{!98, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h643da897012ea740E"}
!99 = distinct !{!99, !98, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h643da897012ea740E: %iter"}
!100 = distinct !{!100, !101, !"_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E: %_0"}
!101 = distinct !{!101, !"_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E"}
!102 = distinct !{!102, !101, !"_ZN4core4iter6traits8iterator8Iterator7collect17h52de2d0c9ec9c5f2E: %self"}
!103 = !{!104, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!104 = distinct !{!104, !105, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hedfba7999f4fb656E: %elt"}
!105 = distinct !{!105, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hedfba7999f4fb656E"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hb088aac164b32435E: %_1.0"}
!108 = distinct !{!108, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hb088aac164b32435E"}
!109 = !{!88, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!110 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!111 = !{!112, !114, !116}
!112 = distinct !{!112, !113, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E: %x"}
!113 = distinct !{!113, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E"}
!114 = distinct !{!114, !115, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E: %value"}
!115 = distinct !{!115, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E"}
!116 = distinct !{!116, !117, !"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h454b0b649245b76eE: %value"}
!117 = distinct !{!117, !"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h454b0b649245b76eE"}
!118 = !{!116}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h48f0ae89c5b0a8a8E: %self"}
!121 = distinct !{!121, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h48f0ae89c5b0a8a8E"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h48f0ae89c5b0a8a8E: %_0"}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E: %x"}
!126 = distinct !{!126, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E"}
!127 = distinct !{!127, !128, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E: %value"}
!128 = distinct !{!128, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hf192c9bdce0797e2E"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E: %x"}
!131 = distinct !{!131, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h2f24437fea267650E"}
