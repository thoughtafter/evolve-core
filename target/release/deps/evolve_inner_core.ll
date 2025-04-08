; ModuleID = 'evolve_inner_core.35225115103e9f60-cgu.0'
source_filename = "evolve_inner_core.35225115103e9f60-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"object::Object" = type { i64, ptr }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i64 }
%"alloc::raw_vec::RawVec<u8>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<u8>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<u8>" = type {}

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h823eab92950adcf0E" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@alloc_de71e1c382d9e3713aeadf50ce914196 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/05f9846f893b09a1be1fc8560e33fc3c815cfecb/library/alloc/src/slice.rs" }>, align 1
@alloc_131754877679536c458328a297475715 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_de71e1c382d9e3713aeadf50ce914196, [16 x i8] c"J\00\00\00\00\00\00\00\A2\00\00\00\19\00\00\00" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_477d6fd19596379e27b9bd4358550877 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"LayoutError" }>, align 1
@alloc_204a7f2109033cc676c2fc41bdad3753 = private unnamed_addr constant <{ [30 x i8] }> <{ [30 x i8] c"evolve_inner_core/src/array.rs" }>, align 1
@alloc_19e0d9ae61daa6b8e2f1aeb8b0710cdd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_204a7f2109033cc676c2fc41bdad3753, [16 x i8] c"\1E\00\00\00\00\00\00\00\17\00\00\00\11\00\00\00" }>, align 8
@alloc_c21ab44a88bfab6885db655a76892ac7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_204a7f2109033cc676c2fc41bdad3753, [16 x i8] c"\1E\00\00\00\00\00\00\00!\00\00\00\0B\00\00\00" }>, align 8
@alloc_e9164108e3a8c437bd8ee95ca79fdb9f = private unnamed_addr constant <{ [16 x i8] }> zeroinitializer, align 8
@alloc_1a3b627145dc0fe65f658cb38c278359 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"Object" }>, align 1
@vtable.1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b5de3cf7f5bba31E" }>, align 8
@alloc_a8456fb127012b2b67e2f034dd8cd60c = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"NULL" }>, align 1
@alloc_5f51429af5bff0c26097b04b86db779e = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"FALSE" }>, align 1
@alloc_68f2a445488f20082ceefa0ab63c19b2 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"TRUE" }>, align 1
@alloc_f20ab71f06765100d92312e3a01bb989 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"APP" }>, align 1
@vtable.2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h54d1ea354f608b2cE" }>, align 8
@alloc_250b91d3432a6fe0c6c420b70e341432 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"argc" }>, align 1
@alloc_e4771d6525973485a812fe783cd28050 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"POINTER" }>, align 1
@vtable.3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hec6afe0b510b1f7aE" }>, align 8
@alloc_0869314c06f5536ea9cfbda8e3d75f40 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"STRING" }>, align 1
@vtable.4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17he1596f5a7334ee1dE" }>, align 8
@alloc_f4db005b851b7259d0b6ded255335a8c = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"I64" }>, align 1
@vtable.5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN73_$LT$ordered_float..OrderedFloat$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d2a05816459e11E" }>, align 8
@alloc_82b1bf185e1b461c8b8241303ddf0563 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"F64" }>, align 1
@alloc_22f0e91223dabf1bef5f103b8560c3f1 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"TUPLE" }>, align 1
@alloc_a2e5f6be2a03b9f5ed256baff3399a84 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"size" }>, align 1
@vtable.6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN17evolve_inner_core6object5debug80_$LT$impl$u20$core..fmt..Debug$u20$for$u20$evolve_inner_core..object..Object$GT$3fmt17h578f773e6f96baa1E" }>, align 8
@alloc_ac368d9a707b52d21ed3ba3af2bad0d5 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"[1]" }>, align 1
@alloc_5b8c386f77829feb42882cd52d13ac4a = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"[2]" }>, align 1
@alloc_3fb291eefbcf3fa3c1d2137966dc6e7c = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"CLOSURE" }>, align 1
@vtable.7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u16$GT$3fmt17h4cbbd4ac25551366E" }>, align 8
@alloc_63744475ac4d11caf5a224426ca4a84c = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"class_id" }>, align 1
@alloc_a6c9073709f4dc3faf09868fececa07c = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"aux" }>, align 1
@alloc_eb15813ccc20d20673372177ea4f1c88 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"ptr" }>, align 1
@alloc_50981fdc3d28c727f94146500adf1421 = private unnamed_addr constant <{ [41 x i8] }> <{ [41 x i8] c"assertion failed: this.is_intrinsic_win()" }>, align 1
@alloc_3c256bd16f1162804612e53b4407e585 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"evolve_inner_core/src/intrinsic/loops.rs" }>, align 1
@alloc_332024b46f60319414f831d326a815b7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3c256bd16f1162804612e53b4407e585, [16 x i8] c"(\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8
@alloc_6f27fed333f105f471eaa5362a49c01f = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@alloc_40ec68d6228a8f6da03af3939cc8bd3e = private unnamed_addr constant <{ [30 x i8] }> <{ [30 x i8] c"evolve_inner_core/src/tuple.rs" }>, align 1
@alloc_751b42ff20b2cb8b70982716aabdd11e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_40ec68d6228a8f6da03af3939cc8bd3e, [16 x i8] c"\1E\00\00\00\00\00\00\00B\00\00\00\15\00\00\00" }>, align 8
@alloc_b624b7e2d3ecf9b99322b14ca7f68035 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_40ec68d6228a8f6da03af3939cc8bd3e, [16 x i8] c"\1E\00\00\00\00\00\00\00Q\00\00\00C\00\00\00" }>, align 8

; <&T as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hec6afe0b510b1f7aE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !3, !align !4, !noundef !3
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_3.1 = load i64, ptr %0, align 8, !noundef !3
; call <core::ffi::c_str::CStr as core::fmt::Debug>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN59_$LT$core..ffi..c_str..CStr$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3563c6641920b06E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  ret i1 %_0
}

; core::fmt::num::<impl core::fmt::Debug for i64>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i64$GT$3fmt17he1596f5a7334ee1dE"(ptr noalias noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %f, i64 36
  %_4 = load i32, ptr %0, align 4, !noundef !3
  %_3 = and i32 %_4, 16
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for i64>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h997680046174c8a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hf837af851e168251E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for i64>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0c542a8f9da7fe57E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; core::fmt::num::<impl core::fmt::Debug for u16>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u16$GT$3fmt17h4cbbd4ac25551366E"(ptr noalias noundef readonly align 2 dereferenceable(2) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %f, i64 36
  %_4 = load i32, ptr %0, align 4, !noundef !3
  %_3 = and i32 %_4, 16
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for u16>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hd124dd2e25208af6E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h8924e7690efad5b2E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for u16>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h01b67a4fa9478552E"(ptr noalias noundef nonnull readonly align 2 dereferenceable(2) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; core::fmt::num::<impl core::fmt::Debug for u32>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h54d1ea354f608b2cE"(ptr noalias noundef readonly align 4 dereferenceable(4) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %f, i64 36
  %_4 = load i32, ptr %0, align 4, !noundef !3
  %_3 = and i32 %_4, 16
  %1 = icmp eq i32 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_5 = and i32 %_4, 32
  %2 = icmp eq i32 %_5, 0
  br i1 %2, label %bb4, label %bb3

bb1:                                              ; preds = %start
; call core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
  %3 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17hdea4f7a61c8f3e4bE"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb4:                                              ; preds = %bb2
; call core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
  %4 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h561d0b7e753cffb3E"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb3:                                              ; preds = %bb2
; call core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
  %5 = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17hf4f159acbc51d950E"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  br label %bb6

bb6:                                              ; preds = %bb4, %bb3, %bb1
  %_0.sroa.0.0.in = phi i1 [ %4, %bb4 ], [ %5, %bb3 ], [ %3, %bb1 ]
  ret i1 %_0.sroa.0.0.in
}

; <*const T as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b5de3cf7f5bba31E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %self1 = load ptr, ptr %self, align 8, !noundef !3
  %_3 = ptrtoint ptr %self1 to i64
; call core::fmt::pointer_fmt_inner
  %_0 = tail call noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17h76f21e636b0fba41E(i64 noundef %_3, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  ret i1 %_0
}

; alloc::collections::vec_deque::VecDeque<T,A>::grow
; Function Attrs: noinline nounwind nonlazybind
define void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h106fdc5cd5a1c0dcE"(ptr noalias nocapture noundef align 8 dereferenceable(32) %self, ptr noalias noundef readonly align 8 dereferenceable(24) %0) unnamed_addr #2 {
start:
  %self1 = load i64, ptr %self, align 8, !range !5, !noundef !3
; call alloc::raw_vec::RawVec<T,A>::grow_one
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41245f83b65beb61E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %self, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %self1.i = load i64, ptr %self, align 8, !range !5, !alias.scope !6, !noundef !3
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %_5.i = load i64, ptr %1, align 8, !alias.scope !6, !noundef !3
  %2 = getelementptr inbounds i8, ptr %self, i64 24
  %_7.i = load i64, ptr %2, align 8, !alias.scope !6, !noundef !3
  %_6.i = sub i64 %self1, %_7.i
  %_4.not.i = icmp ugt i64 %_5.i, %_6.i
  br i1 %_4.not.i, label %bb2.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h6a4ad56db5752409E.exit"

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
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  %_93.i = load ptr, ptr %3, align 8, !alias.scope !6, !nonnull !3, !noundef !3
  %_73.i = getelementptr inbounds %"object::Object", ptr %_93.i, i64 %_5.i
  %dst.i = getelementptr inbounds %"object::Object", ptr %_93.i, i64 %new_head.i
  %4 = shl i64 %head_len.i, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %dst.i, ptr nonnull align 8 %_73.i, i64 %4, i1 false), !noalias !6
  store i64 %new_head.i, ptr %1, align 8, !alias.scope !6
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h6a4ad56db5752409E.exit"

bb4.i:                                            ; preds = %bb2.i
  %5 = getelementptr inbounds i8, ptr %self, i64 8
  %_53.i = load ptr, ptr %5, align 8, !alias.scope !6, !nonnull !3, !noundef !3
  %dst2.i = getelementptr inbounds %"object::Object", ptr %_53.i, i64 %self1
  %6 = shl i64 %tail_len.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %dst2.i, ptr nonnull align 8 %_53.i, i64 %6, i1 false), !noalias !6
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h6a4ad56db5752409E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h6a4ad56db5752409E.exit": ; preds = %start, %bb6.i, %bb4.i
  ret void
}

; alloc::raw_vec::finish_grow
; Function Attrs: cold nounwind nonlazybind
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h4046bfdc1581c237E(ptr dead_on_unwind noalias nocapture noundef writable writeonly align 8 dereferenceable(24) %_0, i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1, ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %current_memory) unnamed_addr #3 {
start:
  %2 = getelementptr inbounds i8, ptr %current_memory, i64 8
  %3 = load i64, ptr %2, align 8, !range !9, !noundef !3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %ptr = load ptr, ptr %current_memory, align 8, !nonnull !3, !noundef !3
  %5 = getelementptr inbounds i8, ptr %current_memory, i64 16
  %6 = load i64, ptr %5, align 8, !noundef !3
  %cond = icmp eq i64 %3, %0
  tail call void @llvm.assume(i1 %cond)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %bb2.i.i, label %bb3.i.i

bb2.i.i:                                          ; preds = %bb3
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %bb2.i.i.i, label %bb4.i.i.i

bb2.i.i.i:                                        ; preds = %bb2.i.i
  %data.i.i.i = getelementptr i8, ptr null, i64 %0
  br label %bb6

bb4.i.i.i:                                        ; preds = %bb2.i.i
  %9 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %_0.i.i.i.i = tail call noalias noundef ptr @__rust_alloc(i64 noundef %1, i64 noundef %0) #33
  br label %bb6

bb3.i.i:                                          ; preds = %bb3
  %cond.i.i = icmp ule i64 %6, %1
  tail call void @llvm.assume(i1 %cond.i.i)
  %10 = tail call noundef ptr @__rust_realloc(ptr noundef nonnull %ptr, i64 noundef %6, i64 noundef %0, i64 noundef %1) #33
  br label %bb6

bb2:                                              ; preds = %start
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %bb2.i.i11, label %bb4.i.i9

bb2.i.i11:                                        ; preds = %bb2
  %data.i.i = getelementptr i8, ptr null, i64 %0
  br label %bb6

bb4.i.i9:                                         ; preds = %bb2
  %12 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %_0.i.i.i = tail call noalias noundef ptr @__rust_alloc(i64 noundef %1, i64 noundef %0) #33
  br label %bb6

bb6:                                              ; preds = %bb4.i.i9, %bb2.i.i11, %bb3.i.i, %bb4.i.i.i, %bb2.i.i.i
  %_0.sroa.0.0.i.i10.pn = phi ptr [ %10, %bb3.i.i ], [ %data.i.i.i, %bb2.i.i.i ], [ %_0.i.i.i.i, %bb4.i.i.i ], [ %data.i.i, %bb2.i.i11 ], [ %_0.i.i.i, %bb4.i.i9 ]
  %13 = icmp eq ptr %_0.sroa.0.0.i.i10.pn, null
  %14 = inttoptr i64 %0 to ptr
  %spec.select = select i1 %13, ptr %14, ptr %_0.sroa.0.0.i.i10.pn
  %spec.select4 = zext i1 %13 to i64
  %15 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %spec.select, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %_0, i64 16
  store i64 %1, ptr %16, align 8
  store i64 %spec.select4, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nounwind nonlazybind
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41245f83b65beb61E"(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, ptr noalias noundef readonly align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_26.i = alloca [24 x i8], align 8
  %self6.i = alloca [24 x i8], align 8
  %self1 = load i64, ptr %self, align 8, !range !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %_33.i = add nuw i64 %self1, 1
  %v112.i = shl nuw i64 %self1, 1
  %_0.sroa.0.0.sroa.speculated.i.i = tail call noundef i64 @llvm.umax.i64(i64 %_33.i, i64 %v112.i)
  %_0.sroa.0.0.sroa.speculated.i41.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.sroa.speculated.i.i, i64 4)
  %_9.0.i.i.i = shl i64 %_0.sroa.0.0.sroa.speculated.i41.i, 4
  %_9.1.i.i.i = icmp ugt i64 %_0.sroa.0.0.sroa.speculated.i.i, 1152921504606846975
  %_14.i.i.i = icmp ugt i64 %_9.0.i.i.i, 9223372036854775800
  %1 = or i1 %_9.1.i.i.i, %_14.i.i.i
  br i1 %1, label %bb2, label %bb22.i

bb22.i:                                           ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26.i), !noalias !10
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  %3 = icmp eq i64 %self1, 0
  br i1 %3, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E.exit.i", label %bb4.i.i

bb4.i.i:                                          ; preds = %bb22.i
  %self.val40.i = load ptr, ptr %2, align 8, !alias.scope !10, !nonnull !3, !noundef !3
  %4 = shl nuw i64 %self1, 4
  store ptr %self.val40.i, ptr %_26.i, align 8, !alias.scope !13, !noalias !10
  %_15.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds i8, ptr %_26.i, i64 16
  store i64 %4, ptr %_15.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !13, !noalias !10
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E.exit.i": ; preds = %bb4.i.i, %bb22.i
  %.sink.i.i = phi i64 [ 8, %bb4.i.i ], [ 0, %bb22.i ]
  %5 = getelementptr inbounds i8, ptr %_26.i, i64 8
  store i64 %.sink.i.i, ptr %5, align 8, !alias.scope !13, !noalias !10
; call alloc::raw_vec::finish_grow
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h4046bfdc1581c237E(ptr noalias nocapture noundef nonnull align 8 dereferenceable(24) %self6.i, i64 noundef 8, i64 noundef %_9.0.i.i.i, ptr noalias nocapture noundef nonnull readonly align 8 dereferenceable(24) %_26.i) #33, !noalias !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26.i), !noalias !10
  %_53.i = load i64, ptr %self6.i, align 8, !range !16, !noalias !10, !noundef !3
  %trunc.i = trunc nuw i64 %_53.i to i1
  %6 = getelementptr inbounds i8, ptr %self6.i, i64 8
  br i1 %trunc.i, label %bb23.i, label %bb3

