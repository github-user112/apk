.class public final Lha/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lkb/o;

.field public final b:Laa/b;

.field public final c:Laa/b;

.field public final d:Lna/f;

.field public final e:Lfa/h;

.field public final f:Lhb/m;

.field public final g:Lfa/h;

.field public final h:Lfa/h;

.field public final i:Lib/d;

.field public final j:Laa/e;

.field public final k:La2/d;

.field public final l:Lna/g;

.field public final m:Lv9/n0;

.field public final n:Lda/a;

.field public final o:Lv9/y;

.field public final p:Ls9/n;

.field public final q:Lea/b;

.field public final r:Lma/d;

.field public final s:Lea/l;

.field public final t:Lha/b;

.field public final u:Lmb/k;

.field public final v:Lea/u;

.field public final w:Lna/g;

.field public final x:Lcb/e;


# direct methods
.method public constructor <init>(Lkb/o;Laa/b;Laa/b;Lna/f;Lfa/h;Lhb/m;Lfa/h;Lib/d;Laa/e;La2/d;Lna/g;Lv9/n0;Lda/a;Lv9/y;Ls9/n;Lea/b;Lma/d;Lea/l;Lha/b;Lmb/k;Lea/u;Lna/g;)V
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    sget-object v0, Lfa/h;->b:Lfa/h;

    .line 1
    sget-object v16, Lcb/e;->a:Lcb/d;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    .line 2
    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v8, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v9, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v10, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v11, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v12, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v13, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v14, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    sget-object v15, Lcb/d;->b:Lcb/a;

    invoke-static {v15, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 4
    iput-object v1, v0, Lha/a;->a:Lkb/o;

    .line 5
    iput-object v2, v0, Lha/a;->b:Laa/b;

    .line 6
    iput-object v3, v0, Lha/a;->c:Laa/b;

    .line 7
    iput-object v4, v0, Lha/a;->d:Lna/f;

    .line 8
    iput-object v5, v0, Lha/a;->e:Lfa/h;

    .line 9
    iput-object v6, v0, Lha/a;->f:Lhb/m;

    move-object/from16 v1, v16

    .line 10
    iput-object v1, v0, Lha/a;->g:Lfa/h;

    .line 11
    iput-object v7, v0, Lha/a;->h:Lfa/h;

    .line 12
    iput-object v8, v0, Lha/a;->i:Lib/d;

    .line 13
    iput-object v9, v0, Lha/a;->j:Laa/e;

    .line 14
    iput-object v10, v0, Lha/a;->k:La2/d;

    .line 15
    iput-object v11, v0, Lha/a;->l:Lna/g;

    .line 16
    iput-object v12, v0, Lha/a;->m:Lv9/n0;

    .line 17
    iput-object v13, v0, Lha/a;->n:Lda/a;

    .line 18
    iput-object v14, v0, Lha/a;->o:Lv9/y;

    move-object/from16 v1, p15

    .line 19
    iput-object v1, v0, Lha/a;->p:Ls9/n;

    move-object/from16 v1, p16

    .line 20
    iput-object v1, v0, Lha/a;->q:Lea/b;

    move-object/from16 v1, p17

    .line 21
    iput-object v1, v0, Lha/a;->r:Lma/d;

    move-object/from16 v1, p18

    .line 22
    iput-object v1, v0, Lha/a;->s:Lea/l;

    move-object/from16 v1, p19

    .line 23
    iput-object v1, v0, Lha/a;->t:Lha/b;

    move-object/from16 v1, p20

    .line 24
    iput-object v1, v0, Lha/a;->u:Lmb/k;

    move-object/from16 v1, p21

    .line 25
    iput-object v1, v0, Lha/a;->v:Lea/u;

    move-object/from16 v1, p22

    .line 26
    iput-object v1, v0, Lha/a;->w:Lna/g;

    .line 27
    iput-object v15, v0, Lha/a;->x:Lcb/e;

    return-void
.end method
