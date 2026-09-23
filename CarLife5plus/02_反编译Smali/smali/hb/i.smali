.class public final Lhb/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lkb/l;

.field public final b:Lv9/y;

.field public final c:Lhb/j;

.field public final d:Lhb/e;

.field public final e:Lhb/a;

.field public final f:Lv9/g0;

.field public final g:Lhb/j;

.field public final h:Lhb/m;

.field public final i:Lda/a;

.field public final j:Lhb/n;

.field public final k:Ljava/lang/Iterable;

.field public final l:Lba/a;

.field public final m:Lhb/j;

.field public final n:Lx9/b;

.field public final o:Lx9/d;

.field public final p:Lva/g;

.field public final q:Lmb/k;

.field public final r:Ljava/util/List;

.field public final s:Lhb/l;

.field public final t:Lhb/g;


# direct methods
.method public constructor <init>(Lkb/l;Lv9/y;La2/d;Landroid/support/v4/media/session/t;Lv9/g0;Ljava/lang/Iterable;Lba/a;Lx9/b;Lx9/d;Lva/g;Lmb/k;Lib/d;I)V
    .locals 17

    sget-object v7, Lhb/j;->e:Lhb/j;

    sget-object v0, Lhb/j;->f:Lhb/j;

    const/high16 v1, 0x10000

    and-int v1, p13, v1

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lmb/k;->b:Lmb/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v1, Lmb/j;->b:Lmb/l;

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p11

    .line 24
    :goto_0
    sget-object v1, Llb/k;->a:Llb/k;

    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/high16 v1, 0x80000

    and-int v1, p13, v1

    if-eqz v1, :cond_1

    .line 25
    sget-object v0, Lhb/j;->d:Lhb/j;

    :cond_1
    move-object/from16 v16, v0

    .line 26
    sget-object v6, Lhb/m;->a:Lhb/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v16}, Lhb/i;-><init>(Lkb/l;Lv9/y;Lhb/e;Lhb/a;Lv9/g0;Lhb/m;Lhb/n;Ljava/lang/Iterable;Lba/a;Lx9/b;Lx9/d;Lva/g;Lmb/k;Lib/d;Ljava/util/List;Lhb/l;)V

    return-void
.end method

.method public constructor <init>(Lkb/l;Lv9/y;Lhb/e;Lhb/a;Lv9/g0;Lhb/m;Lhb/n;Ljava/lang/Iterable;Lba/a;Lx9/b;Lx9/d;Lva/g;Lmb/k;Lib/d;Ljava/util/List;Lhb/l;)V
    .locals 6

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move-object/from16 v2, p16

    sget-object v3, Lhb/j;->c:Lhb/j;

    sget-object v4, Lhb/j;->g:Lhb/j;

    const-string v5, "moduleDescriptor"

    invoke-static {p2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "extensionRegistryLite"

    invoke-static {v0, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "kotlinTypeChecker"

    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "enumEntriesDeserializationSupport"

    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhb/i;->a:Lkb/l;

    .line 3
    iput-object p2, p0, Lhb/i;->b:Lv9/y;

    .line 4
    iput-object v3, p0, Lhb/i;->c:Lhb/j;

    .line 5
    iput-object p3, p0, Lhb/i;->d:Lhb/e;

    .line 6
    iput-object p4, p0, Lhb/i;->e:Lhb/a;

    .line 7
    iput-object p5, p0, Lhb/i;->f:Lv9/g0;

    .line 8
    iput-object v4, p0, Lhb/i;->g:Lhb/j;

    .line 9
    iput-object p6, p0, Lhb/i;->h:Lhb/m;

    .line 10
    sget-object p1, Lda/a;->a:Lda/a;

    iput-object p1, p0, Lhb/i;->i:Lda/a;

    .line 11
    iput-object p7, p0, Lhb/i;->j:Lhb/n;

    .line 12
    iput-object p8, p0, Lhb/i;->k:Ljava/lang/Iterable;

    .line 13
    iput-object p9, p0, Lhb/i;->l:Lba/a;

    .line 14
    sget-object p1, Lhb/h;->a:Lhb/j;

    iput-object p1, p0, Lhb/i;->m:Lhb/j;

    move-object/from16 p1, p10

    .line 15
    iput-object p1, p0, Lhb/i;->n:Lx9/b;

    move-object/from16 p1, p11

    .line 16
    iput-object p1, p0, Lhb/i;->o:Lx9/d;

    .line 17
    iput-object v0, p0, Lhb/i;->p:Lva/g;

    .line 18
    iput-object v1, p0, Lhb/i;->q:Lmb/k;

    move-object/from16 p1, p15

    .line 19
    iput-object p1, p0, Lhb/i;->r:Ljava/util/List;

    .line 20
    iput-object v2, p0, Lhb/i;->s:Lhb/l;

    .line 21
    new-instance p1, Lhb/g;

    invoke-direct {p1, p0}, Lhb/g;-><init>(Lhb/i;)V

    iput-object p1, p0, Lhb/i;->t:Lhb/g;

    return-void
.end method


# virtual methods
.method public final a(Lv9/d0;Lra/f;Lra/g;Lra/h;Lra/a;Ljb/k;)Lhb/k;
    .locals 11

    .line 1
    const-string v0, "nameResolver"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "metadataVersion"

    .line 7
    .line 8
    move-object/from16 v7, p5

    .line 9
    .line 10
    invoke-static {v7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lhb/k;

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    sget-object v10, Ls8/w;->a:Ls8/w;

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    move-object v4, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    move-object/from16 v8, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Lhb/k;-><init>(Lhb/i;Lra/f;Lv9/k;Lra/g;Lra/h;Lra/a;Ljb/k;Lp/h3;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final b(Lua/b;)Lv9/e;
    .locals 2

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lhb/g;->c:Ljava/util/Set;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, Lhb/i;->t:Lhb/g;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lhb/g;->a(Lua/b;Lhb/d;)Lv9/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