bb23.i:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E.exit.i"
  %e.0.i = load i64, ptr %6, align 8, !range !9, !noalias !10, !noundef !3
  %7 = getelementptr inbounds i8, ptr %self6.i, i64 16
  %e.1.i = load i64, ptr %7, align 8, !noalias !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  br label %bb2

bb2:                                              ; preds = %bb23.i, %start
  %_0.sroa.6.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb23.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb23.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5290ea7eaad4c986E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) #34
  unreachable

bb3:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E.exit.i"
  %v.016.i = load ptr, ptr %6, align 8, !noalias !10, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self6.i), !noalias !10
  store ptr %v.016.i, ptr %2, align 8, !alias.scope !10
  store i64 %_0.sroa.0.0.sroa.speculated.i41.i, ptr %self, align 8, !alias.scope !10
  ret void
}

; <core::alloc::layout::LayoutError as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h823eab92950adcf0E"(ptr noalias nocapture nonnull readonly align 1 %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
; call core::fmt::Formatter::write_str
  %_0 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haa15194e1d29df39E(ptr noalias noundef nonnull align 8 dereferenceable(64) %f, ptr noalias noundef nonnull readonly align 1 @alloc_477d6fd19596379e27b9bd4358550877, i64 noundef 11) #33
  ret i1 %_0
}

; <ordered_float::OrderedFloat<T> as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nounwind nonlazybind
define internal noundef zeroext i1 @"_ZN73_$LT$ordered_float..OrderedFloat$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d2a05816459e11E"(ptr noalias noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
; call core::fmt::float::<impl core::fmt::Debug for f64>::fmt
  %_0 = tail call noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h572c919ce4672795E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull align 8 dereferenceable(64) %f) #33
  ret i1 %_0
}

; Function Attrs: alwaysinline nounwind nonlazybind
define noalias noundef align 8 dereferenceable(32) ptr @evolve_array_literal(i64 noundef %size) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %size, i64 8)
  %_9.0.i.i.i.i = shl i64 %_0.sroa.0.0.sroa.speculated.i, 4
  %_9.1.i.i.i.i = icmp ugt i64 %size, 1152921504606846975
  %_14.i.i.i.i = icmp ugt i64 %_9.0.i.i.i.i, 9223372036854775800
  %0 = or i1 %_9.1.i.i.i.i, %_14.i.i.i.i
  br i1 %0, label %bb3.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i": ; preds = %start
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !17
  %_0.i.i.i.i.i = tail call noalias noundef align 8 ptr @__rust_alloc(i64 noundef %_9.0.i.i.i.i, i64 noundef 8) #33, !noalias !17
  %2 = icmp eq ptr %_0.i.i.i.i.i, null
  br i1 %2, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE.exit"

bb3.i:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i", %start
  %_4.sroa.4.0.i = phi i64 [ 0, %start ], [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i" ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5290ea7eaad4c986E(i64 noundef %_4.sroa.4.0.i, i64 %_9.0.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_19e0d9ae61daa6b8e2f1aeb8b0710cdd) #34
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i"
  %3 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !22
  %_0.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @__rust_alloc(i64 noundef 32, i64 noundef 8) #33, !noalias !22
  %4 = icmp eq ptr %_0.i.i.i, null
  br i1 %4, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17h2c8a02dcfd7e37fdE.exit

bb2.i:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE.exit"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E(i64 noundef 8, i64 noundef 32) #34, !noalias !22
  unreachable

_ZN5alloc5alloc15exchange_malloc17h2c8a02dcfd7e37fdE.exit: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE.exit"
  store i64 %_0.sroa.0.0.sroa.speculated.i, ptr %_0.i.i.i, align 8
  %array.sroa.2.0._0.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %_0.i.i.i, i64 8
  store ptr %_0.i.i.i.i.i, ptr %array.sroa.2.0._0.i.i.i.sroa_idx, align 8
  %array.sroa.3.0._0.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %_0.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %array.sroa.3.0._0.i.i.i.sroa_idx, i8 0, i64 16, i1 false)
  ret ptr %_0.i.i.i
}

; Function Attrs: alwaysinline nounwind nonlazybind
define void @evolve_array_inbounds_push(ptr noalias nocapture noundef align 8 dereferenceable(32) %array, i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %0 = getelementptr inbounds i8, ptr %array, i64 24
  %_8.i = load i64, ptr %0, align 8, !alias.scope !25, !noundef !3
  %self1.i = load i64, ptr %array, align 8, !range !5, !alias.scope !25, !noundef !3
  %_3.i = icmp eq i64 %_8.i, %self1.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17he5179bc56c5bffdbE.exit"

bb1.i:                                            ; preds = %start
; call alloc::collections::vec_deque::VecDeque<T,A>::grow
  tail call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h106fdc5cd5a1c0dcE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %array, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c21ab44a88bfab6885db655a76892ac7) #33
  %idx.pre.i = load i64, ptr %0, align 8, !alias.scope !25
  %self3.pre.i = load i64, ptr %array, align 8, !range !5, !alias.scope !25
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17he5179bc56c5bffdbE.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17he5179bc56c5bffdbE.exit": ; preds = %start, %bb1.i
  %self3.i = phi i64 [ %self3.pre.i, %bb1.i ], [ %self1.i, %start ]
  %idx.i = phi i64 [ %idx.pre.i, %bb1.i ], [ %_8.i, %start ]
  %1 = getelementptr inbounds i8, ptr %array, i64 16
  %idx2.i = load i64, ptr %1, align 8, !alias.scope !25, !noundef !3
  %logical_index.i = add i64 %idx2.i, %idx.i
  %_21.not.i = icmp ult i64 %logical_index.i, %self3.i
  %2 = select i1 %_21.not.i, i64 0, i64 %self3.i
  %off.sroa.0.0.i = sub i64 %logical_index.i, %2
  %3 = getelementptr inbounds i8, ptr %array, i64 8
  %_24.i = load ptr, ptr %3, align 8, !alias.scope !25, !nonnull !3, !noundef !3
  %_22.i = getelementptr inbounds %"object::Object", ptr %_24.i, i64 %off.sroa.0.0.i
  store i64 %value.0, ptr %_22.i, align 8, !noalias !25
  %4 = getelementptr inbounds i8, ptr %_22.i, i64 8
  store ptr %value.1, ptr %4, align 8, !noalias !25
  %5 = add i64 %idx.i, 1
  store i64 %5, ptr %0, align 8, !alias.scope !25
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define { i64, ptr } @evolve_array_get(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array, i64 noundef %index) unnamed_addr #5 {
start:
  %adjusted_index = add i64 %index, -1
  %0 = getelementptr inbounds i8, ptr %array, i64 24
  %_4.i = load i64, ptr %0, align 8, !alias.scope !28, !noundef !3
  %_3.i = icmp ugt i64 %_4.i, %adjusted_index
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit"

bb1.i:                                            ; preds = %start
  %1 = getelementptr inbounds i8, ptr %array, i64 16
  %idx1.i = load i64, ptr %1, align 8, !alias.scope !28, !noundef !3
  %logical_index.i = add i64 %idx1.i, %adjusted_index
  %self2.i = load i64, ptr %array, align 8, !range !5, !alias.scope !28, !noundef !3
  %_17.not.i = icmp ult i64 %logical_index.i, %self2.i
  %2 = select i1 %_17.not.i, i64 0, i64 %self2.i
  %idx.sroa.0.0.i = sub i64 %logical_index.i, %2
  %3 = getelementptr inbounds i8, ptr %array, i64 8
  %_18.i = load ptr, ptr %3, align 8, !alias.scope !28, !nonnull !3, !noundef !3
  %_7.i = getelementptr inbounds %"object::Object", ptr %_18.i, i64 %idx.sroa.0.0.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit": ; preds = %start, %bb1.i
  %_0.sroa.0.0.i = phi ptr [ %_7.i, %bb1.i ], [ null, %start ]
  %4 = icmp eq ptr %_0.sroa.0.0.i, null
  %alloc_e9164108e3a8c437bd8ee95ca79fdb9f. = select i1 %4, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_0.sroa.0.0.i
  %_0.0 = load i64, ptr %alloc_e9164108e3a8c437bd8ee95ca79fdb9f., align 8, !noundef !3
  %5 = getelementptr inbounds i8, ptr %alloc_e9164108e3a8c437bd8ee95ca79fdb9f., i64 8
  %_0.1 = load ptr, ptr %5, align 8, !noundef !3
  %6 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.1, 1
  ret { i64, ptr } %7
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read)
define noundef i64 @evolve_array_size(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %array) unnamed_addr #6 {
start:
  %0 = getelementptr inbounds i8, ptr %array, i64 24
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
  %_11.i7 = getelementptr inbounds i8, ptr %closure_data_ptr, i64 16
  store i64 256, ptr %_11.i7, align 8
  %0 = getelementptr inbounds i8, ptr %closure_data_ptr, i64 24
  store ptr %closure_function_ptr, ptr %0, align 8
  %_8.i.not = icmp eq i64 %_6.i, 1
  br i1 %_8.i.not, label %"evolve.tuple.put!.exit", label %bb5.i

bb5.i:                                            ; preds = %"evolve.tuple.put!.exit8"
  %_2.i.i11 = inttoptr i64 %size to ptr
  %_11.i = getelementptr inbounds i8, ptr %closure_data_ptr, i64 32
  store i64 4, ptr %_11.i, align 8
  %1 = getelementptr inbounds i8, ptr %closure_data_ptr, i64 40
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
  br i1 %_6.i2, label %evolve.tuple.get.exit9.thread, label %evolve.tuple.get.exit9

evolve.tuple.get.exit9.thread:                    ; preds = %start
  %_9.i8 = getelementptr inbounds i8, ptr %closure.1, i64 48
  %0 = icmp ne ptr %closure.1, null
  tail call void @llvm.assume(i1 %0)
  %_0.0.i413 = load i64, ptr %_9.i8, align 8, !noundef !3
  %1 = getelementptr inbounds i8, ptr %closure.1, i64 56
  %_0.1.i514 = load ptr, ptr %1, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit9:                           ; preds = %start
  %_6.i.not = icmp ult i64 %closure.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit9.thread, %evolve.tuple.get.exit9
  %_0.1.i519 = phi ptr [ %_0.1.i514, %evolve.tuple.get.exit9.thread ], [ null, %evolve.tuple.get.exit9 ]
  %_0.0.i417 = phi i64 [ %_0.0.i413, %evolve.tuple.get.exit9.thread ], [ 0, %evolve.tuple.get.exit9 ]
  %_9.i = getelementptr inbounds i8, ptr %closure.1, i64 16
  %2 = icmp ne ptr %closure.1, null
  tail call void @llvm.assume(i1 %2)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit9, %bb2.i
  %_0.1.i518 = phi ptr [ %_0.1.i519, %bb2.i ], [ null, %evolve.tuple.get.exit9 ]
  %_0.0.i416 = phi i64 [ %_0.0.i417, %bb2.i ], [ 0, %evolve.tuple.get.exit9 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit9 ]
  %3 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %closure.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %closure.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %4 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %4, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i = shl i64 %_0.i, 32
  %_8.i = or disjoint i64 %_10.i, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %closure.1
  %5 = tail call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i416, ptr noundef %_0.1.i518, i64 noundef %tuple.0, ptr noundef %tuple.1, i64 noundef %_8.i, ptr noundef %_0.sroa.3.0.i) #33
  ret { i64, ptr } %5
}

; evolve_inner_core::closure::evolve_closure_get_size
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef i64 @_ZN17evolve_inner_core7closure23evolve_closure_get_size17h0c2ee013b28f3c56E(i64 noundef %closure.0, ptr nocapture noundef readonly %closure.1) unnamed_addr #8 {
start:
  %_6.i = icmp ugt i64 %closure.0, 8589934591
  %_9.i = getelementptr inbounds i8, ptr %closure.1, i64 32
  %spec.select = select i1 %_6.i, ptr %_9.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %0 = getelementptr inbounds i8, ptr %spec.select, i64 8
  %_0.1.i = load ptr, ptr %0, align 8, !noundef !3
  %_0 = ptrtoint ptr %_0.1.i to i64
  ret i64 %_0
}

; evolve_inner_core::closure::<impl evolve_inner_core::object::Object>::closure_size
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none)
define noundef i64 @"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17hede6fde747a39478E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self) unnamed_addr #8 {
start:
  %_2.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_2.1 = load ptr, ptr %0, align 8, !noundef !3
  %_6.i.i = icmp ugt i64 %_2.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %_2.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %1 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
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
  %1 = getelementptr inbounds i8, ptr %0, i64 8
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
  %1 = getelementptr inbounds i8, ptr %0, i64 8
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
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert4bool95_$LT$impl$u20$core..convert..From$LT$bool$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h06a236083e3a3be3E"(i1 noundef zeroext %value) unnamed_addr #9 {
start:
  %spec.select = select i1 %value, i64 2, i64 1
  %0 = insertvalue { i64, ptr } poison, i64 %spec.select, 0
  %1 = insertvalue { i64, ptr } %0, ptr null, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::object::convert::bool::<impl core::convert::From<evolve_inner_core::object::Object> for bool>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @"_ZN17evolve_inner_core6object7convert4bool95_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$bool$GT$4from17h7f326ce0e6a88efbE"(i64 noundef %val.0, ptr nocapture noundef readnone %val.1) unnamed_addr #9 {
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

; evolve_inner_core::object::convert::ptr::<impl core::convert::From<*const u8> for evolve_inner_core::object::Object>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3ptr107_$LT$impl$u20$core..convert..From$LT$$BP$const$u20$u8$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17haa6c6c8170eb577eE"(ptr noundef %value) unnamed_addr #9 {
start:
  %0 = insertvalue { i64, ptr } { i64 17, ptr poison }, ptr %value, 1
  ret { i64, ptr } %0
}

; evolve_inner_core::object::convert::ptr::<impl core::convert::From<evolve_inner_core::object::Object> for *const u8>::from
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef ptr @"_ZN17evolve_inner_core6object7convert3ptr107_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$$BP$const$u20$u8$GT$4from17hb32e599109d58a8eE"(i64 noundef %value.0, ptr noundef readnone returned %value.1) unnamed_addr #9 {
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
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3i6494_$LT$impl$u20$core..convert..From$LT$i64$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17hbd16be0bd287d949E"(i64 noundef %value) unnamed_addr #9 {
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
define { i64, ptr } @"_ZN17evolve_inner_core6object7convert3f6494_$LT$impl$u20$core..convert..From$LT$f64$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h0205a1d24ffd7feeE"(double noundef %value) unnamed_addr #9 {
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
define noundef zeroext i1 @"_ZN17evolve_inner_core6object5debug80_$LT$impl$u20$core..fmt..Debug$u20$for$u20$evolve_inner_core..object..Object$GT$3fmt17h578f773e6f96baa1E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
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
  call void @_ZN4core3fmt9Formatter12debug_struct17h5b24f7dcc2b2390dE(ptr noalias nocapture noundef nonnull sret([16 x i8]) align 8 dereferenceable(16) %common, ptr noalias noundef nonnull align 8 dereferenceable(64) %f, ptr noalias noundef nonnull readonly align 1 @alloc_1a3b627145dc0fe65f658cb38c278359, i64 noundef 6) #33
  %_6.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds i8, ptr %self, i64 8
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
  %_90 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_63744475ac4d11caf5a224426ca4a84c, i64 noundef 8, ptr noundef nonnull align 1 %_94, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.7) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_98)
  %_2.i = lshr i64 %_6.0, 32
  %_0.i2 = trunc nuw i64 %_2.i to i32
  store i32 %_0.i2, ptr %_98, align 4
