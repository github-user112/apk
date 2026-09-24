.class public enum La/c/a/i0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/c/a/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/c/a/i0;

.field public static final enum c:La/c/a/i0;

.field public static final enum d:La/c/a/i0;

.field public static final enum e:La/c/a/i0;

.field public static final enum f:La/c/a/i0;

.field public static final enum g:La/c/a/i0;

.field public static final enum h:La/c/a/i0;

.field public static final enum i:La/c/a/i0;

.field public static final enum j:La/c/a/i0;

.field public static final enum k:La/c/a/i0;

.field public static final enum l:La/c/a/i0;

.field public static final enum m:La/c/a/i0;

.field public static final enum n:La/c/a/i0;

.field public static final enum o:La/c/a/i0;

.field public static final enum p:La/c/a/i0;

.field public static final enum q:La/c/a/i0;

.field public static final enum r:La/c/a/i0;

.field public static final enum s:La/c/a/i0;

.field public static final synthetic t:[La/c/a/i0;


# instance fields
.field public final u:La/c/a/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, La/c/a/i0;

    sget-object v1, La/c/a/j0;->e:La/c/a/j0;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v0, La/c/a/i0;->b:La/c/a/i0;

    new-instance v1, La/c/a/i0;

    sget-object v2, La/c/a/j0;->d:La/c/a/j0;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v1, La/c/a/i0;->c:La/c/a/i0;

    new-instance v2, La/c/a/i0;

    sget-object v5, La/c/a/j0;->c:La/c/a/j0;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v2, La/c/a/i0;->d:La/c/a/i0;

    new-instance v7, La/c/a/i0;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v7, La/c/a/i0;->e:La/c/a/i0;

    new-instance v9, La/c/a/i0;

    sget-object v11, La/c/a/j0;->b:La/c/a/j0;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v9, La/c/a/i0;->f:La/c/a/i0;

    new-instance v12, La/c/a/i0;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v12, La/c/a/i0;->g:La/c/a/i0;

    new-instance v14, La/c/a/i0;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v14, La/c/a/i0;->h:La/c/a/i0;

    new-instance v15, La/c/a/i0;

    sget-object v13, La/c/a/j0;->f:La/c/a/j0;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v15, La/c/a/i0;->i:La/c/a/i0;

    new-instance v4, La/c/a/i0$a;

    sget-object v13, La/c/a/j0;->g:La/c/a/j0;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, La/c/a/i0$a;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v4, La/c/a/i0;->j:La/c/a/i0;

    new-instance v6, La/c/a/i0$b;

    sget-object v13, La/c/a/j0;->j:La/c/a/j0;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, La/c/a/i0$b;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v6, La/c/a/i0;->k:La/c/a/i0;

    new-instance v3, La/c/a/i0$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, La/c/a/i0$c;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v3, La/c/a/i0;->l:La/c/a/i0;

    new-instance v8, La/c/a/i0$d;

    sget-object v13, La/c/a/j0;->h:La/c/a/j0;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, La/c/a/i0$d;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v8, La/c/a/i0;->m:La/c/a/i0;

    new-instance v6, La/c/a/i0;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v6, La/c/a/i0;->n:La/c/a/i0;

    new-instance v10, La/c/a/i0;

    sget-object v13, La/c/a/j0;->i:La/c/a/j0;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v10, La/c/a/i0;->o:La/c/a/i0;

    new-instance v3, La/c/a/i0;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v3, La/c/a/i0;->p:La/c/a/i0;

    new-instance v6, La/c/a/i0;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v6, La/c/a/i0;->q:La/c/a/i0;

    new-instance v3, La/c/a/i0;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v3, La/c/a/i0;->r:La/c/a/i0;

    new-instance v8, La/c/a/i0;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, La/c/a/i0;-><init>(Ljava/lang/String;ILa/c/a/j0;I)V

    sput-object v8, La/c/a/i0;->s:La/c/a/i0;

    const/16 v5, 0x12

    new-array v5, v5, [La/c/a/i0;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    sput-object v5, La/c/a/i0;->t:[La/c/a/i0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILa/c/a/j0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/a/j0;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/c/a/i0;->u:La/c/a/j0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILa/c/a/j0;ILa/c/a/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/c/a/i0;->u:La/c/a/j0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/c/a/i0;
    .locals 1

    const-class v0, La/c/a/i0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/c/a/i0;

    return-object p0
.end method

.method public static values()[La/c/a/i0;
    .locals 1

    sget-object v0, La/c/a/i0;->t:[La/c/a/i0;

    invoke-virtual {v0}, [La/c/a/i0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/c/a/i0;

    return-object v0
.end method
