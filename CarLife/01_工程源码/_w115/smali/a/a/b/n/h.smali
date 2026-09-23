.class public La/a/b/n/h;
.super La/a/b/n/g;
.source ""


# static fields
.field public static Z:La/a/b/n/h;

.field public static a0:Z

.field public static b0:Z


# instance fields
.field public c0:Landroid/widget/ImageButton;

.field public d0:Landroid/widget/TextView;

.field public e0:La/a/b/s/b;

.field public f0:La/a/b/s/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/n/h;->e0:La/a/b/s/b;

    iput-object v0, p0, La/a/b/n/h;->f0:La/a/b/s/c;

    return-void
.end method

.method public static C0()La/a/b/n/h;
    .locals 1

    sget-object v0, La/a/b/n/h;->Z:La/a/b/n/h;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/h;

    invoke-direct {v0}, La/a/b/n/h;-><init>()V

    sput-object v0, La/a/b/n/h;->Z:La/a/b/n/h;

    :cond_0
    sget-object v0, La/a/b/n/h;->Z:La/a/b/n/h;

    return-object v0
.end method


# virtual methods
.method public D0(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, La/a/b/n/h;->e0:La/a/b/s/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, La/a/b/s/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u952e\u503c:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v0, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v4}, La/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget-object p1, p0, La/a/b/n/h;->e0:La/a/b/s/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/b/s/b;->i(Ljava/lang/String;)La/a/b/s/b;

    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 29

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p3}, La/a/b/n/g;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "onCreateView"

    const/4 v8, 0x0

    aput-object v1, v0, v8

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v6, La/a/b/n/h;->c0:Landroid/widget/ImageButton;

    new-instance v1, La/a/b/n/h$e;

    invoke-direct {v1, v6}, La/a/b/n/h$e;-><init>(La/a/b/n/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, La/a/b/n/h;->d0:Landroid/widget/TextView;

    const v1, 0x7f0e0065

    invoke-virtual {v6, v1}, Lb/h/b/m;->z(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/baidu/carlifevehicle/MediaButtonReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const-string v4, "\u4e0d\u4f7f\u7528"

    aput-object v4, v1, v8

    const-string v4, "\u65b9\u63a7\u534f\u8bae1(\u76d1\u542c\u6309\u952e\u6309\u4e0b)"

    aput-object v4, v1, v7

    const-string v4, "\u65b9\u63a7\u534f\u8bae2(\u76d1\u542c\u6309\u952e\u677e\u5f00)"

    const/4 v10, 0x2

    aput-object v4, v1, v10

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, La/a/b/n/g;->W:Landroid/content/Context;

    const v11, 0x7f0c0023

    invoke-direct {v4, v5, v11, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v11, 0x7f0c0022

    invoke-virtual {v4, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget v4, La/a/a/a/l/b;->t:I

    .line 1
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "BUTTON_CONTROL_TYPE"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2
    :goto_0
    invoke-virtual {v0, v4, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v1, La/a/b/n/h$f;

    invoke-direct {v1, v6}, La/a/b/n/h$f;-><init>(La/a/b/n/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v12, 0xb

    new-array v13, v12, [Ljava/lang/String;

    const-string v0, "BZXY_KEYCODE_MEDIA_PLAY_PAUSE"

    aput-object v0, v13, v8

    const-string v0, "BZXY_KEYCODE_MEDIA_START"

    aput-object v0, v13, v7

    const-string v0, "BZXY_KEYCODE_MEDIA_STOP"

    aput-object v0, v13, v10

    const-string v0, "BZXY_KEYCODE_SEEK_ADD"

    aput-object v0, v13, v9

    const-string v0, "BZXY_KEYCODE_SEEK_SUB"

    const/4 v14, 0x4

    aput-object v0, v13, v14

    const-string v0, "BZXY_KEYCODE_MAIN"

    const/4 v15, 0x5

    aput-object v0, v13, v15

    const-string v0, "BZXY_KEYCODE_MEDIA"

    const/16 v16, 0x6

    aput-object v0, v13, v16

    const-string v0, "BZXY_KEYCODE_VR_START"

    const/16 v17, 0x7

    aput-object v0, v13, v17

    const-string v0, "BZXY_KEYCODE_VR_STOP"

    const/16 v18, 0x8

    aput-object v0, v13, v18

    const-string v0, "BZXY_KEYCODE_PHONE_CALL"

    const/16 v5, 0x9

    aput-object v0, v13, v5

    const-string v0, "BZXY_KEYCODE_PHONE_END"

    const/16 v19, 0xa

    aput-object v0, v13, v19

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    new-array v0, v12, [Ljava/lang/String;

    const-string v20, "\u64ad\u653e/\u6682\u505c"

    aput-object v20, v0, v8

    const-string v21, "\u64ad\u653e"

    aput-object v21, v0, v7

    const-string v22, "\u6682\u505c"

    aput-object v22, v0, v10

    const-string v23, "\u4e0b\u4e00\u9996"

    aput-object v23, v0, v9

    const-string v24, "\u4e0a\u4e00\u9996"

    aput-object v24, v0, v14

    const-string v25, "\u4e3b\u9875\u5207\u6362"

    aput-object v25, v0, v15

    const-string v26, "\u5a92\u4f53\u5207\u6362"

    aput-object v26, v0, v16

    const-string v27, "\u542f\u52a8\u8bed\u97f3\u52a9\u624b"

    aput-object v27, v0, v17

    const-string v1, "\u5173\u95ed\u8bed\u97f3\u52a9\u624b"

    aput-object v1, v0, v18

    const-string v1, "\u7535\u8bdd\u63a5\u542c"

    aput-object v1, v0, v5

    const-string v1, "\u7535\u8bdd\u6302\u65ad"

    aput-object v1, v0, v19

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v5, La/a/b/n/g;->W:Landroid/content/Context;

    const v15, 0x7f0c0024

    invoke-direct {v1, v5, v15, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v11, 0x11

    invoke-virtual {v1, v5, v8, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, La/a/b/n/h$g;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v28, v4

    move-object v4, v13

    move-object v14, v5

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, La/a/b/n/h$g;-><init>(La/a/b/n/h;Landroid/media/AudioManager;Landroid/content/ComponentName;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v8, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, La/a/b/n/h$h;

    move-object/from16 v2, v28

    invoke-direct {v1, v6, v13, v2}, La/a/b/n/h$h;-><init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "KEYCODE_MEDIA_PLAY_PAUSE"

    aput-object v1, v0, v8

    const-string v1, "KEYCODE_MEDIA_START"

    aput-object v1, v0, v7

    const-string v1, "KEYCODE_MEDIA_STOP"

    aput-object v1, v0, v10

    const-string v1, "KEYCODE_SEEK_ADD"

    aput-object v1, v0, v9

    const-string v1, "KEYCODE_SEEK_SUB"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "KEYCODE_MAIN"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "KEYCODE_MEDIA"

    aput-object v1, v0, v16

    const-string v1, "KEYCODE_VR_START"

    aput-object v1, v0, v17

    const-string v1, "KEYCODE_VR_STOP"

    aput-object v1, v0, v18

    const-string v1, "KEYCODE_PHONE_CALL"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "KEYCODE_PHONE_END"

    aput-object v1, v0, v19

    iget-object v1, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v3, 0x7f09008d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v20, v3, v8

    aput-object v21, v3, v7

    aput-object v22, v3, v10

    aput-object v23, v3, v9

    const/4 v4, 0x4

    aput-object v24, v3, v4

    const/4 v4, 0x5

    aput-object v25, v3, v4

    aput-object v26, v3, v16

    aput-object v27, v3, v17

    const-string v4, "\u5173\u95ed\u8bed\u97f3\u52a9\u624b"

    aput-object v4, v3, v18

    const-string v4, "\u7535\u8bdd\u63a5\u542c"

    aput-object v4, v3, v2

    const-string v4, "\u7535\u8bdd\u6302\u65ad"

    aput-object v4, v3, v19

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, La/a/b/n/g;->W:Landroid/content/Context;

    const v13, 0x7f0c0024

    invoke-direct {v4, v5, v13, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x7f0c0022

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v4, 0x7f09008e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/UnderlineSpan;

    invoke-direct {v13}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v13, v8, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, La/a/b/n/h$i;

    invoke-direct {v4, v6, v0, v1}, La/a/b/n/h$i;-><init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v4, 0x7f09008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/UnderlineSpan;

    invoke-direct {v13}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v13, v8, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, La/a/b/n/h$j;

    invoke-direct {v4, v6, v0, v1}, La/a/b/n/h$j;-><init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u4f7f\u7528"

    aput-object v3, v1, v8

    const-string v3, "\u957f\u5b89\u65b9\u63a7\u534f\u8bae1(\u652f\u6301\u6b27\u5c1aA800 V\u7248)"

    aput-object v3, v1, v7

    const-string v3, "\u957f\u5b89\u65b9\u63a7\u534f\u8bae2(\u652f\u6301CS75 18\u6b3e)"

    aput-object v3, v1, v10

    const-string v3, "\u957f\u5b89\u65b9\u63a7\u534f\u8bae3(\u652f\u6301CS55 17\u6b3e)"

    aput-object v3, v1, v9

    const-string v3, "\u5947\u745e\u65b9\u63a7\u534f\u8bae1(\u652f\u6301\u827e\u745e\u6cfdGX 19\u6b3e)"

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const-string v3, "\u5409\u5229\u65b9\u63a7\u534f\u8bae1(\u652f\u6301\u8fdc\u666fSUV)"

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const-string v3, "\u96ea\u4f5b\u5170\u65b9\u63a7\u534f\u8bae1(\u652f\u6301\u8fc8\u9510\u5b9d)"

    aput-object v3, v1, v16

    const-string v3, "\u8bfa\u5a01\u8fbe\u8f66\u673a\u65b9\u63a7\u534f\u8bae1"

    aput-object v3, v1, v17

    const-string v3, "\u5409\u5229\u65b9\u63a7\u534f\u8bae2(\u652f\u6301\u5e1d\u8c6aGS 18\u6b3e)"

    aput-object v3, v1, v18

    new-instance v3, Landroid/widget/ArrayAdapter;

    sget-object v4, La/a/b/n/g;->W:Landroid/content/Context;

    const v5, 0x7f0c0023

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x7f0c0022

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    sget v3, La/a/a/a/l/b;->a:I

    .line 3
    iget-object v1, v1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "BUTTON_CONTROL"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4
    :goto_1
    invoke-virtual {v0, v3, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v1, La/a/b/n/h$k;

    invoke-direct {v1, v6}, La/a/b/n/h$k;-><init>(La/a/b/n/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "QTXY_KEYCODE_MEDIA_PLAY_PAUSE"

    aput-object v1, v0, v8

    const-string v1, "QTXY_KEYCODE_MEDIA_START"

    aput-object v1, v0, v7

    const-string v1, "QTXY_KEYCODE_MEDIA_STOP"

    aput-object v1, v0, v10

    const-string v1, "QTXY_KEYCODE_SEEK_ADD"

    aput-object v1, v0, v9

    const-string v1, "QTXY_KEYCODE_SEEK_SUB"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "QTXY_KEYCODE_MAIN"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "QTXY_KEYCODE_MEDIA"

    aput-object v1, v0, v16

    const-string v1, "QTXY_KEYCODE_VR_START"

    aput-object v1, v0, v17

    const-string v1, "QTXY_KEYCODE_VR_STOP"

    aput-object v1, v0, v18

    const-string v1, "QTXY_KEYCODE_PHONE_CALL"

    aput-object v1, v0, v2

    const-string v1, "QTXY_KEYCODE_PHONE_END"

    aput-object v1, v0, v19

    iget-object v1, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v3, 0x7f0900ce

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v20, v3, v8

    aput-object v21, v3, v7

    aput-object v22, v3, v10

    aput-object v23, v3, v9

    const/4 v4, 0x4

    aput-object v24, v3, v4

    const/4 v4, 0x5

    aput-object v25, v3, v4

    aput-object v26, v3, v16

    aput-object v27, v3, v17

    const-string v4, "\u5173\u95ed\u8bed\u97f3\u52a9\u624b"

    aput-object v4, v3, v18

    const-string v4, "\u7535\u8bdd\u63a5\u542c"

    aput-object v4, v3, v2

    const-string v4, "\u7535\u8bdd\u6302\u65ad"

    aput-object v4, v3, v19

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, La/a/b/n/g;->W:Landroid/content/Context;

    const v13, 0x7f0c0024

    invoke-direct {v4, v5, v13, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x7f0c0022

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v4, 0x7f0900cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/UnderlineSpan;

    invoke-direct {v13}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v13, v8, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, La/a/b/n/h$l;

    invoke-direct {v4, v6, v0, v1}, La/a/b/n/h$l;-><init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v4, 0x7f0900d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/UnderlineSpan;

    invoke-direct {v13}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v13, v8, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, La/a/b/n/h$m;

    invoke-direct {v4, v6, v0, v1}, La/a/b/n/h$m;-><init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-array v1, v10, [Ljava/lang/String;

    const-string v3, "\u5173\u95ed"

    aput-object v3, v1, v8

    const-string v3, "\u5f00\u542f"

    aput-object v3, v1, v7

    new-instance v3, Landroid/widget/ArrayAdapter;

    sget-object v4, La/a/b/n/g;->W:Landroid/content/Context;

    const v5, 0x7f0c0023

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x7f0c0022

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-array v1, v7, [I

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v3

    .line 5
    iget-object v3, v3, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const-string v4, "LOGCAT_JT_KG"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_2
    aput v3, v1, v8

    .line 6
    aget v3, v1, v8

    invoke-virtual {v0, v3, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v3, La/a/b/n/h$a;

    invoke-direct {v3, v6, v1}, La/a/b/n/h$a;-><init>(La/a/b/n/h;[I)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "RZJQ_KEYCODE_MEDIA_PLAY_PAUSE"

    aput-object v1, v0, v8

    const-string v1, "RZJQ_KEYCODE_MEDIA_START"

    aput-object v1, v0, v7

    const-string v1, "RZJQ_KEYCODE_MEDIA_STOP"

    aput-object v1, v0, v10

    const-string v1, "RZJQ_KEYCODE_SEEK_ADD"

    aput-object v1, v0, v9

    const-string v1, "RZJQ_KEYCODE_SEEK_SUB"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "RZJQ_KEYCODE_MAIN"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "RZJQ_KEYCODE_MEDIA"

    aput-object v1, v0, v16

    const-string v1, "RZJQ_KEYCODE_VR_START"

    aput-object v1, v0, v17

    const-string v1, "RZJQ_KEYCODE_VR_STOP"

    aput-object v1, v0, v18

    const-string v1, "RZJQ_KEYCODE_PHONE_CALL"

    aput-object v1, v0, v2

    const-string v1, "RZJQ_KEYCODE_PHONE_END"

    aput-object v1, v0, v19

    iget-object v1, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v3, 0x7f09009f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v20, v3, v8

    aput-object v21, v3, v7

    aput-object v22, v3, v10

    aput-object v23, v3, v9

    const/4 v4, 0x4

    aput-object v24, v3, v4

    const/4 v4, 0x5

    aput-object v25, v3, v4

    aput-object v26, v3, v16

    aput-object v27, v3, v17

    const-string v4, "\u5173\u95ed\u8bed\u97f3\u52a9\u624b"

    aput-object v4, v3, v18

    const-string v4, "\u7535\u8bdd\u63a5\u542c"

    aput-object v4, v3, v2

    const-string v2, "\u7535\u8bdd\u6302\u65ad"

    aput-object v2, v3, v19

    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v4, La/a/b/n/g;->W:Landroid/content/Context;

    const v5, 0x7f0c0024

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v3, 0x7f0900a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v8, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, La/a/b/n/h$b;

    invoke-direct {v3, v6, v0, v1}, La/a/b/n/h$b;-><init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v8, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, La/a/b/n/h$c;

    invoke-direct {v1, v6}, La/a/b/n/h$c;-><init>(La/a/b/n/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v8, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, La/a/b/n/h$d;

    invoke-direct {v1, v6}, La/a/b/n/h$d;-><init>(La/a/b/n/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, La/a/b/n/g;->Y:Landroid/view/View;

    return-object v0
.end method

.method public Q()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->Q()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