; call core::fmt::builders::DebugStruct::field
  %_89 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_90, ptr noalias noundef nonnull readonly align 1 @alloc_a6c9073709f4dc3faf09868fececa07c, i64 noundef 3, ptr noundef nonnull align 1 %_98, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_102)
  %_103.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_103.1, ptr %_102, align 8
; call core::fmt::builders::DebugStruct::field
  %_88 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_89, ptr noalias noundef nonnull readonly align 1 @alloc_eb15813ccc20d20673372177ea4f1c88, i64 noundef 3, ptr noundef nonnull align 1 %_102, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_98)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_94)
  br label %bb48

bb13:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_10)
  %_11.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_11.1, ptr %_10, align 8
; call core::fmt::builders::DebugStruct::field
  %1 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_a8456fb127012b2b67e2f034dd8cd60c, i64 noundef 4, ptr noundef nonnull align 1 %_10, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_10)
  br label %bb48

bb12:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_16)
  %_17.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_17.1, ptr %_16, align 8
; call core::fmt::builders::DebugStruct::field
  %_12 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_5f51429af5bff0c26097b04b86db779e, i64 noundef 5, ptr noundef nonnull align 1 %_16, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_16)
  br label %bb48

bb11:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_22)
  %_23.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_23.1, ptr %_22, align 8
; call core::fmt::builders::DebugStruct::field
  %_18 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_68f2a445488f20082ceefa0ab63c19b2, i64 noundef 4, ptr noundef nonnull align 1 %_22, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_22)
  br label %bb48

bb10:                                             ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_29)
  %_30.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_30.1, ptr %_29, align 8
; call core::fmt::builders::DebugStruct::field
  %_25 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_f20ab71f06765100d92312e3a01bb989, i64 noundef 3, ptr noundef nonnull align 1 %_29, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_33)
  %_2.i5 = lshr i64 %_6.0, 32
  %_0.i6 = trunc nuw i64 %_2.i5 to i32
  store i32 %_0.i6, ptr %_33, align 4
; call core::fmt::builders::DebugStruct::field
  %_24 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_25, ptr noalias noundef nonnull readonly align 1 @alloc_250b91d3432a6fe0c6c420b70e341432, i64 noundef 4, ptr noundef nonnull align 1 %_33, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_29)
  br label %bb48

bb9:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_39)
  %_40.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_40.1, ptr %_39, align 8
; call core::fmt::builders::DebugStruct::field
  %_35 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_e4771d6525973485a812fe783cd28050, i64 noundef 7, ptr noundef nonnull align 1 %_39, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_39)
  br label %bb48

bb8:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_45)
  %_46.1 = load ptr, ptr %0, align 8, !noundef !3
  %_2.i.i = lshr i64 %_6.0, 32
  %_4.i = add nuw nsw i64 %_2.i.i, 1
  store ptr %_46.1, ptr %_45, align 8
  %2 = getelementptr inbounds i8, ptr %_45, i64 8
  store i64 %_4.i, ptr %2, align 8
; call core::fmt::builders::DebugStruct::field
  %_41 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_0869314c06f5536ea9cfbda8e3d75f40, i64 noundef 6, ptr noundef nonnull align 1 %_45, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.3) #33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  br label %bb48

bb7:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_51)
  %_108 = load ptr, ptr %0, align 8, !noundef !3
  %3 = ptrtoint ptr %_108 to i64
  store i64 %3, ptr %_51, align 8
; call core::fmt::builders::DebugStruct::field
  %_47 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_f4db005b851b7259d0b6ded255335a8c, i64 noundef 3, ptr noundef nonnull align 1 %_51, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.4) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_51)
  br label %bb48

bb6:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_56)
  %_109 = load ptr, ptr %0, align 8, !noundef !3
  %_107 = ptrtoint ptr %_109 to i64
  store i64 %_107, ptr %_56, align 8
; call core::fmt::builders::DebugStruct::field
  %_52 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_82b1bf185e1b461c8b8241303ddf0563, i64 noundef 3, ptr noundef nonnull align 1 %_56, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.5) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_56)
  br label %bb48

bb5:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_64)
  %_65.1 = load ptr, ptr %0, align 8, !noundef !3
  store ptr %_65.1, ptr %_64, align 8
; call core::fmt::builders::DebugStruct::field
  %_60 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_22f0e91223dabf1bef5f103b8560c3f1, i64 noundef 5, ptr noundef nonnull align 1 %_64, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_68)
  %_2.i3 = lshr i64 %_6.0, 32
  %_0.i4 = trunc nuw i64 %_2.i3 to i32
  store i32 %_0.i4, ptr %_68, align 4
; call core::fmt::builders::DebugStruct::field
  %_59 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_60, ptr noalias noundef nonnull readonly align 1 @alloc_a2e5f6be2a03b9f5ed256baff3399a84, i64 noundef 4, ptr noundef nonnull align 1 %_68, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.2) #33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_72)
  %_6.i8.not = icmp ult i64 %_6.0, 4294967296
  %_9.i14 = getelementptr inbounds i8, ptr %_65.1, i64 16
  %spec.select = select i1 %_6.i8.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i14
  %_0.0.i10 = load i64, ptr %spec.select, align 8, !noundef !3
  %4 = getelementptr inbounds i8, ptr %spec.select, i64 8
  %_0.1.i11 = load ptr, ptr %4, align 8, !noundef !3
  store i64 %_0.0.i10, ptr %_72, align 8
  %5 = getelementptr inbounds i8, ptr %_72, i64 8
  store ptr %_0.1.i11, ptr %5, align 8
; call core::fmt::builders::DebugStruct::field
  %_58 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_59, ptr noalias noundef nonnull readonly align 1 @alloc_ac368d9a707b52d21ed3ba3af2bad0d5, i64 noundef 3, ptr noundef nonnull align 1 %_72, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.6) #33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_76)
  %_6.i = icmp ugt i64 %_6.0, 8589934591
  %_9.i = getelementptr inbounds i8, ptr %_65.1, i64 32
  %spec.select19 = select i1 %_6.i, ptr %_9.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %_0.0.i = load i64, ptr %spec.select19, align 8, !noundef !3
  %6 = getelementptr inbounds i8, ptr %spec.select19, i64 8
  %_0.1.i = load ptr, ptr %6, align 8, !noundef !3
  store i64 %_0.0.i, ptr %_76, align 8
  %7 = getelementptr inbounds i8, ptr %_76, i64 8
  store ptr %_0.1.i, ptr %7, align 8
; call core::fmt::builders::DebugStruct::field
  %_57 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_58, ptr noalias noundef nonnull readonly align 1 @alloc_5b8c386f77829feb42882cd52d13ac4a, i64 noundef 3, ptr noundef nonnull align 1 %_76, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.6) #33
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
  %_79 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %common, ptr noalias noundef nonnull readonly align 1 @alloc_3fb291eefbcf3fa3c1d2137966dc6e7c, i64 noundef 7, ptr noundef nonnull align 1 %_83, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.1) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_87)
  %_6.i.i.i = icmp ugt i64 %_6.0, 8589934591
  %_9.i.i.i = getelementptr inbounds i8, ptr %_84.1, i64 32
  %spec.select.i.i = select i1 %_6.i.i.i, ptr %_9.i.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %8 = getelementptr inbounds i8, ptr %spec.select.i.i, i64 8
  %_0.1.i.i.i = load ptr, ptr %8, align 8, !noalias !31, !noundef !3
  %_0.i.i = ptrtoint ptr %_0.1.i.i.i to i64
  store i64 %_0.i.i, ptr %_87, align 8
; call core::fmt::builders::DebugStruct::field
  %_78 = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef nonnull align 8 dereferenceable(16) %_79, ptr noalias noundef nonnull readonly align 1 @alloc_a2e5f6be2a03b9f5ed256baff3399a84, i64 noundef 4, ptr noundef nonnull align 1 %_87, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.4) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_87)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_83)
  br label %bb48

bb48:                                             ; preds = %bb3, %bb4, %bb5, %bb6, %bb7, %bb8, %bb9, %bb10, %bb11, %bb12, %bb13
  %more.sroa.0.0 = phi ptr [ %_88, %bb3 ], [ %_78, %bb4 ], [ %_57, %bb5 ], [ %_52, %bb6 ], [ %_47, %bb7 ], [ %_41, %bb8 ], [ %_35, %bb9 ], [ %_24, %bb10 ], [ %_18, %bb11 ], [ %_12, %bb12 ], [ %1, %bb13 ]
; call core::fmt::builders::DebugStruct::finish
  %_0 = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h0d39fbc85c89cd38E(ptr noalias noundef nonnull align 8 dereferenceable(16) %more.sroa.0.0) #33
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
  %_31 = and i64 %self.0, 1
  %0 = icmp eq i64 %_31, 0
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
define noundef zeroext i1 @"_ZN74_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5471f33ee7edc600E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %_4.0.i = load i64, ptr %self, align 8, !alias.scope !34, !noalias !37, !noundef !3
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_4.1.i = load ptr, ptr %0, align 8, !alias.scope !34, !noalias !37, !noundef !3
  %_5.0.i = load i64, ptr %other, align 8, !alias.scope !37, !noalias !34, !noundef !3
  %1 = getelementptr inbounds i8, ptr %other, i64 8
  %_5.1.i = load ptr, ptr %1, align 8, !alias.scope !37, !noalias !34, !noundef !3
  %_3.i.i = icmp eq i64 %_4.0.i, %_5.0.i
  %2 = icmp eq ptr %_4.1.i, %_5.1.i
  %_0.sroa.0.0.i.i = and i1 %_3.i.i, %2
  br i1 %_0.sroa.0.0.i.i, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit", label %bb3.i

bb3.i:                                            ; preds = %start
  br i1 %_3.i.i, label %bb6.i, label %bb13.i

bb13.i:                                           ; preds = %bb6.i, %bb3.i
  %3 = icmp ult i64 %_4.0.i, %_5.0.i
  %.not1.i = icmp ne i64 %_4.0.i, %_5.0.i
  %4 = zext i1 %.not1.i to i8
  %5 = select i1 %3, i8 -1, i8 %4
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

bb6.i:                                            ; preds = %bb3.i
  %_11.i = trunc i64 %_4.0.i to i16
  switch i16 %_11.i, label %bb13.i [
    i16 4, label %bb10.i
    i16 5, label %bb9.i
    i16 6, label %bb8.i
  ]

bb10.i:                                           ; preds = %bb6.i
  %6 = icmp slt ptr %_4.1.i, %_5.1.i
  %.not.i = icmp ne ptr %_4.1.i, %_5.1.i
  %7 = zext i1 %.not.i to i8
  %8 = select i1 %6, i8 -1, i8 %7
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

bb9.i:                                            ; preds = %bb6.i
  %_9.i.i = ptrtoint ptr %_4.1.i to i64
  %_12.i.i = ptrtoint ptr %_5.1.i to i64
  %9 = bitcast i64 %_9.i.i to double
  %10 = bitcast i64 %_12.i.i to double
  %_0.i4.i.i.i = fcmp uno double %9, 0.000000e+00
  %_0.i3.i.i.i = fcmp oge double %9, %10
  %_5.i.i.i = or i1 %_0.i4.i.i.i, %_0.i3.i.i.i
  %_0.i5.i.i.i = fcmp ord double %10, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %10, %9
  %_11.not.i.i.i = and i1 %_0.i5.i.i.i, %_0.i.i.i.i
  %..i.i.i = zext i1 %_11.not.i.i.i to i8
  %_0.sroa.0.0.i.i.i = select i1 %_5.i.i.i, i8 %..i.i.i, i8 -1
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

bb8.i:                                            ; preds = %bb6.i
  %_2.i.i.i.i = lshr i64 %_4.0.i, 32
  %11 = icmp ne ptr %_4.1.i, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %_5.1.i, null
  tail call void @llvm.assume(i1 %12)
  %13 = tail call i32 @memcmp(ptr nonnull readonly %_4.1.i, ptr nonnull readonly %_5.1.i, i64 %_2.i.i.i.i), !alias.scope !39, !noalias !43
  %14 = icmp slt i32 %13, 0
  %.not.i.i.i = icmp ne i32 %13, 0
  %15 = zext i1 %.not.i.i.i to i8
  %_0.i.i.i = select i1 %14, i8 -1, i8 %15
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit": ; preds = %start, %bb13.i, %bb10.i, %bb9.i, %bb8.i
  %_0.sroa.0.0.i = phi i8 [ %5, %bb13.i ], [ %_0.i.i.i, %bb8.i ], [ %_0.sroa.0.0.i.i.i, %bb9.i ], [ %8, %bb10.i ], [ 0, %start ]
  %_0 = icmp eq i8 %_0.sroa.0.0.i, 0
  ret i1 %_0
}

; <evolve_inner_core::object::Object as core::cmp::PartialOrd>::partial_cmp
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite)
define noundef range(i8 -1, 3) i8 @"_ZN75_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h4bcbe37f1f9eb6eaE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %_4.0.i = load i64, ptr %self, align 8, !alias.scope !44, !noalias !47, !noundef !3
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_4.1.i = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !47, !noundef !3
  %_5.0.i = load i64, ptr %other, align 8, !alias.scope !47, !noalias !44, !noundef !3
  %1 = getelementptr inbounds i8, ptr %other, i64 8
  %_5.1.i = load ptr, ptr %1, align 8, !alias.scope !47, !noalias !44, !noundef !3
  %_3.i.i = icmp eq i64 %_4.0.i, %_5.0.i
  %2 = icmp eq ptr %_4.1.i, %_5.1.i
  %_0.sroa.0.0.i.i = and i1 %_3.i.i, %2
  br i1 %_0.sroa.0.0.i.i, label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit", label %bb3.i

bb3.i:                                            ; preds = %start
  br i1 %_3.i.i, label %bb6.i, label %bb13.i

bb13.i:                                           ; preds = %bb6.i, %bb3.i
  %3 = icmp ult i64 %_4.0.i, %_5.0.i
  %.not1.i = icmp ne i64 %_4.0.i, %_5.0.i
  %4 = zext i1 %.not1.i to i8
  %5 = select i1 %3, i8 -1, i8 %4
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

bb6.i:                                            ; preds = %bb3.i
  %_11.i = trunc i64 %_4.0.i to i16
  switch i16 %_11.i, label %bb13.i [
    i16 4, label %bb10.i
    i16 5, label %bb9.i
    i16 6, label %bb8.i
  ]

bb10.i:                                           ; preds = %bb6.i
  %6 = icmp slt ptr %_4.1.i, %_5.1.i
  %.not.i = icmp ne ptr %_4.1.i, %_5.1.i
  %7 = zext i1 %.not.i to i8
  %8 = select i1 %6, i8 -1, i8 %7
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

bb9.i:                                            ; preds = %bb6.i
  %_9.i.i = ptrtoint ptr %_4.1.i to i64
  %_12.i.i = ptrtoint ptr %_5.1.i to i64
  %9 = bitcast i64 %_9.i.i to double
  %10 = bitcast i64 %_12.i.i to double
  %_0.i4.i.i.i = fcmp uno double %9, 0.000000e+00
  %_0.i3.i.i.i = fcmp oge double %9, %10
  %_5.i.i.i = or i1 %_0.i4.i.i.i, %_0.i3.i.i.i
  %_0.i5.i.i.i = fcmp ord double %10, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %10, %9
  %_11.not.i.i.i = and i1 %_0.i5.i.i.i, %_0.i.i.i.i
  %..i.i.i = zext i1 %_11.not.i.i.i to i8
  %_0.sroa.0.0.i.i.i = select i1 %_5.i.i.i, i8 %..i.i.i, i8 -1
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

bb8.i:                                            ; preds = %bb6.i
  %_2.i.i.i.i = lshr i64 %_4.0.i, 32
  %11 = icmp ne ptr %_4.1.i, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %_5.1.i, null
  tail call void @llvm.assume(i1 %12)
  %13 = tail call i32 @memcmp(ptr nonnull readonly %_4.1.i, ptr nonnull readonly %_5.1.i, i64 %_2.i.i.i.i), !alias.scope !49, !noalias !53
  %14 = icmp slt i32 %13, 0
  %.not.i.i.i = icmp ne i32 %13, 0
  %15 = zext i1 %.not.i.i.i to i8
  %_0.i.i.i = select i1 %14, i8 -1, i8 %15
  br label %"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit"

