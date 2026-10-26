.class public Lcom/tencent/bugly/proguard/J$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/tencent/bugly/proguard/I;

.field public c:Ljava/lang/String;

.field public d:Landroid/content/ContentValues;

.field public e:Z

.field public f:[Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:[B

.field public final synthetic r:Lcom/tencent/bugly/proguard/J;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/J;ILcom/tencent/bugly/proguard/I;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/tencent/bugly/proguard/J$a;->a:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/bugly/proguard/J$a;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    iget v2, v0, Lcom/tencent/bugly/proguard/J$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/J$a;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/J;->a(Lcom/tencent/bugly/proguard/J;ILjava/lang/String;Lcom/tencent/bugly/proguard/I;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    iget v2, v0, Lcom/tencent/bugly/proguard/J$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/J;->a(Lcom/tencent/bugly/proguard/J;ILcom/tencent/bugly/proguard/I;)Ljava/util/Map;

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    iget v2, v0, Lcom/tencent/bugly/proguard/J$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/J$a;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/J$a;->q:[B

    iget-object v5, v0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/J;->a(Lcom/tencent/bugly/proguard/J;ILjava/lang/String;[BLcom/tencent/bugly/proguard/I;)Z

    goto :goto_0

    :pswitch_3
    iget-object v6, v0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    iget-boolean v7, v0, Lcom/tencent/bugly/proguard/J$a;->e:Z

    iget-object v8, v0, Lcom/tencent/bugly/proguard/J$a;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/bugly/proguard/J$a;->f:[Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/bugly/proguard/J$a;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/J$a;->h:[Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/bugly/proguard/J$a;->i:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/bugly/proguard/J$a;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/bugly/proguard/J$a;->k:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/bugly/proguard/J$a;->l:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    move-object/from16 v16, v1

    invoke-static/range {v6 .. v16}, Lcom/tencent/bugly/proguard/J;->a(Lcom/tencent/bugly/proguard/J;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/I;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_4
    iget-object v1, v0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/J$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/J$a;->m:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/J$a;->n:[Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/J;->a(Lcom/tencent/bugly/proguard/J;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/I;)I

    goto :goto_0

    :pswitch_5
    iget-object v1, v0, Lcom/tencent/bugly/proguard/J$a;->r:Lcom/tencent/bugly/proguard/J;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/J$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/J$a;->d:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/J$a;->b:Lcom/tencent/bugly/proguard/I;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/J;->a(Lcom/tencent/bugly/proguard/J;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/I;)J

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
