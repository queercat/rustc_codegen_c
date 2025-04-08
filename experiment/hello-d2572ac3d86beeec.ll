; ModuleID = '1vonz8zeklr5x4qg2h131qj7f'
source_filename = "1vonz8zeklr5x4qg2h131qj7f"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: noreturn nounwind
define hidden void @rust_begin_unwind(ptr align 8 %_info) unnamed_addr #0 !dbg !19 {
start:
  %_info.dbg.spill = alloca [8 x i8], align 8
  store ptr %_info, ptr %_info.dbg.spill, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.dbg.spill, metadata !193, metadata !DIExpression()), !dbg !194
  br label %bb1, !dbg !195

bb1:                                              ; preds = %bb1, %start
  br label %bb1, !dbg !195
}

; Function Attrs: nounwind
define dso_local i32 @main() unnamed_addr #1 !dbg !196 {
start:
  %nyan_cat = alloca [8192 x i8], align 8
  call void @llvm.dbg.declare(metadata ptr %nyan_cat, metadata !201, metadata !DIExpression()), !dbg !209
  call void @nyaa(ptr sret([8192 x i8]) align 8 %nyan_cat) #5, !dbg !210
  %0 = getelementptr inbounds [1024 x i64], ptr %nyan_cat, i64 0, i64 512, !dbg !211
  store i64 42, ptr %0, align 8, !dbg !211
  %1 = getelementptr inbounds [1024 x i64], ptr %nyan_cat, i64 0, i64 512, !dbg !212
  %_6 = load i64, ptr %1, align 8, !dbg !212
  %_0 = trunc i64 %_6 to i32, !dbg !212
  ret i32 %_0, !dbg !213
}