"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE.exit": ; preds = %start, %bb13.i, %bb10.i, %bb9.i, %bb8.i
  %_0.sroa.0.0.i = phi i8 [ %5, %bb13.i ], [ %_0.i.i.i, %bb8.i ], [ %_0.sroa.0.0.i.i.i, %bb9.i ], [ %8, %bb10.i ], [ 0, %start ]
  ret i8 %_0.sroa.0.0.i
}

; <evolve_inner_core::object::Object as core::cmp::Ord>::cmp
; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: write)
define noundef range(i8 -1, 2) i8 @"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %other) unnamed_addr #14 {
start:
  %_4.0 = load i64, ptr %self, align 8, !noundef !3
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_4.1 = load ptr, ptr %0, align 8, !noundef !3
  %_5.0 = load i64, ptr %other, align 8, !noundef !3
  %1 = getelementptr inbounds i8, ptr %other, i64 8
  %_5.1 = load ptr, ptr %1, align 8, !noundef !3
  %_3.i = icmp eq i64 %_4.0, %_5.0
  %2 = icmp eq ptr %_4.1, %_5.1
  %_0.sroa.0.0.i = and i1 %_3.i, %2
  br i1 %_0.sroa.0.0.i, label %bb15, label %bb3

bb3:                                              ; preds = %start
  br i1 %_3.i, label %bb6, label %bb13

bb13:                                             ; preds = %bb6, %bb3
  %3 = icmp ult i64 %_4.0, %_5.0
  %.not1 = icmp ne i64 %_4.0, %_5.0
  %4 = zext i1 %.not1 to i8
  %5 = select i1 %3, i8 -1, i8 %4
  br label %bb15

bb6:                                              ; preds = %bb3
  %_11 = trunc i64 %_4.0 to i16
  switch i16 %_11, label %bb13 [
    i16 4, label %bb10
    i16 5, label %bb9
    i16 6, label %bb8
  ]

bb10:                                             ; preds = %bb6
  %6 = icmp slt ptr %_4.1, %_5.1
  %.not = icmp ne ptr %_4.1, %_5.1
  %7 = zext i1 %.not to i8
  %8 = select i1 %6, i8 -1, i8 %7
  br label %bb15

bb9:                                              ; preds = %bb6
  %_9.i = ptrtoint ptr %_4.1 to i64
  %_12.i = ptrtoint ptr %_5.1 to i64
  %9 = bitcast i64 %_9.i to double
  %10 = bitcast i64 %_12.i to double
  %_0.i4.i.i = fcmp uno double %9, 0.000000e+00
  %_0.i3.i.i = fcmp oge double %9, %10
  %_5.i.i = or i1 %_0.i4.i.i, %_0.i3.i.i
  %_0.i5.i.i = fcmp ord double %10, 0.000000e+00
  %_0.i.i.i = fcmp ult double %10, %9
  %_11.not.i.i = and i1 %_0.i5.i.i, %_0.i.i.i
  %..i.i = zext i1 %_11.not.i.i to i8
  %_0.sroa.0.0.i.i = select i1 %_5.i.i, i8 %..i.i, i8 -1
  br label %bb15

bb8:                                              ; preds = %bb6
  %_2.i.i.i = lshr i64 %_4.0, 32
  %11 = icmp ne ptr %_4.1, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %_5.1, null
  tail call void @llvm.assume(i1 %12)
  %13 = tail call i32 @memcmp(ptr nonnull readonly %_4.1, ptr nonnull readonly %_5.1, i64 %_2.i.i.i), !alias.scope !54
  %14 = icmp slt i32 %13, 0
  %.not.i.i = icmp ne i32 %13, 0
  %15 = zext i1 %.not.i.i to i8
  %_0.i.i = select i1 %14, i8 -1, i8 %15
  br label %bb15

bb15:                                             ; preds = %start, %bb10, %bb9, %bb8, %bb13
  %_0.sroa.0.0 = phi i8 [ %5, %bb13 ], [ %_0.i.i, %bb8 ], [ %_0.sroa.0.0.i.i, %bb9 ], [ %8, %bb10 ], [ 0, %start ]
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
  %_5 = fcmp uno double %value1, 0.000000e+00
  %_0.i1 = fcmp uno double %value2, 0.000000e+00
  %_0.i = fcmp oeq double %value1, %value2
  %_0.sroa.0.0.in = select i1 %_5, i1 %_0.i1, i1 %_0.i
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

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef range(i8 -1, 2) i8 @evolve_i64_cmp(i64 noundef %value1, i64 noundef %value2) unnamed_addr #12 {
start:
  %0 = icmp slt i64 %value1, %value2
  %.not = icmp ne i64 %value1, %value2
  %1 = zext i1 %.not to i8
  %_0 = select i1 %0, i8 -1, i8 %1
  ret i8 %_0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, i1 } @evolve_i64_checked_div(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
start:
  %0 = icmp eq i64 %rhs, 0
  br i1 %0, label %bb1, label %bb2, !prof !58

bb2:                                              ; preds = %start
  %_5 = icmp eq i64 %lhs, -9223372036854775808
  %1 = icmp eq i64 %rhs, -1
  %or.cond = and i1 %_5, %1
  br i1 %or.cond, label %bb1, label %bb7, !prof !59

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
    i64 0, label %_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h05d37ed58de6ae43E.exit
    i64 -1, label %bb2.i.i
  ]

bb2.i.i:                                          ; preds = %start
  br label %_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h05d37ed58de6ae43E.exit

bb5.i.i:                                          ; preds = %start
  %0 = srem i64 %lhs, %rhs
  br label %_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h05d37ed58de6ae43E.exit

_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h05d37ed58de6ae43E.exit: ; preds = %start, %bb2.i.i, %bb5.i.i
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
define { i64, i64 } @_ZN17evolve_inner_core3i6426evolve_i64_safe_rem_option17h05d37ed58de6ae43E(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
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
  br i1 %0, label %bb3, label %bb4, !prof !58

bb4:                                              ; preds = %start
  %_10 = icmp eq i64 %lhs, -9223372036854775808
  %1 = icmp eq i64 %rhs, -1
  %or.cond = and i1 %_10, %1
  br i1 %or.cond, label %bb3, label %bb2, !prof !59

bb2:                                              ; preds = %bb4
  %div.sroa.9.2 = sdiv i64 %lhs, %rhs
  %2 = srem i64 %lhs, %rhs
  br label %bb3

bb3:                                              ; preds = %bb4, %start, %bb2
  %_0.sroa.3.0 = phi i64 [ %2, %bb2 ], [ -1, %start ], [ -1, %bb4 ]
  %_0.sroa.0.0 = phi i64 [ %div.sroa.9.2, %bb2 ], [ -1, %start ], [ -1, %bb4 ]
  %3 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %_0.sroa.3.0, 1
  ret { i64, i64 } %4
}

; evolve_inner_core::i64::evolve_i64_divisible_by
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef zeroext i1 @_ZN17evolve_inner_core3i6423evolve_i64_divisible_by17h1a024d59a05aeb7aE(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #9 {
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
define noundef i64 @evolve.i64.signed-shift-right(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
  %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
  %_6 = ashr i64 %lhs, %0
  ret i64 %_6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve.i64.unsigned-shift-right(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
  %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
  %_6 = lshr i64 %lhs, %0
  ret i64 %_6
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
  %_6 = icmp ne i64 %shr, %lhs
  br label %bb5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_i64_unbounded_shl(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
  %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
  %_6 = shl i64 %lhs, %0
  ret i64 %_6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define noundef i64 @evolve_i64_unbounded_shr(i64 noundef %lhs, i32 noundef %rhs) unnamed_addr #9 personality ptr @rust_eh_personality {
start:
  %_0.sroa.0.0.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %rhs, i32 63)
  %0 = zext nneg i32 %_0.sroa.0.0.sroa.speculated.i to i64
  %_6 = ashr i64 %lhs, %0
  ret i64 %_6
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
  %_9.i = getelementptr inbounds %"object::Object", ptr %value.1, i64 %_6
  %spec.select = select i1 %_6.i.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9.i
  br label %bb10.sink.split

bb5:                                              ; preds = %bb3
  %_9 = ptrtoint ptr %index.1 to i64
  %adjusted_index.i = add i64 %_9, -1
  %1 = getelementptr inbounds i8, ptr %value.1, i64 24
  %_4.i = load i64, ptr %1, align 8, !alias.scope !60, !noundef !3
  %_3.i = icmp ugt i64 %_4.i, %adjusted_index.i
  br i1 %_3.i, label %bb1.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit"

bb1.i:                                            ; preds = %bb5
  %2 = getelementptr inbounds i8, ptr %value.1, i64 16
  %idx1.i = load i64, ptr %2, align 8, !alias.scope !60, !noundef !3
  %logical_index.i = add i64 %idx1.i, %adjusted_index.i
  %self2.i = load i64, ptr %value.1, align 8, !range !5, !alias.scope !60, !noundef !3
  %_17.not.i = icmp ult i64 %logical_index.i, %self2.i
  %3 = select i1 %_17.not.i, i64 0, i64 %self2.i
  %idx.sroa.0.0.i = sub i64 %logical_index.i, %3
  %4 = getelementptr inbounds i8, ptr %value.1, i64 8
  %_18.i = load ptr, ptr %4, align 8, !alias.scope !60, !nonnull !3, !noundef !3
  %_7.i = getelementptr inbounds %"object::Object", ptr %_18.i, i64 %idx.sroa.0.0.i
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit": ; preds = %bb5, %bb1.i
  %_0.sroa.0.0.i = phi ptr [ %_7.i, %bb1.i ], [ null, %bb5 ]
  %5 = icmp eq ptr %_0.sroa.0.0.i, null
  %alloc_e9164108e3a8c437bd8ee95ca79fdb9f..i = select i1 %5, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_0.sroa.0.0.i
  br label %bb10.sink.split

bb10.sink.split:                                  ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit", %bb6
  %spec.select.sink3 = phi ptr [ %spec.select, %bb6 ], [ %alloc_e9164108e3a8c437bd8ee95ca79fdb9f..i, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E.exit" ]
  %_0.0.i1 = load i64, ptr %spec.select.sink3, align 8, !noundef !3
  %6 = getelementptr inbounds i8, ptr %spec.select.sink3, i64 8
  %_0.1.i2 = load ptr, ptr %6, align 8, !noundef !3
  br label %bb10

bb10:                                             ; preds = %bb10.sink.split, %bb3, %start
  %_0.sroa.5.0 = phi ptr [ null, %start ], [ null, %bb3 ], [ %_0.1.i2, %bb10.sink.split ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb3 ], [ %_0.0.i1, %bb10.sink.split ]
  %7 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %_0.sroa.5.0, 1
  ret { i64, ptr } %8
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.call!"(i64 noundef %s.0, ptr noundef %s.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %0 = and i64 %s.0, 65535
  %_4 = icmp eq i64 %0, 19
  br i1 %_4, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %_6.i2 = icmp ugt i64 %s.0, 12884901887
  br i1 %_6.i2, label %evolve.tuple.get.exit9.thread, label %evolve.tuple.get.exit9

evolve.tuple.get.exit9.thread:                    ; preds = %bb2
  %_9.i8 = getelementptr inbounds i8, ptr %s.1, i64 48
  %1 = icmp ne ptr %s.1, null
  tail call void @llvm.assume(i1 %1)
  %_0.0.i413 = load i64, ptr %_9.i8, align 8, !noundef !3
  %2 = getelementptr inbounds i8, ptr %s.1, i64 56
  %_0.1.i514 = load ptr, ptr %2, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit9:                           ; preds = %bb2
  %_6.i.not = icmp ult i64 %s.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit9.thread, %evolve.tuple.get.exit9
  %_0.1.i519 = phi ptr [ %_0.1.i514, %evolve.tuple.get.exit9.thread ], [ null, %evolve.tuple.get.exit9 ]
  %_0.0.i417 = phi i64 [ %_0.0.i413, %evolve.tuple.get.exit9.thread ], [ 0, %evolve.tuple.get.exit9 ]
  %_9.i = getelementptr inbounds i8, ptr %s.1, i64 16
  %3 = icmp ne ptr %s.1, null
  tail call void @llvm.assume(i1 %3)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit9, %bb2.i
  %_0.1.i518 = phi ptr [ %_0.1.i519, %bb2.i ], [ null, %evolve.tuple.get.exit9 ]
  %_0.0.i416 = phi i64 [ %_0.0.i417, %bb2.i ], [ 0, %evolve.tuple.get.exit9 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit9 ]
  %4 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %s.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %s.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %5 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %5, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i = shl i64 %_0.i, 32
  %_8.i = or disjoint i64 %_10.i, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %s.1
  %6 = tail call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i416, ptr noundef %_0.1.i518, i64 noundef %tuple.0, ptr noundef %tuple.1, i64 noundef %_8.i, ptr noundef %_0.sroa.3.0.i) #33
  %7 = extractvalue { i64, ptr } %6, 0
  %8 = extractvalue { i64, ptr } %6, 1
  br label %bb4

bb4:                                              ; preds = %start, %evolve.tuple.get.exit
  %_0.sroa.3.0 = phi ptr [ %8, %evolve.tuple.get.exit ], [ null, %start ]
  %_0.sroa.0.0 = phi i64 [ %7, %evolve.tuple.get.exit ], [ 257, %start ]
  %9 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %10 = insertvalue { i64, ptr } %9, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %10
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
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h9d252c3f0c44967dE.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h9d252c3f0c44967dE.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp eq ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h9d252c3f0c44967dE.exit

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
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h9d252c3f0c44967dE.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h9d252c3f0c44967dE.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.ne?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h84ddbafd81b4a1d3E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h84ddbafd81b4a1d3E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp eq ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h84ddbafd81b4a1d3E.exit

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
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h84ddbafd81b4a1d3E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h84ddbafd81b4a1d3E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.lt?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h3b8234cb32f245a0E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h3b8234cb32f245a0E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp slt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h3b8234cb32f245a0E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp ord double %0, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %0, %1
  %_0.i.not.i.i = and i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i1 = select i1 %_0.i.not.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h3b8234cb32f245a0E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h3b8234cb32f245a0E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.ge?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h226e5f864be916a5E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h226e5f864be916a5E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp slt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h226e5f864be916a5E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i = fcmp uno double %0, 0.000000e+00
  %_0.i.i.i = fcmp oge double %0, %1
  %_0.i.i1 = or i1 %_0.i1.i.i, %_0.i.i.i
  %spec.select.i2 = select i1 %_0.i.i1, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h226e5f864be916a5E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h226e5f864be916a5E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i2, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.gt?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha8a70eede554d8d2E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha8a70eede554d8d2E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i = icmp sgt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha8a70eede554d8d2E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp ord double %1, 0.000000e+00
  %_0.i.i.i.i = fcmp ult double %1, %0
  %_0.i.not.i.i = and i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i1 = select i1 %_0.i.not.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha8a70eede554d8d2E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17ha8a70eede554d8d2E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
  %_0.sroa.0.0.i = phi i64 [ %spec.select.i1, %bb5.i ], [ %spec.select.i, %bb6.i ], [ 257, %start ], [ 257, %bb4.i ]
  %2 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr null, 1
  ret { i64, ptr } %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @"evolve.intrinsic2.le?"(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h52722f4b2d4e9687E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h52722f4b2d4e9687E.exit [
    i16 4, label %bb6.i
    i16 5, label %bb5.i
  ]

bb6.i:                                            ; preds = %bb4.i
  %_0.i.i.not = icmp sgt ptr %left.1, %right.1
  %spec.select.i = select i1 %_0.i.i.not, i64 1, i64 2
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h52722f4b2d4e9687E.exit

bb5.i:                                            ; preds = %bb4.i
  %_29.i = ptrtoint ptr %left.1 to i64
  %_32.i = ptrtoint ptr %right.1 to i64
  %0 = bitcast i64 %_29.i to double
  %1 = bitcast i64 %_32.i to double
  %_0.i1.i.i.i = fcmp uno double %1, 0.000000e+00
  %_0.i.i.i.i = fcmp oge double %1, %0
  %_0.i.i.i = or i1 %_0.i1.i.i.i, %_0.i.i.i.i
  %spec.select.i1 = select i1 %_0.i.i.i, i64 2, i64 1
  br label %_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h52722f4b2d4e9687E.exit

_ZN17evolve_inner_core9intrinsic3cmp10cmp_helper17h52722f4b2d4e9687E.exit: ; preds = %start, %bb4.i, %bb6.i, %bb5.i
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
  %_0.i2.i = icmp ne i64 %this.0, 4
  %0 = and i64 %tuple.0, 65535
  %_0.i4.i = icmp ne i64 %0, 19
  %or.cond = or i1 %_0.i2.i, %_0.i4.i
  br i1 %or.cond, label %bb26.i, label %bb10.i

bb10.i:                                           ; preds = %start
  %limit.i = ptrtoint ptr %this.1 to i64
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  br i1 %_6.i3, label %evolve.tuple.get.exit10.thread, label %evolve.tuple.get.exit10

evolve.tuple.get.exit10.thread:                   ; preds = %bb10.i
  %_9.i9 = getelementptr inbounds i8, ptr %tuple.1, i64 48
  %1 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %1)
  %_0.0.i530 = load i64, ptr %_9.i9, align 8, !noundef !3
  %2 = getelementptr inbounds i8, ptr %tuple.1, i64 56
  %_0.1.i631 = load ptr, ptr %2, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit10:                          ; preds = %bb10.i
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit10.thread, %evolve.tuple.get.exit10
  %_0.1.i636 = phi ptr [ %_0.1.i631, %evolve.tuple.get.exit10.thread ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i534 = phi i64 [ %_0.0.i530, %evolve.tuple.get.exit10.thread ], [ 0, %evolve.tuple.get.exit10 ]
  %_9.i1 = getelementptr inbounds i8, ptr %tuple.1, i64 16
  %3 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %3)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit10, %bb2.i
  %_0.1.i635 = phi ptr [ %_0.1.i636, %bb2.i ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i533 = phi i64 [ %_0.0.i534, %bb2.i ], [ 0, %evolve.tuple.get.exit10 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i1, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit10 ]
  %4 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %5 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %5, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i24 = shl i64 %_0.i, 32
  %_8.i25 = or disjoint i64 %_10.i24, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_26.i37 = icmp slt ptr %this.1, inttoptr (i64 1 to ptr)
  br i1 %_26.i37, label %bb25.i, label %bb5.i.lr.ph

bb5.i.lr.ph:                                      ; preds = %evolve.tuple.get.exit
  %_11.i = getelementptr inbounds i8, ptr %raw_tuple.i, i64 16
  %6 = getelementptr inbounds i8, ptr %raw_tuple.i, i64 24
  br label %bb5.i

bb26.i:                                           ; preds = %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

bb5.i:                                            ; preds = %bb5.i, %bb5.i.lr.ph
  %internal_index.sroa.0.0.i38 = phi i64 [ 1, %bb5.i.lr.ph ], [ %_48.0.i, %bb5.i ]
  %_2.i.i = inttoptr i64 %internal_index.sroa.0.0.i38 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %6, align 8
  %7 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i533, ptr noundef %_0.1.i635, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_8.i25, ptr noundef %_0.sroa.3.0.i) #33
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.0.i38, i64 1)
  %_48.1.i = extractvalue { i64, i1 } %8, 1
  %_48.0.i = extractvalue { i64, i1 } %8, 0
  %_26.i = icmp sgt i64 %_48.0.i, %limit.i
  %or.cond39 = or i1 %_48.1.i, %_26.i
  br i1 %or.cond39, label %bb25.i, label %bb5.i, !prof !63

bb25.i:                                           ; preds = %bb5.i, %evolve.tuple.get.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

"evolve.intrinsic2.step!.exit":                   ; preds = %bb26.i, %bb25.i
  %9 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %10 = insertvalue { i64, ptr } %9, ptr %this.1, 1
  ret { i64, ptr } %10
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.upto!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %_0.i.i15 = icmp ne i64 %this.0, 4
  %_0.i2.i = icmp ne i64 %limit.0, 4
  %or.cond.i17 = or i1 %_0.i.i15, %_0.i2.i
  %0 = and i64 %tuple.0, 65535
  %_0.i4.i = icmp ne i64 %0, 19
  %or.cond = or i1 %or.cond.i17, %_0.i4.i
  br i1 %or.cond, label %bb26.i, label %bb10.i

bb10.i:                                           ; preds = %start
  %limit.i = ptrtoint ptr %limit.1 to i64
  %start1.i = ptrtoint ptr %this.1 to i64
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  br i1 %_6.i3, label %evolve.tuple.get.exit10.thread, label %evolve.tuple.get.exit10

evolve.tuple.get.exit10.thread:                   ; preds = %bb10.i
  %_9.i9 = getelementptr inbounds i8, ptr %tuple.1, i64 48
  %1 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %1)
  %_0.0.i530 = load i64, ptr %_9.i9, align 8, !noundef !3
  %2 = getelementptr inbounds i8, ptr %tuple.1, i64 56
  %_0.1.i631 = load ptr, ptr %2, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit10:                          ; preds = %bb10.i
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit10.thread, %evolve.tuple.get.exit10
  %_0.1.i636 = phi ptr [ %_0.1.i631, %evolve.tuple.get.exit10.thread ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i534 = phi i64 [ %_0.0.i530, %evolve.tuple.get.exit10.thread ], [ 0, %evolve.tuple.get.exit10 ]
  %_9.i1 = getelementptr inbounds i8, ptr %tuple.1, i64 16
  %3 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %3)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit10, %bb2.i
  %_0.1.i635 = phi ptr [ %_0.1.i636, %bb2.i ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i533 = phi i64 [ %_0.0.i534, %bb2.i ], [ 0, %evolve.tuple.get.exit10 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i1, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit10 ]
  %4 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %5 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %5, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i24 = shl i64 %_0.i, 32
  %_8.i25 = or disjoint i64 %_10.i24, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_26.i37 = icmp sgt ptr %this.1, %limit.1
  br i1 %_26.i37, label %bb25.i, label %bb5.i.lr.ph

bb5.i.lr.ph:                                      ; preds = %evolve.tuple.get.exit
  %_11.i = getelementptr inbounds i8, ptr %raw_tuple.i, i64 16
  %6 = getelementptr inbounds i8, ptr %raw_tuple.i, i64 24
  br label %bb5.i

bb26.i:                                           ; preds = %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

bb5.i:                                            ; preds = %bb5.i, %bb5.i.lr.ph
  %internal_index.sroa.0.0.i38 = phi i64 [ %start1.i, %bb5.i.lr.ph ], [ %_48.0.i, %bb5.i ]
  %_2.i.i = inttoptr i64 %internal_index.sroa.0.0.i38 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %6, align 8
  %7 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i533, ptr noundef %_0.1.i635, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_8.i25, ptr noundef %_0.sroa.3.0.i) #33
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.0.i38, i64 1)
  %_48.1.i = extractvalue { i64, i1 } %8, 1
  %_48.0.i = extractvalue { i64, i1 } %8, 0
  %_26.i = icmp sgt i64 %_48.0.i, %limit.i
  %or.cond39 = or i1 %_48.1.i, %_26.i
  br i1 %or.cond39, label %bb25.i, label %bb5.i, !prof !63

