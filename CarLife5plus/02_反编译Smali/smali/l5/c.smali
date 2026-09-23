.class public final synthetic Ll5/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ll5/l;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:Ld7/q;

.field public final synthetic j:J

.field public final synthetic k:J

.field public final synthetic l:F

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ll5/l;FFJFJFLd7/q;JJFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/c;->a:Lr1/p;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/c;->b:Ll5/l;

    .line 7
    .line 8
    iput p3, p0, Ll5/c;->c:F

    .line 9
    .line 10
    iput p4, p0, Ll5/c;->d:F

    .line 11
    .line 12
    iput-wide p5, p0, Ll5/c;->e:J

    .line 13
    .line 14
    iput p7, p0, Ll5/c;->f:F

    .line 15
    .line 16
    iput-wide p8, p0, Ll5/c;->g:J

    .line 17
    .line 18
    iput p10, p0, Ll5/c;->h:F

    .line 19
    .line 20
    iput-object p11, p0, Ll5/c;->i:Ld7/q;

    .line 21
    .line 22
    iput-wide p12, p0, Ll5/c;->j:J

    .line 23
    .line 24
    iput-wide p14, p0, Ll5/c;->k:J

    .line 25
    .line 26
    move/from16 p1, p16

    .line 27
    .line 28
    iput p1, p0, Ll5/c;->l:F

    .line 29
    .line 30
    move/from16 p1, p17

    .line 31
    .line 32
    iput p1, p0, Ll5/c;->m:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v17, p1

    .line 4
    .line 5
    check-cast v17, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v1, "$controller"

    .line 15
    .line 16
    iget-object v2, v0, Ll5/c;->b:Ll5/l;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Ll5/c;->m:I

    .line 22
    .line 23
    or-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 26
    .line 27
    .line 28
    move-result v18

    .line 29
    iget-object v1, v0, Ll5/c;->a:Lr1/p;

    .line 30
    .line 31
    iget v3, v0, Ll5/c;->c:F

    .line 32
    .line 33
    iget v4, v0, Ll5/c;->d:F

    .line 34
    .line 35
    iget-wide v5, v0, Ll5/c;->e:J

    .line 36
    .line 37
    iget v7, v0, Ll5/c;->f:F

    .line 38
    .line 39
    iget-wide v8, v0, Ll5/c;->g:J

    .line 40
    .line 41
    iget v10, v0, Ll5/c;->h:F

    .line 42
    .line 43
    iget-object v11, v0, Ll5/c;->i:Ld7/q;

    .line 44
    .line 45
    iget-wide v12, v0, Ll5/c;->j:J

    .line 46
    .line 47
    iget-wide v14, v0, Ll5/c;->k:J

    .line 48
    .line 49
    move-object/from16 v16, v1

    .line 50
    .line 51
    iget v1, v0, Ll5/c;->l:F

    .line 52
    .line 53
    move-object/from16 v19, v16

    .line 54
    .line 55
    move/from16 v16, v1

    .line 56
    .line 57
    move-object/from16 v1, v19

    .line 58
    .line 59
    invoke-static/range {v1 .. v18}, Lm9/e0;->B(Lr1/p;Ll5/l;FFJFJFLd7/q;JJFLf1/s;I)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 63
    .line 64
    return-object v1
.end method