; hello::NyanCat::new
; Function Attrs: nounwind
define internal void @_ZN5hello7NyanCat3new17h30ee6a53e41098f9E(ptr sret([8192 x i8]) align 8 %_0) unnamed_addr #1 !dbg !214 {
start:
  %_1 = alloca [8192 x i8], align 8
  call void @llvm.memset.p0.i64(ptr align 8 %_1, i8 0, i64 8192, i1 false), !dbg !218
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_1, i64 8192, i1 false), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: nounwind
define dso_local void @nyaa(ptr sret([8192 x i8]) align 8 %_0) unnamed_addr #1 !dbg !221 {
start:
; call hello::NyanCat::new
  call void @_ZN5hello7NyanCat3new17h30ee6a53e41098f9E(ptr sret([8192 x i8]) align 8 %_0) #5, !dbg !222
  ret void, !dbg !223
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noreturn nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.81.0-nightly (6868c831a 2024-06-30)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.81.0-nightly (6868c831a 2024-06-30))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "hello.rs/@/1vonz8zeklr5x4qg2h131qj7f", directory: "/Users/may/Documents/GitHub/rustc_codegen_c/experiment")
!7 = !{!8}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !10, file: !9, baseType: !13, size: 8, align: 8, flags: DIFlagEnumClass, elements: !14)
!9 = !DIFile(filename: "<unknown>", directory: "")
!10 = !DINamespace(name: "rt", scope: !11)
!11 = !DINamespace(name: "fmt", scope: !12)
!12 = !DINamespace(name: "core", scope: null)
!13 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "Left", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "Right", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "Center", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "Unknown", value: 3, isUnsigned: true)
!19 = distinct !DISubprogram(name: "panic", linkageName: "rust_begin_unwind", scope: !21, file: !20, line: 5, type: !22, scopeLine: 5, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !43, retainedNodes: !192)
!20 = !DIFile(filename: "hello.rs", directory: "/Users/may/Documents/GitHub/rustc_codegen_c/experiment", checksumkind: CSK_MD5, checksum: "05e15ed3d05b2f45aeaac4885956296d")
!21 = !DINamespace(name: "hello", scope: null)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::panic_info::PanicInfo", baseType: !25, size: 64, align: 64, dwarfAddressSpace: 0)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "PanicInfo", scope: !26, file: !9, size: 512, align: 64, flags: DIFlagPublic, elements: !28, templateParams: !43, identifier: "c06cdbe3cecced66a47f6d6935e3ba4c")
!26 = !DINamespace(name: "panic_info", scope: !27)
!27 = !DINamespace(name: "panic", scope: !12)
!28 = !{!29, !181, !189, !191}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !25, file: !9, baseType: !30, size: 384, align: 64, flags: DIFlagPrivate)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !11, file: !9, size: 384, align: 64, flags: DIFlagPublic, elements: !31, templateParams: !43, identifier: "827e99baac3cad376ad7db751fcb1fdc")
!31 = !{!32, !45, !91}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !30, file: !9, baseType: !33, size: 128, align: 64, flags: DIFlagPrivate)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !9, size: 128, align: 64, elements: !34, templateParams: !43, identifier: "4e66b00a376d6af5b8765440fb2839f")
!34 = !{!35, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !33, file: !9, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !9, size: 128, align: 64, elements: !38, templateParams: !43, identifier: "9277eecd40495f85161460476aacc992")
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !37, file: !9, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !37, file: !9, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!43 = !{}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !33, file: !9, baseType: !42, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !30, file: !9, baseType: !46, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[core::fmt::rt::Placeholder]>", scope: !47, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !48, templateParams: !43, identifier: "2b532de0a3318a184968c33a750aec9")
!47 = !DINamespace(name: "option", scope: !12)
!48 = !{!49}
!49 = !DICompositeType(tag: DW_TAG_variant_part, scope: !46, file: !9, size: 128, align: 64, elements: !50, templateParams: !43, identifier: "7a7f23e99221902c6fee040651ba6773", discriminator: !90)
!50 = !{!51, !86}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !49, file: !9, baseType: !52, size: 128, align: 64, extraData: i128 0)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !46, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !43, templateParams: !53, identifier: "d61e88c468a2c96fab3464b57954f22f")
!53 = !{!54}
!54 = !DITemplateTypeParameter(name: "T", type: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::Placeholder]", file: !9, size: 128, align: 64, elements: !56, templateParams: !43, identifier: "5bac500750444fd461a4dbbdc0a26d7e")
!56 = !{!57, !85}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !55, file: !9, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64, dwarfAddressSpace: 0)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !10, file: !9, size: 448, align: 64, flags: DIFlagPublic, elements: !60, templateParams: !43, identifier: "9608e4640f6d0fe2da859fe7edcfc36")
!60 = !{!61, !62, !64, !65, !67, !84}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !59, file: !9, baseType: !42, size: 64, align: 64, offset: 256, flags: DIFlagPublic)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !59, file: !9, baseType: !63, size: 32, align: 32, offset: 320, flags: DIFlagPublic)
!63 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_UTF)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !59, file: !9, baseType: !8, size: 8, align: 8, offset: 384, flags: DIFlagPublic)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !9, baseType: !66, size: 32, align: 32, offset: 352, flags: DIFlagPublic)
!66 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !59, file: !9, baseType: !68, size: 128, align: 64, flags: DIFlagPublic)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !10, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !69, templateParams: !43, identifier: "4bf644751dbf884b2039cf66113809bc")
!69 = !{!70}
!70 = !DICompositeType(tag: DW_TAG_variant_part, scope: !68, file: !9, size: 128, align: 64, elements: !71, templateParams: !43, identifier: "2c4ea356a0c00952955743a855f8080f", discriminator: !82)
!71 = !{!72, !76, !80}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Is", scope: !70, file: !9, baseType: !73, size: 128, align: 64, extraData: i128 0)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !68, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !74, templateParams: !43, identifier: "d683a4dd6ae70c02f71e2ddcc75e9116")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !73, file: !9, baseType: !42, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !70, file: !9, baseType: !77, size: 128, align: 64, extraData: i128 1)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !68, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !78, templateParams: !43, identifier: "e638d47ebe539c6d58f41effd79254c1")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !77, file: !9, baseType: !42, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "Implied", scope: !70, file: !9, baseType: !81, size: 128, align: 64, extraData: i128 2)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !68, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !43, identifier: "673068a923e04459fc5c300b7052c41e")
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !9, baseType: !83, size: 64, align: 64, flags: DIFlagArtificial)
!83 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !59, file: !9, baseType: !68, size: 128, align: 64, offset: 128, flags: DIFlagPublic)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !55, file: !9, baseType: !42, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !49, file: !9, baseType: !87, size: 128, align: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !46, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !88, templateParams: !53, identifier: "cb5f0dc7dd911924aa48085006c170ca")
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !87, file: !9, baseType: !55, size: 128, align: 64, flags: DIFlagPublic)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !46, file: !9, baseType: !83, size: 64, align: 64, flags: DIFlagArtificial)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !30, file: !9, baseType: !92, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::Argument]", file: !9, size: 128, align: 64, elements: !93, templateParams: !43, identifier: "3206de3033e70931131af535785b573")
!93 = !{!94, !180}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !92, file: !9, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !10, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !97, templateParams: !43, identifier: "4aa22be648f1d487dc8e0b69629a496d")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !96, file: !9, baseType: !99, size: 128, align: 64, flags: DIFlagPrivate)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentType", scope: !10, file: !9, size: 128, align: 64, flags: DIFlagPrivate, elements: !100, templateParams: !43, identifier: "8e375dd427a15e6c70600a984d51fa7d")
!100 = !{!101}
!101 = !DICompositeType(tag: DW_TAG_variant_part, scope: !99, file: !9, size: 128, align: 64, elements: !102, templateParams: !43, identifier: "e71f8441b6ebc389c561322a4253e326", discriminator: !179)
!102 = !{!103, !175}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Placeholder", scope: !101, file: !9, baseType: !104, size: 128, align: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "Placeholder", scope: !99, file: !9, size: 128, align: 64, flags: DIFlagPrivate, elements: !105, templateParams: !43, identifier: "2b3a01a46f15bf28705cefcf3656f2a1")
!105 = !{!106, !116, !169}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !104, file: !9, baseType: !107, size: 64, align: 64, flags: DIFlagPrivate)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<()>", scope: !108, file: !9, size: 64, align: 64, flags: DIFlagPublic, elements: !110, templateParams: !114, identifier: "63841d91ce6ef205d4b2be0ae0ddb481")
!108 = !DINamespace(name: "non_null", scope: !109)
!109 = !DINamespace(name: "ptr", scope: !12)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !107, file: !9, baseType: !112, size: 64, align: 64, flags: DIFlagPrivate)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !113, size: 64, align: 64, dwarfAddressSpace: 0)
!113 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!114 = !{!115}
!115 = !DITemplateTypeParameter(name: "T", type: !113)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !104, file: !9, baseType: !117, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(core::ptr::non_null::NonNull<()>, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !118, size: 64, align: 64, dwarfAddressSpace: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !107, !137}
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !121, file: !9, size: 8, align: 8, flags: DIFlagPublic, elements: !122, templateParams: !43, identifier: "bdd5a17e0b7e6c96d1abf5080442b93b")
!121 = !DINamespace(name: "result", scope: !12)
!122 = !{!123}
!123 = !DICompositeType(tag: DW_TAG_variant_part, scope: !120, file: !9, size: 8, align: 8, elements: !124, templateParams: !43, identifier: "bc89874031abf2413acdb906756701fd", discriminator: !136)
!124 = !{!125, !132}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !123, file: !9, baseType: !126, size: 8, align: 8, extraData: i128 0)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !120, file: !9, size: 8, align: 8, flags: DIFlagPublic, elements: !127, templateParams: !129, identifier: "f8db7b8703e0c6d7db74f08b1cf9af4f")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !126, file: !9, baseType: !113, align: 8, offset: 8, flags: DIFlagPublic)
!129 = !{!115, !130}
!130 = !DITemplateTypeParameter(name: "E", type: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !11, file: !9, align: 8, flags: DIFlagPublic, elements: !43, identifier: "8732bf018ce1ba3d69d6fa47129944ed")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !123, file: !9, baseType: !133, size: 8, align: 8, extraData: i128 1)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !120, file: !9, size: 8, align: 8, flags: DIFlagPublic, elements: !134, templateParams: !129, identifier: "36d044a0862411408390d98035fe3f1d")
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !133, file: !9, baseType: !131, align: 8, offset: 8, flags: DIFlagPublic)
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !9, baseType: !13, size: 8, align: 8, flags: DIFlagArtificial)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !138, size: 64, align: 64, dwarfAddressSpace: 0)
!138 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !11, file: !9, size: 512, align: 64, flags: DIFlagPublic, elements: !139, templateParams: !43, identifier: "a75e709f24c3ffb47fcc4a390e478e25")
!139 = !{!140, !141, !142, !143, !157, !158}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !9, baseType: !66, size: 32, align: 32, offset: 416, flags: DIFlagPrivate)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !138, file: !9, baseType: !63, size: 32, align: 32, offset: 384, flags: DIFlagPrivate)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !138, file: !9, baseType: !8, size: 8, align: 8, offset: 448, flags: DIFlagPrivate)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !138, file: !9, baseType: !144, size: 128, align: 64, flags: DIFlagPrivate)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !47, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !145, templateParams: !43, identifier: "f45480cd7c55edeffd154d7d35354527")
!145 = !{!146}
!146 = !DICompositeType(tag: DW_TAG_variant_part, scope: !144, file: !9, size: 128, align: 64, elements: !147, templateParams: !43, identifier: "7e5595e408c821bc9a535d83f38026ee", discriminator: !156)
!147 = !{!148, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !146, file: !9, baseType: !149, size: 128, align: 64, extraData: i128 0)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !144, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !43, templateParams: !150, identifier: "c1bcc9fd3b42ae086efc18e4f2c1ef28")
!150 = !{!151}
!151 = !DITemplateTypeParameter(name: "T", type: !42)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !146, file: !9, baseType: !153, size: 128, align: 64, extraData: i128 1)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !144, file: !9, size: 128, align: 64, flags: DIFlagPublic, elements: !154, templateParams: !150, identifier: "61e197d53452bb948689f2fc16d00c61")
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !153, file: !9, baseType: !42, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !9, baseType: !83, size: 64, align: 64, flags: DIFlagArtificial)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !138, file: !9, baseType: !144, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !138, file: !9, baseType: !159, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !9, size: 128, align: 64, elements: !160, templateParams: !43, identifier: "d4dcb33d5476dd077f7a6ac7a8444f4")
!160 = !{!161, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !159, file: !9, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64, dwarfAddressSpace: 0)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !9, align: 8, elements: !43, identifier: "3f447bc0f06c2c2fe7164cbc8249639c")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !159, file: !9, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 6]", baseType: !166, size: 64, align: 64, dwarfAddressSpace: 0)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, align: 64, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 6, lowerBound: 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_lifetime", scope: !104, file: !9, baseType: !170, align: 8, offset: 128, flags: DIFlagPrivate)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&()>", scope: !171, file: !9, align: 8, flags: DIFlagPublic, elements: !43, templateParams: !172, identifier: "4b54ef208341d6a1a84b0aae2c6b32db")
!171 = !DINamespace(name: "marker", scope: !12)
!172 = !{!173}
!173 = !DITemplateTypeParameter(name: "T", type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&()", baseType: !113, size: 64, align: 64, dwarfAddressSpace: 0)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !101, file: !9, baseType: !176, size: 128, align: 64, extraData: i128 0)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !99, file: !9, size: 128, align: 64, flags: DIFlagPrivate, elements: !177, templateParams: !43, identifier: "8f19b75a6820f71032fa91d77f1be042")
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !176, file: !9, baseType: !42, size: 64, align: 64, flags: DIFlagPrivate)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !9, baseType: !83, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !92, file: !9, baseType: !42, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !25, file: !9, baseType: !182, size: 64, align: 64, offset: 384, flags: DIFlagPrivate)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !183, size: 64, align: 64, dwarfAddressSpace: 0)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !184, file: !9, size: 192, align: 64, flags: DIFlagPublic, elements: !185, templateParams: !43, identifier: "23983f18ff46e955e1cbdde5f66dde9d")
!184 = !DINamespace(name: "location", scope: !27)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !183, file: !9, baseType: !37, size: 128, align: 64, flags: DIFlagPrivate)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !183, file: !9, baseType: !66, size: 32, align: 32, offset: 128, flags: DIFlagPrivate)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !183, file: !9, baseType: !66, size: 32, align: 32, offset: 160, flags: DIFlagPrivate)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "can_unwind", scope: !25, file: !9, baseType: !190, size: 8, align: 8, offset: 448, flags: DIFlagPrivate)
!190 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "force_no_backtrace", scope: !25, file: !9, baseType: !190, size: 8, align: 8, offset: 456, flags: DIFlagPrivate)
!192 = !{!193}
!193 = !DILocalVariable(name: "_info", arg: 1, scope: !19, file: !20, line: 5, type: !24)
!194 = !DILocation(line: 5, column: 10, scope: !19)
!195 = !DILocation(line: 6, column: 5, scope: !19)
!196 = distinct !DISubprogram(name: "main", scope: !21, file: !20, line: 10, type: !197, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, templateParams: !43, retainedNodes: !200)
!197 = !DISubroutineType(types: !198)
!198 = !{!199}
!199 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!200 = !{!201}
!201 = !DILocalVariable(name: "nyan_cat", scope: !202, file: !20, line: 11, type: !203, align: 8)
!202 = distinct !DILexicalBlock(scope: !196, file: !20, line: 11, column: 5)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "NyanCat", scope: !21, file: !9, size: 65536, align: 64, flags: DIFlagPrivate, elements: !204, templateParams: !43, identifier: "98b234e2ff0b0772c511e4d3eb812e44")
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rainbows", scope: !203, file: !9, baseType: !206, size: 65536, align: 64, flags: DIFlagPrivate)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 65536, align: 64, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1024, lowerBound: 0)
!209 = !DILocation(line: 11, column: 9, scope: !202)
!210 = !DILocation(line: 11, column: 24, scope: !196)
!211 = !DILocation(line: 12, column: 5, scope: !202)
!212 = !DILocation(line: 13, column: 5, scope: !202)
!213 = !DILocation(line: 14, column: 2, scope: !196)
!214 = distinct !DISubprogram(name: "new", linkageName: "_ZN5hello7NyanCat3new17h30ee6a53e41098f9E", scope: !203, file: !20, line: 22, type: !215, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, templateParams: !43, declaration: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!203}
!217 = !DISubprogram(name: "new", linkageName: "_ZN5hello7NyanCat3new17h30ee6a53e41098f9E", scope: !203, file: !20, line: 22, type: !215, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !43)
!218 = !DILocation(line: 23, column: 29, scope: !214)
!219 = !DILocation(line: 23, column: 9, scope: !214)
!220 = !DILocation(line: 24, column: 6, scope: !214)
!221 = distinct !DISubprogram(name: "nyaa", scope: !21, file: !20, line: 28, type: !215, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, templateParams: !43)
!222 = !DILocation(line: 29, column: 5, scope: !221)
!223 = !DILocation(line: 30, column: 2, scope: !221)