bb25.i:                                           ; preds = %bb5.i, %evolve.tuple.get.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

"evolve.intrinsic2.step!.exit":                   ; preds = %bb26.i, %bb25.i
  %9 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %10 = insertvalue { i64, ptr } %9, ptr %this.1, 1
  ret { i64, ptr } %10
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.downto!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %_0.i.i15 = icmp ne i64 %this.0, 4
  %_0.i2.i = icmp ne i64 %limit.0, 4
  %or.cond.i17 = or i1 %_0.i.i15, %_0.i2.i
  %0 = and i64 %tuple.0, 65535
  %_0.i4.i = icmp ne i64 %0, 19
  %or.cond = or i1 %or.cond.i17, %_0.i4.i
  br i1 %or.cond, label %bb26.i, label %bb10.i

bb10.i:                                           ; preds = %start
  %limit.i = ptrtoint ptr %limit.1 to i64
  %start1.i = ptrtoint ptr %this.1 to i64
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  br i1 %_6.i3, label %evolve.tuple.get.exit10.thread, label %evolve.tuple.get.exit10

evolve.tuple.get.exit10.thread:                   ; preds = %bb10.i
  %_9.i9 = getelementptr inbounds i8, ptr %tuple.1, i64 48
  %1 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %1)
  %_0.0.i530 = load i64, ptr %_9.i9, align 8, !noundef !3
  %2 = getelementptr inbounds i8, ptr %tuple.1, i64 56
  %_0.1.i631 = load ptr, ptr %2, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit10:                          ; preds = %bb10.i
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit10.thread, %evolve.tuple.get.exit10
  %_0.1.i636 = phi ptr [ %_0.1.i631, %evolve.tuple.get.exit10.thread ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i534 = phi i64 [ %_0.0.i530, %evolve.tuple.get.exit10.thread ], [ 0, %evolve.tuple.get.exit10 ]
  %_9.i1 = getelementptr inbounds i8, ptr %tuple.1, i64 16
  %3 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %3)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit10, %bb2.i
  %_0.1.i635 = phi ptr [ %_0.1.i636, %bb2.i ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i533 = phi i64 [ %_0.0.i534, %bb2.i ], [ 0, %evolve.tuple.get.exit10 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i1, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit10 ]
  %4 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %5 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %5, align 8, !noundef !3
  %_0.i = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i24 = shl i64 %_0.i, 32
  %_8.i25 = or disjoint i64 %_10.i24, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_29.i37 = icmp slt ptr %this.1, %limit.1
  br i1 %_29.i37, label %bb25.i, label %bb5.i.lr.ph

bb5.i.lr.ph:                                      ; preds = %evolve.tuple.get.exit
  %_11.i = getelementptr inbounds i8, ptr %raw_tuple.i, i64 16
  %6 = getelementptr inbounds i8, ptr %raw_tuple.i, i64 24
  br label %bb5.i

bb26.i:                                           ; preds = %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

bb5.i:                                            ; preds = %bb5.i, %bb5.i.lr.ph
  %internal_index.sroa.0.0.i38 = phi i64 [ %start1.i, %bb5.i.lr.ph ], [ %_48.0.i, %bb5.i ]
  %_2.i.i = inttoptr i64 %internal_index.sroa.0.0.i38 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %6, align 8
  %7 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i533, ptr noundef %_0.1.i635, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_8.i25, ptr noundef %_0.sroa.3.0.i) #33
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.0.i38, i64 -1)
  %_48.1.i = extractvalue { i64, i1 } %8, 1
  %_48.0.i = extractvalue { i64, i1 } %8, 0
  %_29.i = icmp slt i64 %_48.0.i, %limit.i
  %or.cond39 = or i1 %_48.1.i, %_29.i
  br i1 %or.cond39, label %bb25.i, label %bb5.i, !prof !63

bb25.i:                                           ; preds = %bb5.i, %evolve.tuple.get.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

"evolve.intrinsic2.step!.exit":                   ; preds = %bb26.i, %bb25.i
  %9 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %10 = insertvalue { i64, ptr } %9, ptr %this.1, 1
  ret { i64, ptr } %10
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.loop!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %tuple.0, ptr noundef %tuple.1) unnamed_addr #4 {
start:
  %raw_tuple.i = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple.i, i8 0, i64 16, i1 false)
  %0 = and i64 %tuple.0, 65535
  %_0.i4.i.not = icmp eq i64 %0, 19
  br i1 %_0.i4.i.not, label %bb10.i, label %bb26.i

bb10.i:                                           ; preds = %start
  %_6.i3 = icmp ugt i64 %tuple.0, 12884901887
  br i1 %_6.i3, label %evolve.tuple.get.exit10.thread, label %evolve.tuple.get.exit10

evolve.tuple.get.exit10.thread:                   ; preds = %bb10.i
  %_9.i9 = getelementptr inbounds i8, ptr %tuple.1, i64 48
  %1 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %1)
  %_0.0.i530 = load i64, ptr %_9.i9, align 8, !noundef !3
  %2 = getelementptr inbounds i8, ptr %tuple.1, i64 56
  %_0.1.i631 = load ptr, ptr %2, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit10:                          ; preds = %bb10.i
  %_6.i.not = icmp ult i64 %tuple.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit10.thread, %evolve.tuple.get.exit10
  %_0.1.i636 = phi ptr [ %_0.1.i631, %evolve.tuple.get.exit10.thread ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i534 = phi i64 [ %_0.0.i530, %evolve.tuple.get.exit10.thread ], [ 0, %evolve.tuple.get.exit10 ]
  %_9.i1 = getelementptr inbounds i8, ptr %tuple.1, i64 16
  %3 = icmp ne ptr %tuple.1, null
  tail call void @llvm.assume(i1 %3)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit10, %bb2.i
  %_0.1.i635 = phi ptr [ %_0.1.i636, %bb2.i ], [ null, %evolve.tuple.get.exit10 ]
  %_0.0.i533 = phi i64 [ %_0.0.i534, %bb2.i ], [ 0, %evolve.tuple.get.exit10 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i1, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit10 ]
  %4 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %tuple.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %tuple.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %5 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %5, align 8, !noundef !3
  %_0.i24 = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i25 = shl i64 %_0.i24, 32
  %_8.i26 = or disjoint i64 %_10.i25, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %tuple.1
  %_11.i = getelementptr inbounds i8, ptr %raw_tuple.i, i64 16
  %6 = getelementptr inbounds i8, ptr %raw_tuple.i, i64 24
  store i64 4, ptr %_11.i, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8
  %7 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i533, ptr noundef %_0.1.i635, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_8.i26, ptr noundef %_0.sroa.3.0.i) #33
  br label %bb36.i

bb26.i:                                           ; preds = %start
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

bb36.i:                                           ; preds = %evolve.tuple.get.exit, %bb36.i
  %8 = phi { i64, i1 } [ { i64 2, i1 false }, %evolve.tuple.get.exit ], [ %10, %bb36.i ]
  %_48.0.i = extractvalue { i64, i1 } %8, 0
  %_2.i.i = inttoptr i64 %_48.0.i to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.i, ptr %6, align 8
  %9 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i533, ptr noundef %_0.1.i635, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple.i, i64 noundef %_8.i26, ptr noundef %_0.sroa.3.0.i) #33
  %10 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_48.0.i, i64 1)
  %_48.1.i = extractvalue { i64, i1 } %10, 1
  br i1 %_48.1.i, label %bb25.i, label %bb36.i, !prof !64

bb25.i:                                           ; preds = %bb36.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple.i)
  br label %"evolve.intrinsic2.step!.exit"

"evolve.intrinsic2.step!.exit":                   ; preds = %bb26.i, %bb25.i
  %_0.i.not = icmp eq i64 %this.0, 257
  br i1 %_0.i.not, label %bb4, label %bb3, !prof !58

bb4:                                              ; preds = %"evolve.intrinsic2.step!.exit"
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17had768957450a0f86E(ptr noalias noundef nonnull readonly align 1 @alloc_50981fdc3d28c727f94146500adf1421, i64 noundef 41, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_332024b46f60319414f831d326a815b7) #34
  unreachable

bb3:                                              ; preds = %"evolve.intrinsic2.step!.exit"
  %11 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %12 = insertvalue { i64, ptr } %11, ptr %this.1, 1
  ret { i64, ptr } %12
}

