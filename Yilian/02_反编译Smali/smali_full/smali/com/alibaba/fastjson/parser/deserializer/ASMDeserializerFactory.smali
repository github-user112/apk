.class public Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    }
.end annotation


# static fields
.field public static final DefaultJSONParser:Ljava/lang/String;

.field public static final JSONLexerBase:Ljava/lang/String;


# instance fields
.field public final classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field public final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    instance-of v0, p1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
    .locals 4

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    if-eqz p3, :cond_1

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 8

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v3, 0x1

    const-string v1, "(L"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-static {v1, v2, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "createInstance"

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0xbb

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 p1, 0x59

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 p1, 0xb7

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 6

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    const/16 v3, 0xb7

    if-eqz v2, :cond_0

    const/16 v0, 0xbb

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {p2, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v4, 0x1

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb4

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "clazz"

    const-string v5, "Ljava/lang/Class;"

    invoke-interface {p2, v1, v2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(L"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-static {v1, v2, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createInstance"

    invoke-interface {p2, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :goto_0
    const/16 v0, 0x3a

    const-string v1, "instance"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private _deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct/range {p0 .. p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    iget v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v7, v7, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v6, v7

    const-string v7, "(L"

    const-string v8, "deserialze"

    const-string v9, "(I)Ljava/lang/reflect/Type;"

    const-string v10, "getFieldType"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0xc0

    const/16 v14, 0x19

    if-eqz v6, :cond_1

    const/16 v6, 0x59

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v6, 0xc1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v6, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v6, 0x99

    invoke-interface {v1, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {v1, v14, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v14, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0xb6

    invoke-interface {v1, v11, v6, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    iget v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v15, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v12, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-static {v11, v15, v12}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb6

    invoke-interface {v1, v12, v6, v8, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v6

    const/16 v11, 0x3a

    invoke-interface {v1, v11, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xa7

    invoke-interface {v1, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :cond_1
    const/4 v4, 0x1

    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    invoke-interface {v1, v4, v3, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v3, 0xb9

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v9, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v6, v7, v9}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v8, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v13, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 4

    const-string v0, "matchedCount"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x15

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x9e

    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "lexer"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb6

    const-string v2, "token"

    const-string v3, "()I"

    invoke-interface {p2, v1, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    return-void
.end method

.method private _deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    return-void

    :cond_1
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$202(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    new-instance v7, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v12, 0x1

    const-string v17, "(L"

    invoke-static/range {v17 .. v17}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-static {v1, v2, v3}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "deserialze"

    move-object v10, v7

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    invoke-direct {v8, v9, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v14, "lexer"

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v4, 0xb6

    const-string v5, "token"

    const-string v6, "()I"

    invoke-virtual {v7, v4, v2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v2

    const/16 v2, 0x15

    const/4 v5, 0x4

    if-nez v0, :cond_5

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v2, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "isEnabled"

    const-string v5, "(II)Z"

    invoke-virtual {v7, v4, v0, v2, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x1

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v2, 0x2

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v2, 0x3

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v0, 0xb7

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v15, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v5, v6, v15}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deserialzeArrayMapping"

    invoke-virtual {v7, v0, v2, v6, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    invoke-virtual {v7, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0x9a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    invoke-virtual {v7, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanType"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-virtual {v7, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0xa0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    invoke-virtual {v7, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "()"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContext"

    invoke-virtual {v7, v4, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mark_context"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const-string v0, "matchedCount"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x36

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-direct {v8, v9, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "()"

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getContext"

    invoke-virtual {v7, v4, v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x1

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v0, "context"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v0, "instance"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x3

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "("

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setContext"

    invoke-virtual {v7, v4, v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "childContext"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb4

    const-string v15, "matchStat"

    const-string v6, "I"

    invoke-virtual {v7, v1, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0xa0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    invoke-virtual {v7, v1, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    array-length v5, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_6

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_asm_flag_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    add-int/lit8 v1, v1, 0x20

    const/4 v0, 0x3

    goto :goto_2

    :cond_6
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initStringFieldAsEmpty"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    goto/16 :goto_7

    :cond_7
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x37

    goto :goto_4

    :cond_8
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_9

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x38

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    goto :goto_5

    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_a

    const/16 v2, 0xe

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x39

    :goto_4
    const/4 v3, 0x2

    invoke-virtual {v9, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    :goto_5
    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    goto/16 :goto_9

    :cond_a
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_b

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 p1, v11

    const-string v11, "initStringFieldAsEmpty"

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v16, v12

    const/16 v12, 0x15

    invoke-virtual {v7, v12, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v11, 0x99

    invoke-virtual {v7, v11, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v8, v7, v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x19

    invoke-virtual {v7, v12, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v12, "stringDefaultValue"

    move-object/from16 v18, v13

    const-string v13, "()Ljava/lang/String;"

    move-object/from16 v19, v10

    const/16 v10, 0xb6

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xa7

    invoke-virtual {v7, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_6

    :cond_b
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    :goto_6
    const/16 v3, 0xc0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    goto :goto_8

    :cond_c
    :goto_7
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x36

    :goto_8
    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, p1

    move-object/from16 v12, v16

    move-object/from16 v13, v18

    move-object/from16 v10, v19

    goto/16 :goto_3

    :cond_d
    move-object/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v5, :cond_28

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    aget-object v4, v0, v10

    iget-object v11, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "[C"

    if-ne v11, v2, :cond_e

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldBoolean"

    const-string v3, "([C)Z"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v2, 0x36

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_c

    :cond_e
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v12, "([C)I"

    const-string v13, "scanFieldInt"

    if-ne v11, v2, :cond_f

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    move-object/from16 v22, v1

    move/from16 v21, v5

    goto/16 :goto_14

    :cond_f
    const-class v2, Ljava/lang/Byte;

    const/16 v20, 0x5

    move/from16 v21, v5

    const-string v5, "valueOf"

    move-object/from16 v22, v1

    const/16 v1, 0xb8

    if-ne v11, v2, :cond_10

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Byte"

    const-string v2, "(B)Ljava/lang/Byte;"

    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_10

    :cond_10
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_11

    goto :goto_d

    :cond_11
    const-class v2, Ljava/lang/Short;

    if-ne v11, v2, :cond_12

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Short"

    const-string v2, "(S)Ljava/lang/Short;"

    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_10

    :cond_12
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_13

    :goto_d
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb6

    invoke-virtual {v7, v1, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    goto/16 :goto_13

    :cond_13
    const-class v2, Ljava/lang/Integer;

    if-ne v11, v2, :cond_14

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb6

    invoke-virtual {v7, v2, v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Integer"

    const-string v2, "(I)Ljava/lang/Integer;"

    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_10

    :cond_14
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_15

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldLong"

    const-string v2, "([C)J"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    :goto_e
    const/4 v1, 0x2

    invoke-virtual {v9, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    :goto_f
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_14

    :cond_15
    const-class v2, Ljava/lang/Long;

    if-ne v11, v2, :cond_16

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldLong"

    const-string v3, "([C)J"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Long"

    const-string v2, "(J)Ljava/lang/Long;"

    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto :goto_10

    :cond_16
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_17

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldFloat"

    const-string v2, "([C)F"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    goto :goto_f

    :cond_17
    const-class v2, Ljava/lang/Float;

    if-ne v11, v2, :cond_18

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldFloat"

    const-string v3, "([C)F"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Float"

    const-string v2, "(F)Ljava/lang/Float;"

    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    :goto_10
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v1, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_14

    :cond_18
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v11, v2, :cond_19

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldDouble"

    const-string v2, "([C)D"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    goto/16 :goto_e

    :cond_19
    const-class v2, Ljava/lang/Double;

    if-ne v11, v2, :cond_1a

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldDouble"

    const-string v3, "([C)D"

    const/16 v11, 0xb6

    invoke-virtual {v7, v11, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Double"

    const-string v2, "(D)Ljava/lang/Double;"

    invoke-virtual {v7, v1, v0, v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_10

    :cond_1a
    const-class v1, Ljava/lang/String;

    if-ne v11, v1, :cond_1b

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldString"

    const-string v2, "([C)Ljava/lang/String;"

    goto/16 :goto_11

    :cond_1b
    const-class v1, Ljava/util/Date;

    if-ne v11, v1, :cond_1c

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldDate"

    const-string v2, "([C)Ljava/util/Date;"

    goto/16 :goto_11

    :cond_1c
    const-class v1, Ljava/util/UUID;

    if-ne v11, v1, :cond_1d

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldUUID"

    const-string v2, "([C)Ljava/util/UUID;"

    goto/16 :goto_11

    :cond_1d
    const-class v1, Ljava/math/BigDecimal;

    if-ne v11, v1, :cond_1e

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldDecimal"

    const-string v2, "([C)Ljava/math/BigDecimal;"

    goto/16 :goto_11

    :cond_1e
    const-class v1, Ljava/math/BigInteger;

    if-ne v11, v1, :cond_1f

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldBigInteger"

    const-string v2, "([C)Ljava/math/BigInteger;"

    goto :goto_11

    :cond_1f
    const-class v1, [I

    if-ne v11, v1, :cond_20

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldIntArray"

    const-string v2, "([C)[I"

    goto :goto_11

    :cond_20
    const-class v1, [F

    if-ne v11, v1, :cond_21

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldFloatArray"

    const-string v2, "([C)[F"

    goto :goto_11

    :cond_21
    const-class v1, [[F

    if-ne v11, v1, :cond_22

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFieldFloatArray2"

    const-string v2, "([C)[[F"

    :goto_11
    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_22
    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")Ljava/lang/Enum;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanEnum"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_12

    :cond_23
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb4

    invoke-virtual {v7, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_25

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "([CLjava/lang/Class;)"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanFieldStringArray"

    const/16 v3, 0xb6

    invoke-virtual {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    :goto_13
    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_14
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v7, v2, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x9e

    invoke-virtual {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v8, v7, v9, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-virtual {v7, v2, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x59

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    move-object/from16 v13, v19

    invoke-virtual {v7, v0, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb4

    invoke-virtual {v7, v1, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9e

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "matchedCount"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x15

    invoke-virtual {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v2, 0x60

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const-string v2, "matchedCount"

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x36

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-virtual {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v7, v3, v2, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    move-object/from16 v5, v18

    invoke-virtual {v7, v0, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    add-int/lit8 v0, v21, -0x1

    if-ne v10, v0, :cond_24

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb4

    invoke-virtual {v7, v1, v0, v15, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    invoke-virtual {v7, v0, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    :cond_24
    move-object/from16 v20, v6

    move-object v12, v7

    move-object/from16 v18, v14

    move/from16 v19, v21

    move-object v14, v5

    goto :goto_16

    :cond_25
    move-object/from16 v5, v18

    move-object/from16 v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v13

    move-object/from16 v18, v14

    move/from16 v19, v21

    move-object v14, v5

    move-object v5, v11

    move-object/from16 v20, v6

    move-object v6, v12

    move-object v12, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V

    add-int/lit8 v5, v19, -0x1

    if-ne v10, v5, :cond_27

    goto :goto_15

    :cond_26
    move-object/from16 v20, v6

    move-object v12, v7

    move-object/from16 v13, v19

    move/from16 v19, v21

    move-object/from16 v23, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    add-int/lit8 v5, v19, -0x1

    if-ne v10, v5, :cond_27

    :goto_15
    invoke-direct {v8, v9, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    :cond_27
    :goto_16
    add-int/lit8 v10, v10, 0x1

    move-object v7, v12

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v19, v13

    move-object/from16 v23, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v23

    goto/16 :goto_a

    :cond_28
    move-object v12, v7

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move/from16 v19, v5

    const/16 v0, 0x19

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {v8, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    :cond_29
    move-object/from16 v1, v16

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v8, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const-string v1, "instance"

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "()"

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb6

    invoke-virtual {v12, v4, v2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/16 v1, 0xb0

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v8, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x2

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x3

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v1, "instance"

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x15

    const/4 v2, 0x4

    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    div-int/lit8 v5, v19, 0x20

    if-eqz v19, :cond_2b

    rem-int/lit8 v1, v19, 0x20

    if-eqz v1, :cond_2b

    add-int/lit8 v5, v5, 0x1

    :cond_2b
    const/4 v1, 0x1

    if-ne v5, v1, :cond_2c

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    goto :goto_17

    :cond_2c
    const/16 v1, 0x10

    invoke-virtual {v12, v1, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    :goto_17
    const/16 v1, 0xbc

    const/16 v3, 0xa

    invoke-virtual {v12, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v5, :cond_2f

    const/16 v3, 0x59

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    if-nez v1, :cond_2d

    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    goto :goto_19

    :cond_2d
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    goto :goto_19

    :cond_2e
    const/16 v3, 0x10

    invoke-virtual {v12, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitIntInsn(II)V

    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_asm_flag_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    invoke-virtual {v12, v4, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0x4f

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2f
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;"

    invoke-static {v3, v4, v5}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parseRest"

    const/16 v5, 0xb6

    invoke-virtual {v12, v5, v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc0

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb0

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    move-object/from16 v1, p1

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x2

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x3

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x15

    invoke-virtual {v12, v0, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xb7

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-static {v2, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialze"

    invoke-virtual {v12, v0, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v0, 0xa

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    invoke-virtual {v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-class v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    new-instance v5, Lcom/alibaba/fastjson/asm/MethodWriter;

    const-string v0, "(L"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v2, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v0, v1, v2}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x1

    const-string v12, "deserialzeArrayMapping"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v10, p1

    move v11, v0

    invoke-direct/range {v9 .. v15}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v6, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const-string v9, "lexer"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, "()"

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    const-string v10, "getSymbolTable"

    invoke-virtual {v5, v4, v1, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, "("

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v10, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")Ljava/lang/String;"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanTypeName"

    invoke-virtual {v5, v4, v1, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "typeName"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v10, "typeName"

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v2, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v10, 0xc6

    invoke-virtual {v5, v10, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v10, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v11, "()"

    invoke-static {v11}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getConfig"

    invoke-virtual {v5, v4, v10, v12, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v2, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb4

    const-string v13, "beanInfo"

    invoke-virtual {v5, v12, v10, v13, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "typeName"

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v2, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "("

    invoke-static {v11}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v12, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Ljava/lang/String;)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb8

    const-string v13, "getSeeAlso"

    invoke-virtual {v5, v12, v10, v13, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "userTypeDeser"

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v3, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v3, "userTypeDeser"

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0xc1

    invoke-virtual {v5, v10, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0x99

    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v3, "userTypeDeser"

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x2

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x3

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x4

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(L"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v10, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v2, v3, v10}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialzeArrayMapping"

    invoke-virtual {v5, v4, v0, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v6, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v10, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v11, v10

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    const-string v0, "ch"

    const-string v1, "(I)V"

    const-string v2, "()C"

    if-ge v12, v11, :cond_1c

    add-int/lit8 v3, v11, -0x1

    if-ne v12, v3, :cond_0

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_1

    const/16 v3, 0x5d

    goto :goto_2

    :cond_1
    const/16 v3, 0x2c

    :goto_2
    aget-object v4, v10, v12

    iget-object v14, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v15, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 p1, v10

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v14, v10, :cond_1b

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v14, v10, :cond_1b

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v10, :cond_2

    goto/16 :goto_10

    :cond_2
    const-class v10, Ljava/lang/Byte;

    move/from16 v16, v11

    const-string v11, "I"

    move/from16 v17, v13

    const-string v13, "matchStat"

    move-object/from16 v18, v1

    const-string v1, "valueOf"

    if-ne v14, v10, :cond_3

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Byte"

    const-string v2, "(B)Ljava/lang/Byte;"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_5

    :cond_3
    const-class v10, Ljava/lang/Short;

    if-ne v14, v10, :cond_4

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Short"

    const-string v2, "(S)Ljava/lang/Short;"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_5

    :cond_4
    const-class v10, Ljava/lang/Integer;

    if-ne v14, v10, :cond_5

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Integer"

    const-string v2, "(I)Ljava/lang/Integer;"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_5

    :cond_5
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v10, :cond_6

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanLong"

    const-string v2, "(C)J"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    goto/16 :goto_3

    :cond_6
    const-class v10, Ljava/lang/Long;

    if-ne v14, v10, :cond_7

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanLong"

    const-string v3, "(C)J"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Long"

    const-string v2, "(J)Ljava/lang/Long;"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto/16 :goto_5

    :cond_7
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v10, :cond_8

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanBoolean"

    const-string v2, "(C)Z"

    const/16 v3, 0xb6

    goto/16 :goto_6

    :cond_8
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v10, :cond_9

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFloat"

    const-string v2, "(C)F"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    goto :goto_4

    :cond_9
    const-class v10, Ljava/lang/Float;

    if-ne v14, v10, :cond_a

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFloat"

    const-string v3, "(C)F"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Float"

    const-string v2, "(F)Ljava/lang/Float;"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    goto :goto_5

    :cond_a
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v10, :cond_b

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDouble"

    const-string v2, "(C)D"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    :goto_3
    const/4 v1, 0x2

    invoke-virtual {v7, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    :goto_4
    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto/16 :goto_9

    :cond_b
    const-class v10, Ljava/lang/Double;

    if-ne v14, v10, :cond_c

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanDouble"

    const-string v3, "(C)D"

    const/16 v10, 0xb6

    invoke-virtual {v5, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Double"

    const-string v2, "(D)Ljava/lang/Double;"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    :goto_5
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_9

    :cond_c
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v14, v10, :cond_d

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v2, "(C)Ljava/lang/String;"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const-string v0, "java/lang/String"

    const-string v1, "charAt"

    const-string v2, "(I)C"

    :goto_6
    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    goto :goto_8

    :cond_d
    const-class v10, Ljava/lang/String;

    if-ne v14, v10, :cond_e

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v2, "(C)Ljava/lang/String;"

    goto :goto_7

    :cond_e
    const-class v10, Ljava/math/BigDecimal;

    if-ne v14, v10, :cond_f

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDecimal"

    const-string v2, "(C)Ljava/math/BigDecimal;"

    goto :goto_7

    :cond_f
    const-class v10, Ljava/util/Date;

    if-ne v14, v10, :cond_10

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDate"

    const-string v2, "(C)Ljava/util/Date;"

    goto :goto_7

    :cond_10
    const-class v10, Ljava/util/UUID;

    if-ne v14, v10, :cond_11

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanUUID"

    const-string v2, "(C)Ljava/util/UUID;"

    :goto_7
    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    :goto_8
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_9
    move-object/from16 v20, v8

    move/from16 v19, v12

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move/from16 v19, v12

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v20, v8

    const/16 v8, 0x19

    invoke-virtual {v5, v8, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v12, "getCurrent"

    move-object/from16 v21, v1

    const/16 v1, 0xb6

    invoke-virtual {v5, v1, v8, v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x36

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0x9f

    invoke-virtual {v5, v1, v15}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-virtual {v5, v1, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v5, v15}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v2, "()"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v8, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "getSymbolTable"

    const/16 v12, 0xb6

    invoke-virtual {v5, v12, v1, v8, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v5, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "(Ljava/lang/Class;"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v8, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "C)Ljava/lang/Enum;"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "scanEnum"

    invoke-virtual {v5, v12, v1, v8, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa7

    invoke-virtual {v5, v1, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa1

    invoke-virtual {v5, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa3

    invoke-virtual {v5, v0, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v6, v7, v5, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v0, 0xc0

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v2, "(C)I"

    const/16 v8, 0xb6

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(I)Ljava/lang/Enum;"

    move-object/from16 v2, v21

    invoke-virtual {v5, v8, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-virtual {v5, v0, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v5, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(L"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, ";C)Ljava/lang/Enum;"

    invoke-static {v1, v2, v3}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanEnum"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xc0

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_a
    move/from16 v8, v19

    goto/16 :goto_e

    :cond_12
    move-object/from16 v20, v8

    move/from16 v19, v12

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_15

    const-class v0, Ljava/util/List;

    if-eq v14, v0, :cond_14

    const-class v0, Ljava/util/Collections;

    if-eq v14, v0, :cond_14

    const-class v0, Ljava/util/ArrayList;

    if-ne v14, v0, :cond_13

    goto :goto_b

    :cond_13
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const-class v0, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createCollection"

    const-string v2, "(Ljava/lang/Class;)Ljava/util/Collection;"

    const/16 v8, 0xb8

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_14
    :goto_b
    const/16 v0, 0xbb

    const-class v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/16 v0, 0xb7

    const-class v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    const-string v8, "()V"

    invoke-virtual {v5, v0, v1, v2, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanStringArray"

    const-string v3, "(Ljava/util/Collection;C)V"

    const/16 v8, 0xb6

    invoke-virtual {v5, v8, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {v5, v2, v1, v13, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_a

    :cond_15
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x19

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v8, "token"

    const-string v10, "()I"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v3, v8, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "token"

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x36

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const-string v3, "token"

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x15

    invoke-virtual {v5, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    if-nez v19, :cond_16

    const/16 v3, 0xe

    goto :goto_d

    :cond_16
    const/16 v3, 0x10

    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v8, 0x9f

    invoke-virtual {v5, v8, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v8, 0x1

    const/16 v10, 0x19

    invoke-virtual {v5, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v8, "throwException"

    const/16 v10, 0xb6

    move-object/from16 v11, v18

    invoke-virtual {v5, v10, v3, v8, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v12, 0x19

    invoke-virtual {v5, v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "getCurrent"

    invoke-virtual {v5, v10, v8, v13, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x5b

    const/16 v13, 0x10

    invoke-virtual {v5, v13, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v8, 0xa0

    invoke-virtual {v5, v8, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "next"

    invoke-virtual {v5, v10, v8, v13, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v12, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v8, "setToken"

    invoke-virtual {v5, v10, v2, v8, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa7

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    invoke-virtual {v5, v10, v1, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x0

    move/from16 v8, v19

    invoke-direct {v6, v5, v14, v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    const/16 v1, 0x59

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-direct {v6, v7, v5, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(Ljava/util/Collection;"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    invoke-static {v1, v2, v3}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseArray"

    const/16 v3, 0xb8

    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object v12, v5

    goto/16 :goto_11

    :cond_17
    move-object/from16 v11, v18

    move/from16 v8, v19

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    const/16 v3, 0xb6

    invoke-virtual {v5, v3, v0, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFieldType"

    const-string v2, "(I)Ljava/lang/reflect/Type;"

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "parseObject"

    const-string v2, "(Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-virtual {v5, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    goto :goto_e

    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-class v1, Ljava/util/Date;

    if-ne v14, v1, :cond_19

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v11, 0x19

    invoke-virtual {v5, v11, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v11, "getCurrent"

    const/16 v12, 0xb6

    invoke-virtual {v5, v12, v1, v11, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xbb

    const-class v2, Ljava/util/Date;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0x59

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0x10

    invoke-virtual {v5, v1, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanLong"

    const-string v3, "(C)J"

    const/16 v11, 0xb6

    invoke-virtual {v5, v11, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb7

    const-class v2, Ljava/util/Date;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    const-string v11, "(J)V"

    invoke-virtual {v5, v1, v2, v3, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v5, v2, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0xa7

    invoke-virtual {v5, v1, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    :cond_19
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xe

    invoke-direct {v6, v7, v5, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v4

    move-object v4, v14

    move-object v12, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "token"

    const-string v3, "()I"

    const/16 v4, 0xb6

    invoke-virtual {v12, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    invoke-virtual {v12, v0, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x0

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    if-nez v17, :cond_1a

    const/16 v0, 0x10

    goto :goto_f

    :cond_1a
    const/16 v0, 0xf

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb7

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I)V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "check"

    invoke-virtual {v12, v0, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_11

    :cond_1b
    :goto_10
    move-object/from16 v20, v8

    move/from16 v16, v11

    move v8, v12

    move-object v12, v5

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-virtual {v12, v0, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v2, "(C)I"

    const/16 v3, 0xb6

    invoke-virtual {v12, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    :goto_11
    add-int/lit8 v0, v8, 0x1

    move-object/from16 v10, p1

    move-object v5, v12

    move/from16 v11, v16

    move-object/from16 v8, v20

    move v12, v0

    goto/16 :goto_0

    :cond_1c
    move-object v11, v1

    move-object v12, v5

    const/4 v1, 0x0

    invoke-direct {v6, v7, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x19

    invoke-virtual {v12, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "getCurrent"

    const/16 v14, 0xb6

    invoke-virtual {v12, v14, v8, v13, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x59

    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v13, 0x36

    invoke-virtual {v12, v13, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v8, 0x2c

    const/16 v13, 0x10

    invoke-virtual {v12, v13, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v8, 0xa0

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v15, "next"

    invoke-virtual {v12, v14, v8, v15, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x57

    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v10, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v10, "setToken"

    invoke-virtual {v12, v14, v8, v10, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xa7

    invoke-virtual {v12, v8, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x15

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0x5d

    invoke-virtual {v12, v13, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0xa0

    invoke-virtual {v12, v3, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x19

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v10, "next"

    const/16 v13, 0xb6

    invoke-virtual {v12, v13, v3, v10, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v8, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v8, "setToken"

    invoke-virtual {v12, v13, v3, v8, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    invoke-virtual {v12, v3, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x15

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x1a

    const/16 v3, 0x10

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xa0

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "next"

    const/16 v8, 0xb6

    invoke-virtual {v12, v8, v0, v4, v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x57

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "setToken"

    invoke-virtual {v12, v8, v0, v2, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-virtual {v12, v0, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "nextToken"

    invoke-virtual {v12, v8, v0, v1, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "instance"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v0, 0xb0

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {v12, v1, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    invoke-virtual {v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    const-class v8, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    sget-object v10, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v11, 0xb6

    const-string v12, "matchField"

    const-string v13, "([C)Z"

    invoke-interface {v2, v11, v10, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x99

    invoke-interface {v2, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-direct {v0, v2, v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v12, "lexer"

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x19

    invoke-interface {v2, v14, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v14, "token"

    const-string v15, "()I"

    invoke-interface {v2, v11, v13, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v11, 0xa0

    invoke-interface {v2, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v13, 0x19

    invoke-interface {v2, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "nextToken"

    move-object/from16 v16, v8

    const-string v8, "(I)V"

    const/16 v6, 0xb6

    invoke-interface {v2, v6, v11, v13, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa7

    invoke-interface {v2, v6, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 v17, v9

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v4, 0x19

    invoke-interface {v2, v4, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb6

    invoke-interface {v2, v9, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    invoke-interface {v2, v4, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v9, 0x19

    invoke-interface {v2, v9, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb6

    invoke-interface {v2, v9, v4, v13, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v0, v2, v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v10, 0x19

    invoke-interface {v2, v10, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v9, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x9f

    invoke-interface {v2, v4, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v10, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v9, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v9, 0xa0

    invoke-interface {v2, v9, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v9, 0x0

    invoke-direct {v0, v2, v5, v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    move-object/from16 v9, p4

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v10

    const/16 v3, 0x3a

    invoke-interface {v2, v3, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/4 v10, 0x1

    move-object/from16 v18, v14

    const/16 v14, 0x19

    invoke-interface {v2, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v10, 0x3

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v10, 0xb8

    const-string v14, "java/lang/Integer"

    move-object/from16 v19, v4

    const-string v4, "valueOf"

    move-object/from16 v20, v8

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-interface {v2, v10, v14, v4, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "(L"

    invoke-static {v8}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v14, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v8, v10, v14}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xb9

    const-string v14, "deserialze"

    invoke-interface {v2, v10, v4, v14, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "list_item_value"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x3a

    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v8

    const/16 v10, 0x19

    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v10, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    const-string v10, "(Ljava/lang/Object;)Z"

    const-string v14, "add"

    if-eqz v8, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v4

    const/16 v4, 0xb9

    invoke-interface {v2, v4, v8, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v21, v4

    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xb6

    invoke-interface {v2, v8, v4, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v4, 0x57

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0xa7

    move-object/from16 v8, v17

    invoke-interface {v2, v4, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x0

    invoke-direct {v0, v2, v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v4

    const/16 v6, 0x3a

    invoke-interface {v2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v4, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const-string v6, "fastMatchToken"

    if-eqz v4, :cond_1

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "getFastMatchToken"

    const/16 v3, 0xb9

    invoke-interface {v2, v3, v7, v11, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x36

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x19

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x15

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v7, 0xb6

    move-object/from16 v11, v20

    invoke-interface {v2, v7, v3, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v11, v20

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    move-object/from16 v3, v19

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x36

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    :goto_1
    const/4 v3, 0x1

    const/16 v7, 0x19

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v7, "()"

    invoke-static {v7}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v17, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getContext"

    move-object/from16 v17, v8

    const/16 v8, 0xb6

    invoke-interface {v2, v8, v3, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "listContext"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x1

    const/16 v5, 0x19

    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v3

    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v3, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "(Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "setContext"

    invoke-interface {v2, v8, v3, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/4 v7, 0x3

    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v7, "i"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x36

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x19

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v7, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v8, 0xb6

    move-object/from16 v0, v18

    invoke-interface {v2, v8, v7, v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v7, 0x9f

    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v7, 0x0

    const/16 v8, 0x19

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p7, v5

    iget-object v5, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v11

    const-string v11, "_asm_list_item_deser__"

    invoke-static {v8, v5, v11}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0xb4

    invoke-interface {v2, v11, v7, v5, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/16 v7, 0x19

    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string v5, "i"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x15

    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb8

    const-string v7, "java/lang/Integer"

    const-string v8, "valueOf"

    const-string v11, "(I)Ljava/lang/Integer;"

    invoke-interface {v2, v5, v7, v8, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "(L"

    invoke-static {v7}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v11, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static {v7, v8, v11}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "deserialze"

    const/16 v11, 0xb9

    invoke-interface {v2, v11, v5, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x3a

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v7, "i"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v7

    const/16 v8, 0x19

    invoke-interface {v2, v8, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb9

    invoke-interface {v2, v7, v5, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    const/16 v7, 0xb6

    goto :goto_2

    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb6

    invoke-interface {v2, v7, v5, v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    :goto_2
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x1

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v5

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v9, "checkListResolve"

    const-string v10, "(Ljava/util/Collection;)V"

    invoke-interface {v2, v7, v5, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v7, v5, v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xa0

    invoke-interface {v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    if-eqz v4, :cond_3

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v8, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x15

    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    move-object/from16 v5, v20

    invoke-interface {v2, v7, v4, v13, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    move-object v5, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_3
    const/16 v4, 0xc

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    const/16 v4, 0xa7

    :goto_3
    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    move-object/from16 v3, p7

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v3, 0x1

    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v3, "listContext"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v8, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, "("

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")V"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "setContext"

    const/16 v7, 0xb6

    invoke-interface {v2, v7, v3, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v7, v3, v5, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    move-object/from16 v4, p3

    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    move-object/from16 v1, v17

    invoke-interface {v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    const-class v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const-class v10, Lcom/alibaba/fastjson/parser/ParseContext;

    const-class v11, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v1, "lexer"

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v13, 0x19

    invoke-interface {v7, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x0

    invoke-interface {v7, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    const-string v4, "[C"

    invoke-interface {v7, v3, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v14, 0xb6

    const-string v2, "matchField"

    const-string v3, "([C)Z"

    invoke-interface {v7, v14, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9a

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xa7

    invoke-interface {v7, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    move-object/from16 v15, p0

    move/from16 v5, p6

    invoke-direct {v15, v7, v6, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    const-string v0, "matchedCount"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x60

    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v14, 0x1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    invoke-interface {v7, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "getResolveStatus"

    const-string v2, "()I"

    const/16 v3, 0xb6

    invoke-interface {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    invoke-interface {v7, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v7, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "()"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLastResolveTask"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v0, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resolveTask"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v13, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-interface {v7, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getContext"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb5

    const-string v4, "ownerContext"

    invoke-interface {v7, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-interface {v7, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(Ljava/lang/String;)"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldDeserializer"

    const/16 v4, 0xb6

    invoke-interface {v7, v4, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fieldDeserializer"

    invoke-interface {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "setResolveStatus"

    const-string v2, "(I)V"

    const/16 v3, 0xb6

    invoke-interface {v7, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    const-string v8, "_asm_list_item_deser__"

    invoke-static {v6, v7, v8}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xb4

    invoke-interface {p2, v9, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc7

    invoke-interface {p2, v5, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v5, 0x1

    invoke-interface {p2, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v6, "()"

    invoke-static {v6}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb6

    const-string v10, "getConfig"

    invoke-interface {p2, v7, v5, v10, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "(Ljava/lang/reflect/Type;)"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "getDeserializer"

    invoke-interface {p2, v7, p4, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v0, v5, v8}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb5

    invoke-interface {p2, v6, p4, v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {p4, p3, v8}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v9, p1, p3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 10

    const-class v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb4

    invoke-interface {p2, v8, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc7

    invoke-interface {p2, v5, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v5, 0x1

    invoke-interface {p2, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v6, "()"

    invoke-static {v6}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb6

    const-string v9, "getConfig"

    invoke-interface {p2, v7, v5, v9, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(Ljava/lang/reflect/Type;)"

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getDeserializer"

    invoke-interface {p2, v7, v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb5

    invoke-interface {p2, v7, v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v8, v0, p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    const-class v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const-class v9, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v2

    array-length v2, v2

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v11, "[C"

    const/4 v12, 0x1

    if-ge v3, v2, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v4

    aget-object v4, v4, v3

    new-instance v5, Lcom/alibaba/fastjson/asm/FieldWriter;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v12, v4, v11}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/alibaba/fastjson/asm/FieldWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    const-string v13, "_asm_list_item_deser__"

    invoke-static {v6, v4, v13}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v12, v4, v6}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/asm/FieldWriter;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldDeserName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v12, v4, v6}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v13, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v2, 0x1

    const-string v14, "("

    invoke-static {v14}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")V"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "<init>"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-virtual {v13, v0, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    invoke-virtual {v13, v0, v12}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v1, 0x2

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v1, 0xb7

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    invoke-virtual {v13, v1, v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v13, v0, v10}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitVarInsn(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    const-string v5, "java/lang/String"

    const-string v6, "toCharArray"

    const-string v8, "()[C"

    invoke-virtual {v13, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb5

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldName(Lcom/alibaba/fastjson/util/FieldInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v4, v5, v3, v11}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/16 v0, 0xb1

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitInsn(I)V

    const/4 v0, 0x4

    invoke-virtual {v13, v0, v0}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitMaxs(II)V

    invoke-virtual {v13}, Lcom/alibaba/fastjson/asm/MethodWriter;->visitEnd()V

    return-void
.end method

.method private _isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V
    .locals 2

    const-string v0, "_asm_flag_"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x15

    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p2, 0x7e

    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 p2, 0x99

    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 7

    const-class v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x15

    const-string v5, "instance"

    const/16 v6, 0x19

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_4

    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_0

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    if-ne v1, v3, :cond_4

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x16

    invoke-virtual {p1, p3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    const/16 v0, 0xb6

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const/16 p1, 0x57

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_4

    :cond_3
    const/16 p1, 0xb5

    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x17

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    :goto_2
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_5
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x18

    invoke-virtual {p1, p3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;I)I

    move-result v1

    goto :goto_2

    :cond_6
    if-ne v1, v0, :cond_9

    :cond_7
    :goto_3
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_8
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_8

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var_asm(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xc0

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    :goto_4
    return-void
.end method

.method private _newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/lang/Class<",
            "*>;IZ)V"
        }
    .end annotation

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "()V"

    const-string v2, "<init>"

    const/16 v3, 0xb7

    const/16 v4, 0x59

    const/16 v5, 0xbb

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const-string p3, "java/util/ArrayList"

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    const-class p3, Ljava/util/LinkedList;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-class p3, Ljava/util/LinkedList;

    goto :goto_2

    :cond_1
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-class p3, Ljava/util/HashSet;

    :goto_2
    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class p3, Ljava/util/TreeSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-class p3, Ljava/util/TreeSet;

    goto :goto_2

    :cond_3
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class p3, Ljava/util/LinkedHashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-class p3, Ljava/util/LinkedHashSet;

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    const/16 p4, 0x19

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p3, 0xb6

    const-class p4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "getFieldType"

    const-string v1, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xb8

    const-class p4, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "createCollection"

    const-string v1, "(Ljava/lang/reflect/Type;)Ljava/util/Collection;"

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/16 p3, 0xc0

    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method private _quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V
    .locals 8

    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v2, "lexer"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v6, "getCurrent"

    const-string v7, "()C"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    const/16 v6, 0xc

    if-ne p3, v6, :cond_0

    const/16 v6, 0x7b

    :goto_0
    invoke-interface {p2, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    :cond_0
    const/16 v6, 0xe

    if-ne p3, v6, :cond_1

    const/16 v6, 0x5b

    goto :goto_0

    :goto_1
    const/16 v3, 0xa0

    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "next"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "setToken"

    const-string v7, "(I)V"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v4, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object p1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string p3, "nextToken"

    invoke-interface {p2, v5, p1, p3, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private _quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v7, "lexer"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x19

    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v10, 0xb6

    const-string v11, "getCurrent"

    const-string v12, "()C"

    invoke-interface {v1, v10, v8, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x59

    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v8, "ch"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v13, 0x36

    invoke-interface {v1, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x10

    const/16 v13, 0x2c

    invoke-interface {v1, v11, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xa0

    invoke-interface {v1, v13, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v15, "next"

    invoke-interface {v1, v10, v14, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x57

    invoke-interface {v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "setToken"

    const-string v13, "(I)V"

    invoke-interface {v1, v10, v14, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xa7

    invoke-interface {v1, v14, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v14, 0x15

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x7d

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    invoke-interface {v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0x19

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x5d

    const/16 v4, 0x10

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    invoke-interface {v1, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x1a

    const/16 v4, 0x10

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    invoke-interface {v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    const-string v3, "()V"

    invoke-interface {v1, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3

    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb9

    goto :goto_0

    :cond_0
    const/16 v0, 0xb6

    :goto_0
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x57

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0xb5

    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private _setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 6

    const-class v0, Lcom/alibaba/fastjson/parser/ParseContext;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "context"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, "("

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb6

    const-string v5, "setContext"

    invoke-interface {p2, v4, v2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v3, "childContext"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xc6

    invoke-interface {p2, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v3, "instance"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v1, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb5

    const-string v1, "object"

    const-string v3, "Ljava/lang/Object;"

    invoke-interface {p2, v0, p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
    .locals 3

    const-string v0, "_asm_flag_"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    shl-int p3, v1, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p3, 0x80

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x36

    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .locals 4

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    const-string v3, "lexer"

    invoke-interface {p2, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xc0

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3a

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method


# virtual methods
.method public createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 9

    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FastjsonASMDeserializer_"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-static {v1, v3, v0}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    const/16 v4, 0x31

    const/16 v5, 0x21

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x3

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x5

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x4

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4, v3}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    aput-object v3, v2, v4

    const-class v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not support type :"

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