; Function Attrs: alwaysinline nounwind nonlazybind
define { i64, ptr } @"evolve.intrinsic2.step!"(i64 noundef %this.0, ptr noundef %this.1, i64 noundef %limit.0, ptr noundef %limit.1, i64 noundef %step.0, ptr noundef %step.1, i64 noundef %closure.0, ptr noundef %closure.1) unnamed_addr #4 {
start:
  %raw_tuple = alloca [32 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %raw_tuple)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %raw_tuple, i8 0, i64 32, i1 false)
  %_0.i.i = icmp ne i64 %this.0, 4
  %_0.i2.i = icmp ne i64 %limit.0, 4
  %or.cond.i = or i1 %_0.i.i, %_0.i2.i
  %_0.i3.i = icmp ne i64 %step.0, 4
  %or.cond1.i = or i1 %or.cond.i, %_0.i3.i
  %0 = and i64 %closure.0, 65535
  %_0.i4.i = icmp ne i64 %0, 19
  %or.cond38 = or i1 %or.cond1.i, %_0.i4.i
  br i1 %or.cond38, label %bb26, label %bb8

bb8:                                              ; preds = %start
  %limit = ptrtoint ptr %limit.1 to i64
  %step = ptrtoint ptr %step.1 to i64
  %1 = icmp eq ptr %step.1, null
  br i1 %1, label %bb26, label %bb10

bb10:                                             ; preds = %bb8
  %start1 = ptrtoint ptr %this.1 to i64
  %_6.i9 = icmp ugt i64 %closure.0, 12884901887
  br i1 %_6.i9, label %evolve.tuple.get.exit16.thread, label %evolve.tuple.get.exit16

evolve.tuple.get.exit16.thread:                   ; preds = %bb10
  %_9.i15 = getelementptr inbounds i8, ptr %closure.1, i64 48
  %2 = icmp ne ptr %closure.1, null
  tail call void @llvm.assume(i1 %2)
  %_0.0.i1131 = load i64, ptr %_9.i15, align 8, !noundef !3
  %3 = getelementptr inbounds i8, ptr %closure.1, i64 56
  %_0.1.i1232 = load ptr, ptr %3, align 8, !noundef !3
  br label %bb2.i

evolve.tuple.get.exit16:                          ; preds = %bb10
  %_6.i.not = icmp ult i64 %closure.0, 4294967296
  br i1 %_6.i.not, label %evolve.tuple.get.exit, label %bb2.i

bb2.i:                                            ; preds = %evolve.tuple.get.exit16.thread, %evolve.tuple.get.exit16
  %_0.1.i1237 = phi ptr [ %_0.1.i1232, %evolve.tuple.get.exit16.thread ], [ null, %evolve.tuple.get.exit16 ]
  %_0.0.i1135 = phi i64 [ %_0.0.i1131, %evolve.tuple.get.exit16.thread ], [ 0, %evolve.tuple.get.exit16 ]
  %_9.i = getelementptr inbounds i8, ptr %closure.1, i64 16
  %4 = icmp ne ptr %closure.1, null
  tail call void @llvm.assume(i1 %4)
  br label %evolve.tuple.get.exit

evolve.tuple.get.exit:                            ; preds = %evolve.tuple.get.exit16, %bb2.i
  %_0.1.i1236 = phi ptr [ %_0.1.i1237, %bb2.i ], [ null, %evolve.tuple.get.exit16 ]
  %_0.0.i1134 = phi i64 [ %_0.0.i1135, %bb2.i ], [ 0, %evolve.tuple.get.exit16 ]
  %_3.sroa.0.0.i = phi ptr [ %_9.i, %bb2.i ], [ @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, %evolve.tuple.get.exit16 ]
  %5 = getelementptr inbounds i8, ptr %_3.sroa.0.0.i, i64 8
  %_0.1.i = load ptr, ptr %5, align 8, !nonnull !3, !noundef !3
  %_6.i.i = icmp ugt i64 %closure.0, 8589934591
  %_9.i.i = getelementptr inbounds i8, ptr %closure.1, i64 32
  %spec.select.i = select i1 %_6.i.i, ptr %_9.i.i, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f
  %6 = getelementptr inbounds i8, ptr %spec.select.i, i64 8
  %_0.1.i.i = load ptr, ptr %6, align 8, !noundef !3
  %_0.i24 = ptrtoint ptr %_0.1.i.i to i64
  %_3.not.i = icmp eq ptr %_0.1.i.i, null
  %_10.i25 = shl i64 %_0.i24, 32
  %_8.i26 = or disjoint i64 %_10.i25, 15
  %_0.sroa.3.0.i = select i1 %_3.not.i, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %closure.1
  %_25 = icmp sgt ptr %step.1, null
  %_2639 = icmp sgt ptr %this.1, %limit.1
  %or.cond40 = and i1 %_25, %_2639
  br i1 %or.cond40, label %bb25, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %evolve.tuple.get.exit
  %_28 = icmp slt ptr %step.1, null
  %_11.i = getelementptr inbounds i8, ptr %raw_tuple, i64 16
  %7 = getelementptr inbounds i8, ptr %raw_tuple, i64 24
  br i1 %_28, label %bb16.lr.ph.split.split.us, label %bb16.lr.ph.split.us

bb16.lr.ph.split.us:                              ; preds = %bb16.lr.ph
  br i1 %_25, label %bb16.us, label %bb16.lr.ph.split.us.split.us

bb16.lr.ph.split.us.split.us:                     ; preds = %bb16.lr.ph.split.us
  store i64 4, ptr %_11.i, align 8
  store ptr %this.1, ptr %7, align 8
  %8 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i1134, ptr noundef %_0.1.i1236, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_8.i26, ptr noundef %_0.sroa.3.0.i) #33
  %9 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %start1, i64 %step)
  %_48.1.us.us53 = extractvalue { i64, i1 } %9, 1
  br i1 %_48.1.us.us53, label %bb25, label %bb36.us.us, !prof !65

bb36.us.us:                                       ; preds = %bb16.lr.ph.split.us.split.us, %bb36.us.us
  %10 = phi { i64, i1 } [ %12, %bb36.us.us ], [ %9, %bb16.lr.ph.split.us.split.us ]
  %_48.0.us.us = extractvalue { i64, i1 } %10, 0
  %_2.i.us.us = inttoptr i64 %_48.0.us.us to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.us.us, ptr %7, align 8
  %11 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i1134, ptr noundef %_0.1.i1236, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_8.i26, ptr noundef %_0.sroa.3.0.i) #33
  %12 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_48.0.us.us, i64 %step)
  %_48.1.us.us = extractvalue { i64, i1 } %12, 1
  br i1 %_48.1.us.us, label %bb25, label %bb36.us.us, !prof !66

bb16.us:                                          ; preds = %bb16.lr.ph.split.us, %bb16.us
  %internal_index.sroa.0.041.us = phi i64 [ %_48.0.us, %bb16.us ], [ %start1, %bb16.lr.ph.split.us ]
  %_2.i.us = inttoptr i64 %internal_index.sroa.0.041.us to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.us, ptr %7, align 8
  %13 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i1134, ptr noundef %_0.1.i1236, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_8.i26, ptr noundef %_0.sroa.3.0.i) #33
  %14 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.041.us, i64 %step)
  %_48.1.us = extractvalue { i64, i1 } %14, 1
  %_48.0.us = extractvalue { i64, i1 } %14, 0
  %_26.us = icmp sgt i64 %_48.0.us, %limit
  %or.cond = or i1 %_48.1.us, %_26.us
  br i1 %or.cond, label %bb25, label %bb16.us, !prof !63

bb16.lr.ph.split.split.us:                        ; preds = %bb16.lr.ph
  %_29.us51 = icmp slt ptr %this.1, %limit.1
  br i1 %_29.us51, label %bb25, label %bb5.i.us44

bb5.i.us44:                                       ; preds = %bb16.lr.ph.split.split.us, %bb5.i.us44
  %internal_index.sroa.0.041.us4352 = phi i64 [ %_48.0.us48, %bb5.i.us44 ], [ %start1, %bb16.lr.ph.split.split.us ]
  %_2.i.us45 = inttoptr i64 %internal_index.sroa.0.041.us4352 to ptr
  store i64 4, ptr %_11.i, align 8
  store ptr %_2.i.us45, ptr %7, align 8
  %15 = call { i64, ptr } %_0.1.i(i64 noundef %_0.0.i1134, ptr noundef %_0.1.i1236, i64 noundef 8589934607, ptr noundef nonnull %raw_tuple, i64 noundef %_8.i26, ptr noundef %_0.sroa.3.0.i) #33
  %16 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %internal_index.sroa.0.041.us4352, i64 %step)
  %_48.1.us46 = extractvalue { i64, i1 } %16, 1
  %_48.0.us48 = extractvalue { i64, i1 } %16, 0
  %_29.us = icmp slt i64 %_48.0.us48, %limit
  %or.cond54 = or i1 %_48.1.us46, %_29.us
  br i1 %or.cond54, label %bb25, label %bb5.i.us44, !prof !63

bb26:                                             ; preds = %start, %bb8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple)
  br label %bb27

bb25:                                             ; preds = %bb36.us.us, %bb16.us, %bb5.i.us44, %bb16.lr.ph.split.split.us, %bb16.lr.ph.split.us.split.us, %evolve.tuple.get.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %raw_tuple)
  br label %bb27

bb27:                                             ; preds = %bb26, %bb25
  %_0.sroa.4.1 = phi ptr [ null, %bb26 ], [ %this.1, %bb25 ]
  %_0.sroa.0.1 = phi i64 [ 257, %bb26 ], [ 4, %bb25 ]
  %17 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.1, 0
  %18 = insertvalue { i64, ptr } %17, ptr %_0.sroa.4.1, 1
  ret { i64, ptr } %18
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @evolve.intrinsic2.add(i64 noundef %left.0, ptr noundef %left.1, i64 noundef %right.0, ptr noundef %right.1) unnamed_addr #12 {
start:
  %_7.not.i = icmp eq i64 %left.0, %right.0
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h72d3cb70a2ad2f29E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h72d3cb70a2ad2f29E.exit [
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
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h72d3cb70a2ad2f29E.exit

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
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select3 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
  %spec.select4 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h72d3cb70a2ad2f29E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17h72d3cb70a2ad2f29E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
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
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h6a4d7160924a5564E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h6a4d7160924a5564E.exit [
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
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h6a4d7160924a5564E.exit

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
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select3 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
  %spec.select4 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17h6a4d7160924a5564E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17h6a4d7160924a5564E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
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
  br i1 %_7.not.i, label %bb4.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hc61cc4c1432ac618E.exit

bb4.i:                                            ; preds = %start
  %_8.i = trunc i64 %left.0 to i16
  switch i16 %_8.i, label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hc61cc4c1432ac618E.exit [
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
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hc61cc4c1432ac618E.exit

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
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select3 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
  %spec.select4 = select i1 %_29.not.i, i64 5, i64 257
  br label %_ZN17evolve_inner_core9intrinsic4math11math_helper17hc61cc4c1432ac618E.exit

_ZN17evolve_inner_core9intrinsic4math11math_helper17hc61cc4c1432ac618E.exit: ; preds = %bb5.i, %bb6.i, %start, %bb4.i
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
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select1 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
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
  br i1 %cond, label %bb3, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hb3e9332649777d29E.exit.i.i.i"

"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hb3e9332649777d29E.exit.i.i.i": ; preds = %bb6.i
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
  %or.cond3.i = and i1 %_30.i, %cond.i
  %not.or.cond3.i = xor i1 %or.cond3.i, true
  %spec.select = select i1 %not.or.cond3.i, i1 true, i1 %5
  %_29.not.i = and i1 %_30.i, %spec.select
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select2 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
  %spec.select3 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i, %bb6.i, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hb3e9332649777d29E.exit.i.i.i", %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ %spec.select2, %bb5.i ], [ %2, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hb3e9332649777d29E.exit.i.i.i" ], [ null, %bb6.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ %spec.select3, %bb5.i ], [ 4, %"_ZN4core3num21_$LT$impl$u20$i64$GT$10rem_euclid17hb3e9332649777d29E.exit.i.i.i" ], [ 4, %bb6.i ]
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
  br i1 %or.cond.i1, label %bb3, label %_ZN4core3ops8function6FnOnce9call_once17h024658de3cce54a9E.exit, !prof !59

_ZN4core3ops8function6FnOnce9call_once17h024658de3cce54a9E.exit: ; preds = %bb5.i.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %rem.sroa.7.2.i.i = srem i64 %_12.i, %_6
  %2 = sdiv i64 %_12.i, %_6
  %.not = icmp eq i64 %rem.sroa.7.2.i.i, 0
  %_2.i.i = inttoptr i64 %2 to ptr
  %spec.select = select i1 %.not, ptr %_2.i.i, ptr null
  %spec.select6 = select i1 %.not, i64 4, i64 257
  br label %bb3

bb5.i:                                            ; preds = %bb4.i
  %_26.i = ptrtoint ptr %left.1 to i64
  %_19.i = bitcast i64 %_26.i to double
  %_20.i = bitcast i64 %_6 to double
  %_0.i.i = fdiv double %_19.i, %_20.i
  %3 = tail call double @llvm.fabs.f64(double %_0.i.i)
  %_30.i = fcmp une double %3, 0x7FF0000000000000
  %_36.i = bitcast double %_0.i.i to i64
  %_37.i = and i64 %_36.i, 4503599627370495
  %4 = icmp eq i64 %_37.i, 0
  %_38.i = and i64 %_36.i, 9218868437227405312
  %cond.i = icmp ne i64 %_38.i, 0
  %5 = or i1 %4, %cond.i
  %_29.not.i = and i1 %_30.i, %5
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select8 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
  %spec.select9 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb3:                                              ; preds = %bb4.i, %bb5.i.i, %_ZN4core3ops8function6FnOnce9call_once17h024658de3cce54a9E.exit, %bb5.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ null, %bb4.i ], [ null, %bb5.i.i ], [ %spec.select, %_ZN4core3ops8function6FnOnce9call_once17h024658de3cce54a9E.exit ], [ %spec.select8, %bb5.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 257, %bb4.i ], [ 257, %bb5.i.i ], [ %spec.select6, %_ZN4core3ops8function6FnOnce9call_once17h024658de3cce54a9E.exit ], [ %spec.select9, %bb5.i ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %7
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
  br i1 %or.cond.i.i, label %bb3, label %bb8.i, !prof !59

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
  %or.cond3.i = and i1 %_30.i, %cond.i
  %not.or.cond3.i = xor i1 %or.cond3.i, true
  %spec.select = select i1 %not.or.cond3.i, i1 true, i1 %3
  %_29.not.i = and i1 %_30.i, %spec.select
  %_2.i4.i = inttoptr i64 %_36.i to ptr
  %spec.select8 = select i1 %_29.not.i, ptr %_2.i4.i, ptr null
  %spec.select9 = select i1 %_29.not.i, i64 5, i64 257
  br label %bb3

bb8.i:                                            ; preds = %bb2.i.i
  %_12.i = ptrtoint ptr %left.1 to i64
  %_5.i.i = sdiv i64 %_12.i, %_6
  %_2.i.i = inttoptr i64 %_5.i.i to ptr
  br label %bb3

bb3:                                              ; preds = %bb8.i, %bb4.i, %bb5.i, %bb2.i.i, %start
  %_0.sroa.3.0 = phi ptr [ null, %start ], [ %_2.i.i, %bb8.i ], [ null, %bb4.i ], [ %spec.select8, %bb5.i ], [ null, %bb2.i.i ]
  %_0.sroa.0.0 = phi i64 [ 257, %start ], [ 4, %bb8.i ], [ 257, %bb4.i ], [ %spec.select9, %bb5.i ], [ 257, %bb2.i.i ]
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
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write)
define { ptr, i64 } @"_ZN17evolve_inner_core6string7use_str98_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$$RF$str$GT$4from17h90337d22dd860908E"(i64 noundef %value.0, ptr noundef %value.1) unnamed_addr #15 {
start:
  %_2.i.i = lshr i64 %value.0, 32
  %0 = icmp ne ptr %value.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = insertvalue { ptr, i64 } poison, ptr %value.1, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_2.i.i, 1
  ret { ptr, i64 } %2
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
  %_3.sroa.1.0.value.sroa_idx = getelementptr inbounds i8, ptr %value, i64 8
  %_3.sroa.1.0.copyload = load ptr, ptr %_3.sroa.1.0.value.sroa_idx, align 8, !nonnull !3, !noundef !3
  %_3.sroa.2.0.value.sroa_idx = getelementptr inbounds i8, ptr %value, i64 16
  %_3.sroa.2.0.copyload = load i64, ptr %_3.sroa.2.0.value.sroa_idx, align 8
  %_5.i.i = shl i64 %_3.sroa.2.0.copyload, 32
  %_3.i.i = or disjoint i64 %_5.i.i, 6
  %0 = insertvalue { i64, ptr } poison, i64 %_3.i.i, 0
  %1 = insertvalue { i64, ptr } %0, ptr %_3.sroa.1.0.copyload, 1
  ret { i64, ptr } %1
}

; evolve_inner_core::string::use_str::<impl core::convert::From<evolve_inner_core::object::Object> for alloc::string::String>::from
; Function Attrs: nounwind nonlazybind
define void @"_ZN17evolve_inner_core6string7use_str112_$LT$impl$u20$core..convert..From$LT$evolve_inner_core..object..Object$GT$$u20$for$u20$alloc..string..String$GT$4from17hd08480819ad454eaE"(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([24 x i8]) align 8 dereferenceable(24) %_0, i64 noundef %value.0, ptr noundef readonly %value.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb18.i.i.i:
  %_2.i.i.i = lshr i64 %value.0, 32
  %0 = icmp ne ptr %value.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = icmp ult i64 %value.0, 4294967296
  br i1 %1, label %"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc8c8556cba1f30daE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i": ; preds = %bb18.i.i.i
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !67
  %_0.i.i.i.i.i.i = tail call noalias noundef ptr @__rust_alloc(i64 noundef %_2.i.i.i, i64 noundef 1) #33, !noalias !67
  %3 = icmp eq ptr %_0.i.i.i.i.i.i, null
  br i1 %3, label %bb3.i.i, label %"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc8c8556cba1f30daE.exit"

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i"
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5290ea7eaad4c986E(i64 noundef 1, i64 %_2.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_131754877679536c458328a297475715) #34, !noalias !75
  unreachable

"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc8c8556cba1f30daE.exit": ; preds = %bb18.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i"
  %_4.sroa.10.0.ph.i.i = phi ptr [ %_0.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i" ], [ inttoptr (i64 1 to ptr), %bb18.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %_4.sroa.10.0.ph.i.i, ptr nonnull readonly align 1 %value.1, i64 %_2.i.i.i, i1 false), !noalias !76
  store i64 %_2.i.i.i, ptr %_0, align 8
  %_3.sroa.4.0._0.sroa_idx = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %_4.sroa.10.0.ph.i.i, ptr %_3.sroa.4.0._0.sroa_idx, align 8
  %_3.sroa.5.0._0.sroa_idx = getelementptr inbounds i8, ptr %_0, i64 16
  store i64 %_2.i.i.i, ptr %_3.sroa.5.0._0.sroa_idx, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
define noundef range(i64 -1, 2) i64 @evolve_string_bytes_cmp(ptr noalias nocapture noundef nonnull readonly align 1 %value1.0, i64 noundef %value1.1, ptr noalias nocapture noundef nonnull readonly align 1 %value2.0, i64 noundef %value2.1) unnamed_addr #16 {
start:
  %left.1.right.1.i = tail call i64 @llvm.umin.i64(i64 %value1.1, i64 %value2.1)
  %diff.i = sub i64 %value1.1, %value2.1
  %0 = tail call i32 @memcmp(ptr nonnull readonly %value1.0, ptr nonnull readonly %value2.0, i64 %left.1.right.1.i), !alias.scope !77
  %1 = sext i32 %0 to i64
  %2 = icmp eq i32 %0, 0
  %spec.store.select.i = select i1 %2, i64 %diff.i, i64 %1
  %.not.i = icmp ne i64 %spec.store.select.i, 0
  %3 = zext i1 %.not.i to i64
  %.inv = icmp sgt i64 %spec.store.select.i, -1
  %_0 = select i1 %.inv, i64 %3, i64 -1
  ret i64 %_0
}

; Function Attrs: alwaysinline mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
define noundef zeroext i1 @evolve_string_bytes_eq(ptr noalias nocapture noundef nonnull readonly align 1 %value1.0, i64 noundef %value1.1, ptr noalias nocapture noundef nonnull readonly align 1 %value2.0, i64 noundef %value2.1) unnamed_addr #16 {
start:
  %_3.not = icmp eq i64 %value1.1, %value2.1
  br i1 %_3.not, label %bb2, label %bb3

bb2:                                              ; preds = %start
  %bcmp = tail call i32 @bcmp(ptr nonnull %value1.0, ptr nonnull %value2.0, i64 %value1.1)
  %.not.i.not = icmp eq i32 %bcmp, 0
  br label %bb3

bb3:                                              ; preds = %start, %bb2
  %_0.sroa.0.0 = phi i1 [ %.not.i.not, %bb2 ], [ false, %start ]
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
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write)
define { ptr, i64 } @"_ZN17evolve_inner_core6string51_$LT$impl$u20$evolve_inner_core..object..Object$GT$11extract_str17h87a367f8d0ebba7eE"(i64 noundef %self.0, ptr noundef %self.1) unnamed_addr #15 {
start:
  %_2.i = lshr i64 %self.0, 32
  %0 = icmp ne ptr %self.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = insertvalue { ptr, i64 } poison, ptr %self.1, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_2.i, 1
  ret { ptr, i64 } %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none)
define { i64, ptr } @test_evolve.from.ptr.tuple(i64 noundef %size, ptr noundef %ptr) unnamed_addr #9 {
start:
  %_3.not = icmp eq i64 %size, 0
  %_10 = shl i64 %size, 32
  %_8 = or disjoint i64 %_10, 15
  %_0.sroa.3.0 = select i1 %_3.not, ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %ptr
  %0 = insertvalue { i64, ptr } poison, i64 %_8, 0
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
  br i1 %1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccb77f0e4b38418dE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i": ; preds = %bb18.i.i.i
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !81
  %_0.i.i.i.i.i.i = tail call noalias noundef align 8 ptr @__rust_alloc(i64 noundef %_9.0.i.i.i.i.i, i64 noundef 8) #33, !noalias !81
  %3 = icmp eq ptr %_0.i.i.i.i.i.i, null
  br i1 %3, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccb77f0e4b38418dE.exit.i.i"

bb3.i.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i", %bb1
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb1 ], [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i" ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h5290ea7eaad4c986E(i64 noundef %_4.sroa.4.0.i.i, i64 %_9.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_751b42ff20b2cb8b70982716aabdd11e) #34, !noalias !88
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccb77f0e4b38418dE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i", %bb18.i.i.i
  %_4.sroa.4.0.ph.i.i = phi i64 [ %_6, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i" ], [ 0, %bb18.i.i.i ]
  %_4.sroa.10.0.ph.i.i = phi ptr [ %_0.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h16549964767cb523E.exit.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb18.i.i.i ]
  %_8.i.i = icmp uge i64 %_4.sroa.4.0.ph.i.i, %_6
  tail call void @llvm.assume(i1 %_8.i.i)
  %_276.i.i = icmp ugt i64 %_6, 1
  br i1 %_276.i.i, label %bb15.thread.i.i, label %bb15.i.i

bb15.thread.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccb77f0e4b38418dE.exit.i.i"
  %4 = add nsw i64 %_9.0.i.i.i.i.i, -16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %_4.sroa.10.0.ph.i.i, i8 0, i64 %4, i1 false), !noalias !89
  %5 = getelementptr i8, ptr %_4.sroa.10.0.ph.i.i, i64 %_9.0.i.i.i.i.i
  %scevgep.i.i = getelementptr i8, ptr %5, i64 -16
  br label %bb4.i.i

bb15.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccb77f0e4b38418dE.exit.i.i"
  %_19.not.i.i = icmp eq i64 %_6, 0
  br i1 %_19.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2698b83ad910ab57E.exit", label %bb4.i.i

bb4.i.i:                                          ; preds = %bb15.i.i, %bb15.thread.i.i
  %ptr.sroa.0.0.lcssa16.i.i = phi ptr [ %scevgep.i.i, %bb15.thread.i.i ], [ %_4.sroa.10.0.ph.i.i, %bb15.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ptr.sroa.0.0.lcssa16.i.i, i8 0, i64 16, i1 false), !noalias !89
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2698b83ad910ab57E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2698b83ad910ab57E.exit": ; preds = %bb15.i.i, %bb4.i.i
  %_14.i = icmp ult i64 %_6, 576460752303423488
  tail call void @llvm.assume(i1 %_14.i)
  %_10.i = shl i64 %size, 32
  %_8.i = or disjoint i64 %_10.i, 15
  br label %bb6

bb6:                                              ; preds = %start, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2698b83ad910ab57E.exit"
  %_0.sroa.3.0 = phi ptr [ %_4.sroa.10.0.ph.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2698b83ad910ab57E.exit" ], [ @alloc_6f27fed333f105f471eaa5362a49c01f, %start ]
  %_0.sroa.0.0 = phi i64 [ %_8.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2698b83ad910ab57E.exit" ], [ 15, %start ]
  %6 = insertvalue { i64, ptr } poison, i64 %_0.sroa.0.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %_0.sroa.3.0, 1
  ret { i64, ptr } %7
}

; Function Attrs: nounwind nonlazybind
define void @evolve_tuple_alloc_test(ptr dead_on_unwind noalias nocapture noundef writable writeonly sret([24 x i8]) align 8 dereferenceable(24) %_0, i64 noundef %size) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [0 x i8], align 1
  %_2.not = icmp eq i64 %size, 0
  br i1 %_2.not, label %bb7, label %bb1

bb7:                                              ; preds = %start
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 15, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr @alloc_6f27fed333f105f471eaa5362a49c01f, ptr %1, align 8
  br label %bb9

bb1:                                              ; preds = %start
  %_6 = shl i64 %size, 4
  %_5 = add i64 %_6, 16
; call core::alloc::layout::Layout::is_size_align_valid
  %_14 = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h8c78d244ad032eaaE(i64 noundef %_5, i64 noundef 16) #33
  br i1 %_14, label %bb11.split, label %bb12.split

bb12.split:                                       ; preds = %bb1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
; call core::result::unwrap_failed
  call void @_ZN4core6result13unwrap_failed17h3ff7104a9ace307aE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_b624b7e2d3ecf9b99322b14ca7f68035) #34
  unreachable

bb11.split:                                       ; preds = %bb1
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %tuple = tail call noundef align 16 ptr @__rust_alloc_zeroed(i64 noundef %_5, i64 noundef 16) #33
  %3 = icmp eq ptr %tuple, null
  br i1 %3, label %bb3, label %bb5

bb3:                                              ; preds = %bb11.split
  %4 = getelementptr inbounds i8, ptr %_0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb9

bb5:                                              ; preds = %bb11.split
  %_10.i = shl i64 %size, 32
  %_8.i = or disjoint i64 %_10.i, 15
  %5 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_8.i, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %tuple, ptr %6, align 8
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
  %_6.not = icmp ult i64 %_2.i.i, %index
  %_9 = getelementptr inbounds %"object::Object", ptr %self.1, i64 %index
  %spec.select = select i1 %_6.not, ptr @alloc_e9164108e3a8c437bd8ee95ca79fdb9f, ptr %_9
  %_0.0 = load i64, ptr %spec.select, align 8, !noundef !3
  %0 = getelementptr inbounds i8, ptr %spec.select, i64 8
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
  %_11 = getelementptr inbounds %"object::Object", ptr %1, i64 %index
  store i64 %value.0, ptr %_11, align 8
  %3 = getelementptr inbounds i8, ptr %_11, i64 8
  store ptr %value.1, ptr %3, align 8
  br label %bb4
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::vec::Vec<alloc::string::String>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs135_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h17a4aa28285f9c7eE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %me.sroa.0.0.copyload.i = load i64, ptr %value, align 8, !alias.scope !92, !noalias !95
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds i8, ptr %value, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !92, !noalias !95, !nonnull !3, !noundef !3
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds i8, ptr %value, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !92, !noalias !95
  %_34.i = icmp ult i64 %me.sroa.5.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %_34.i)
  %_17.i = getelementptr inbounds %"alloc::string::String", ptr %me.sroa.4.0.copyload.i, i64 %me.sroa.5.0.copyload.i
  %0 = icmp sgt i64 %me.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %0)
  %_15.i.i.i = mul i64 %me.sroa.0.0.copyload.i, 24
  %_44.not5.i.i.i.i.i.i = icmp eq i64 %me.sroa.5.0.copyload.i, 0
  br i1 %_44.not5.i.i.i.i.i.i, label %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i", label %bb11.i.i.i.i.i.i

bb11.i.i.i.i.i.i:                                 ; preds = %start, %bb11.i.i.i.i.i.i
  %accum.sroa.4.07.i.i.i.i.i.i = phi ptr [ %_5.i.i.i.i.i.i.i.i, %bb11.i.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %start ]
  %_4946.i.i.i.i.i.i = phi ptr [ %_49.i.i.i.i.i.i, %bb11.i.i.i.i.i.i ], [ %me.sroa.4.0.copyload.i, %start ]
  %tmp.sroa.2.0._46.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %_4946.i.i.i.i.i.i, i64 8
  %tmp.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %tmp.sroa.2.0._46.sroa_idx.i.i.i.i.i.i, align 8, !noalias !97, !nonnull !3, !noundef !3
  %tmp.sroa.3.0._46.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %_4946.i.i.i.i.i.i, i64 16
  %tmp.sroa.3.0.copyload.i.i.i.i.i.i = load i64, ptr %tmp.sroa.3.0._46.sroa_idx.i.i.i.i.i.i, align 8, !noalias !97
  %_49.i.i.i.i.i.i = getelementptr inbounds i8, ptr %_4946.i.i.i.i.i.i, i64 24
  %_5.i.i.i.i.i.i.i.i.i.i.i = shl i64 %tmp.sroa.3.0.copyload.i.i.i.i.i.i, 32
  %_3.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %_5.i.i.i.i.i.i.i.i.i.i.i, 6
  store i64 %_3.i.i.i.i.i.i.i.i.i.i.i, ptr %accum.sroa.4.07.i.i.i.i.i.i, align 8, !noalias !113
  %1 = getelementptr inbounds i8, ptr %accum.sroa.4.07.i.i.i.i.i.i, i64 8
  store ptr %tmp.sroa.2.0.copyload.i.i.i.i.i.i, ptr %1, align 8, !noalias !113
  %_5.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %accum.sroa.4.07.i.i.i.i.i.i, i64 16
  %_44.not.i.i.i.i.i.i = icmp eq ptr %_49.i.i.i.i.i.i, %_17.i
  br i1 %_44.not.i.i.i.i.i.i, label %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i.thread", label %bb11.i.i.i.i.i.i

"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i.thread": ; preds = %bb11.i.i.i.i.i.i
  br label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hecaac50bf21a8a74E.exit.i.i.i"

"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i": ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  br label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hecaac50bf21a8a74E.exit.i.i.i"

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hecaac50bf21a8a74E.exit.i.i.i": ; preds = %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i", %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i.thread"
  %accum.sroa.4.0.lcssa.i.i.i.i.i.i4 = phi ptr [ %_5.i.i.i.i.i.i.i.i, %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i.thread" ], [ %me.sroa.4.0.copyload.i, %"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E.exit.i.i.i" ]
  %_86.not.i.i.i = icmp eq i64 %me.sroa.0.0.copyload.i, 0
  br i1 %_86.not.i.i.i, label %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit", label %bb28.i.i.i

bb28.i.i.i:                                       ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hecaac50bf21a8a74E.exit.i.i.i"
  %_88.i.i.i = and i64 %_15.i.i.i, -16
  %_40.not.i.i.i = icmp eq i64 %_15.i.i.i, %_88.i.i.i
  br i1 %_40.not.i.i.i, label %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit", label %bb31.i.i.i

bb31.i.i.i:                                       ; preds = %bb28.i.i.i
  %2 = icmp eq i64 %_88.i.i.i, 0
  br i1 %2, label %bb2.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he50c2e8795791bb7E.exit.i.i.i"

bb2.i.i.i.i:                                      ; preds = %bb31.i.i.i
  %3 = icmp eq i64 %_15.i.i.i, 0
  br i1 %3, label %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit", label %bb11.i.i.i.i

bb11.i.i.i.i:                                     ; preds = %bb2.i.i.i.i
  tail call void @__rust_dealloc(ptr noundef nonnull %me.sroa.4.0.copyload.i, i64 noundef %_15.i.i.i, i64 noundef 8) #33, !noalias !119
  br label %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he50c2e8795791bb7E.exit.i.i.i": ; preds = %bb31.i.i.i
  %4 = tail call noundef align 8 ptr @__rust_realloc(ptr noundef nonnull %me.sroa.4.0.copyload.i, i64 noundef %_15.i.i.i, i64 noundef 8, i64 noundef %_88.i.i.i) #33, !noalias !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb14.i.i.i, label %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit"

bb14.i.i.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he50c2e8795791bb7E.exit.i.i.i"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E(i64 noundef 8, i64 noundef %_88.i.i.i) #34, !noalias !119
  unreachable

"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit": ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hecaac50bf21a8a74E.exit.i.i.i", %bb28.i.i.i, %bb2.i.i.i.i, %bb11.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he50c2e8795791bb7E.exit.i.i.i"
  %dst_buf.sroa.0.0.i.i.i = phi ptr [ %me.sroa.4.0.copyload.i, %bb28.i.i.i ], [ %me.sroa.4.0.copyload.i, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hecaac50bf21a8a74E.exit.i.i.i" ], [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17he50c2e8795791bb7E.exit.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb11.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i.i ]
  %6 = ptrtoint ptr %accum.sroa.4.0.lcssa.i.i.i.i.i.i4 to i64
  %7 = ptrtoint ptr %me.sroa.4.0.copyload.i to i64
  %8 = sub nuw i64 %6, %7
  %_17.i.i = icmp sgt i64 %8, -1
  tail call void @llvm.assume(i1 %_17.i.i)
  %9 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !120
  %_0.i.i.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @__rust_alloc(i64 noundef 32, i64 noundef 8) #33, !noalias !120
  %10 = icmp eq ptr %_0.i.i.i.i.i, null
  br i1 %10, label %bb2.i.i.i, label %"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h0a272d76d4eedb45E.exit"

bb2.i.i.i:                                        ; preds = %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E(i64 noundef 8, i64 noundef 32) #34, !noalias !120
  unreachable

"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h0a272d76d4eedb45E.exit": ; preds = %"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E.exit"
  %11 = lshr exact i64 %8, 4
  %dst_cap13.i.i.i = lshr i64 %_15.i.i.i, 4
  store i64 %dst_cap13.i.i.i, ptr %_0.i.i.i.i.i, align 8, !noalias !127
  %_2.sroa.4.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %_0.i.i.i.i.i, i64 8
  store ptr %dst_buf.sroa.0.0.i.i.i, ptr %_2.sroa.4.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !127
  %_2.sroa.5.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %_0.i.i.i.i.i, i64 16
  store i64 0, ptr %_2.sroa.5.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !127
  %_2.sroa.6.0._0.i.i.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %_0.i.i.i.i.i, i64 24
  store i64 %11, ptr %_2.sroa.6.0._0.i.i.i.i.sroa_idx.i, align 8, !noalias !127
  %12 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i.i.i, 1
  ret { i64, ptr } %12
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::vec::Vec<evolve_inner_core::object::Object>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h0a272d76d4eedb45E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %me.sroa.0.0.copyload.i = load i64, ptr %value, align 8, !alias.scope !128, !noalias !131
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds i8, ptr %value, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !128, !noalias !131, !nonnull !3, !noundef !3
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds i8, ptr %value, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !128, !noalias !131
  %_17.i = icmp ult i64 %me.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %_17.i)
  %0 = icmp sgt i64 %me.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %0)
  %1 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !133
  %_0.i.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @__rust_alloc(i64 noundef 32, i64 noundef 8) #33, !noalias !133
  %2 = icmp eq ptr %_0.i.i.i.i, null
  br i1 %2, label %bb2.i.i, label %"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E.exit"

bb2.i.i:                                          ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E(i64 noundef 8, i64 noundef 32) #34, !noalias !133
  unreachable

"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E.exit": ; preds = %start
  store i64 %me.sroa.0.0.copyload.i, ptr %_0.i.i.i.i, align 8
  %_2.sroa.4.0._0.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %_0.i.i.i.i, i64 8
  store ptr %me.sroa.4.0.copyload.i, ptr %_2.sroa.4.0._0.i.i.i.i.sroa_idx, align 8
  %_2.sroa.5.0._0.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %_0.i.i.i.i, i64 16
  store i64 0, ptr %_2.sroa.5.0._0.i.i.i.i.sroa_idx, align 8
  %_2.sroa.6.0._0.i.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %_0.i.i.i.i, i64 24
  store i64 %me.sroa.5.0.copyload.i, ptr %_2.sroa.6.0._0.i.i.i.i.sroa_idx, align 8
  %3 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i.i, 1
  ret { i64, ptr } %3
}

; evolve_inner_core::object_from::vecs::<impl core::convert::From<alloc::collections::vec_deque::VecDeque<evolve_inner_core::object::Object>> for evolve_inner_core::object::Object>::from
; Function Attrs: nounwind nonlazybind
define { i64, ptr } @"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %value) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1, !noalias !138
  %_0.i.i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @__rust_alloc(i64 noundef 32, i64 noundef 8) #33, !noalias !138
  %1 = icmp eq ptr %_0.i.i.i, null
  br i1 %1, label %bb2.i, label %_ZN5alloc5alloc15exchange_malloc17h2c8a02dcfd7e37fdE.exit

bb2.i:                                            ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E(i64 noundef 8, i64 noundef 32) #34, !noalias !138
  unreachable

_ZN5alloc5alloc15exchange_malloc17h2c8a02dcfd7e37fdE.exit: ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %value, i64 32, i1 false)
  %2 = insertvalue { i64, ptr } { i64 16, ptr poison }, ptr %_0.i.i.i, 1
  ret { i64, ptr } %2
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; <core::ffi::c_str::CStr as core::fmt::Debug>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN59_$LT$core..ffi..c_str..CStr$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3563c6641920b06E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hf837af851e168251E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0c542a8f9da7fe57E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for i64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h997680046174c8a8E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h8924e7690efad5b2E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h01b67a4fa9478552E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u16>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17hd124dd2e25208af6E"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h561d0b7e753cffb3E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::UpperHex for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17hf4f159acbc51d950E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::<impl core::fmt::LowerHex for u32>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17hdea4f7a61c8f3e4bE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #21

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking5panic17had768957450a0f86E(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #22

; core::alloc::layout::Layout::is_size_align_valid
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h8c78d244ad032eaaE(i64 noundef, i64 noundef) unnamed_addr #0

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core6result13unwrap_failed17h3ff7104a9ace307aE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(32), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #22

; core::fmt::pointer_fmt_inner
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17h76f21e636b0fba41E(i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc7raw_vec12handle_error17h5290ea7eaad4c986E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #23

; alloc::alloc::handle_alloc_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0)
declare noalias noundef ptr @__rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #24

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0)
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #25

; Function Attrs: nounwind nonlazybind allockind("free")
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #26

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3)
declare noalias noundef ptr @__rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #27

; core::fmt::Formatter::write_str
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haa15194e1d29df39E(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; core::fmt::float::<impl core::fmt::Debug for f64>::fmt
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h572c919ce4672795E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::Formatter::debug_struct
; Function Attrs: nounwind nonlazybind
declare void @_ZN4core3fmt9Formatter12debug_struct17h5b24f7dcc2b2390dE(ptr dead_on_unwind noalias nocapture noundef writable sret([16 x i8]) align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; core::fmt::builders::DebugStruct::field
; Function Attrs: nounwind nonlazybind
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h3e8524a6e913852fE(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(32)) unnamed_addr #0

; core::fmt::builders::DebugStruct::finish
; Function Attrs: nounwind nonlazybind
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h0d39fbc85c89cd38E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #32

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
attributes #14 = { mustprogress nofree nounwind nonlazybind willreturn memory(read, inaccessiblemem: write) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { alwaysinline mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read) "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nonlazybind "target-cpu"="x86-64" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { mustprogress nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("free") "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #32 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nounwind }
attributes #34 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.86.0 (05f9846f8 2025-03-31)"}
!3 = !{}
!4 = !{i64 1}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h6a4ad56db5752409E: %self"}
!8 = distinct !{!8, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h6a4ad56db5752409E"}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hd25d8062a1994477E: %self"}
!12 = distinct !{!12, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hd25d8062a1994477E"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E: %_0"}
!15 = distinct !{!15, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h4e995026017cb410E"}
!16 = !{i64 0, i64 2}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h15cc30359885c660E: %_0"}
!19 = distinct !{!19, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h15cc30359885c660E"}
!20 = distinct !{!20, !21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE: argument 0"}
!21 = distinct !{!21, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E: %x"}
!24 = distinct !{!24, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17he5179bc56c5bffdbE: %self"}
!27 = distinct !{!27, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17he5179bc56c5bffdbE"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E: %self"}
!30 = distinct !{!30, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17hede6fde747a39478E: %self"}
!33 = distinct !{!33, !"_ZN17evolve_inner_core7closure51_$LT$impl$u20$evolve_inner_core..object..Object$GT$12closure_size17hede6fde747a39478E"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE: %self"}
!36 = distinct !{!36, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE: %other"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %left.0"}
!41 = distinct !{!41, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E"}
!42 = distinct !{!42, !41, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %right.0"}
!43 = !{!35, !38}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE: %self"}
!46 = distinct !{!46, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"_ZN68_$LT$evolve_inner_core..object..Object$u20$as$u20$core..cmp..Ord$GT$3cmp17h84544d517872eaaaE: %other"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %left.0"}
!51 = distinct !{!51, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E"}
!52 = distinct !{!52, !51, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %right.0"}
!53 = !{!45, !48}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %left.0"}
!56 = distinct !{!56, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E"}
!57 = distinct !{!57, !56, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %right.0"}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 1, i32 4001}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E: %self"}
!62 = distinct !{!62, !"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$3get17h4413b188383c9fa0E"}
!63 = !{!"branch_weights", i32 2002, i32 2000}
!64 = !{!"branch_weights", i32 1, i32 1999}
!65 = !{!"branch_weights", i32 1, i32 127}
!66 = !{!"branch_weights", i32 127, i32 255873}
!67 = !{!68, !70, !72, !74}
!68 = distinct !{!68, !69, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h15cc30359885c660E: %_0"}
!69 = distinct !{!69, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h15cc30359885c660E"}
!70 = distinct !{!70, !71, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE: argument 0"}
!71 = distinct !{!71, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE"}
!72 = distinct !{!72, !73, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc8c8556cba1f30daE: %_0"}
!73 = distinct !{!73, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc8c8556cba1f30daE"}
!74 = distinct !{!74, !73, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc8c8556cba1f30daE: %s.0"}
!75 = !{!72, !74}
!76 = !{!72}
!77 = !{!78, !80}
!78 = distinct !{!78, !79, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %left.0"}
!79 = distinct !{!79, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E"}
!80 = distinct !{!80, !79, !"_ZN48_$LT$A$u20$as$u20$core..slice..cmp..SliceOrd$GT$7compare17h33f1d4830e1fefa7E: %right.0"}
!81 = !{!82, !84, !86}
!82 = distinct !{!82, !83, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h15cc30359885c660E: %_0"}
!83 = distinct !{!83, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h15cc30359885c660E"}
!84 = distinct !{!84, !85, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE: argument 0"}
!85 = distinct !{!85, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17had05630f3089855dE"}
!86 = distinct !{!86, !87, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0c78aebe2ed69b81E: %_0"}
!87 = distinct !{!87, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0c78aebe2ed69b81E"}
!88 = !{!86}
!89 = !{!90, !86}
!90 = distinct !{!90, !91, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h9ac163de9bed38efE: %self"}
!91 = distinct !{!91, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h9ac163de9bed38efE"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3687724972ae813E: %self"}
!94 = distinct !{!94, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3687724972ae813E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he3687724972ae813E: %_0"}
!97 = !{!98, !100, !102, !104, !106, !107, !109, !110, !112}
!98 = distinct !{!98, !99, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5be22ab98d1758f8E: %self"}
!99 = distinct !{!99, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5be22ab98d1758f8E"}
!100 = distinct !{!100, !101, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h3984171624701dbeE: %self"}
!101 = distinct !{!101, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h3984171624701dbeE"}
!102 = distinct !{!102, !103, !"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E: %self"}
!103 = distinct !{!103, !"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17h24b2bd74c66b9183E"}
!104 = distinct !{!104, !105, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17h9ac4cc0350bedfebE: %vec"}
!105 = distinct !{!105, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17h9ac4cc0350bedfebE"}
!106 = distinct !{!106, !105, !"_ZN5alloc3vec16in_place_collect18from_iter_in_place17h9ac4cc0350bedfebE: %iterator"}
!107 = distinct !{!107, !108, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h3c358d89be5ed9a6E: %_0"}
!108 = distinct !{!108, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h3c358d89be5ed9a6E"}
!109 = distinct !{!109, !108, !"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h3c358d89be5ed9a6E: %_1"}
!110 = distinct !{!110, !111, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E: %_0"}
!111 = distinct !{!111, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E"}
!112 = distinct !{!112, !111, !"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17h93e2df65f8f18427E: %iterator"}
!113 = !{!114, !98, !100, !102, !104, !106, !107, !109, !110, !112}
!114 = distinct !{!114, !115, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc0f6eede4d10437bE: %elt"}
!115 = distinct !{!115, !"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc0f6eede4d10437bE"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hf0aa4405d452c0acE: %_1.0"}
!118 = distinct !{!118, !"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17hf0aa4405d452c0acE"}
!119 = !{!104, !106, !107, !109, !110, !112}
!120 = !{!121, !123, !125}
!121 = distinct !{!121, !122, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E: %x"}
!122 = distinct !{!122, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E"}
!123 = distinct !{!123, !124, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E: %value"}
!124 = distinct !{!124, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E"}
!125 = distinct !{!125, !126, !"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h0a272d76d4eedb45E: %value"}
!126 = distinct !{!126, !"_ZN17evolve_inner_core11object_from4vecs147_$LT$impl$u20$core..convert..From$LT$alloc..vec..Vec$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h0a272d76d4eedb45E"}
!127 = !{!125}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h6def785849cbcc9cE: %self"}
!130 = distinct !{!130, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h6def785849cbcc9cE"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$25into_raw_parts_with_alloc17h6def785849cbcc9cE: %_0"}
!133 = !{!134, !136}
!134 = distinct !{!134, !135, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E: %x"}
!135 = distinct !{!135, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E"}
!136 = distinct !{!136, !137, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E: %value"}
!137 = distinct !{!137, !"_ZN17evolve_inner_core11object_from4vecs171_$LT$impl$u20$core..convert..From$LT$alloc..collections..vec_deque..VecDeque$LT$evolve_inner_core..object..Object$GT$$GT$$u20$for$u20$evolve_inner_core..object..Object$GT$4from17h48c8d473fb045bc9E"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E: %x"}
!140 = distinct !{!140, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h367a59ee56678491E"}
