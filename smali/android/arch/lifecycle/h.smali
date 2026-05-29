.class public final Landroid/arch/lifecycle/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/c;
.implements Ld3/c0;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    iput p1, p0, Landroid/arch/lifecycle/h;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lf3/b;

    invoke-direct {p1}, Lf3/b;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La3/b0;La3/t2;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Landroid/arch/lifecycle/h;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/a;

    invoke-direct {v0, p1, p2}, La3/a;-><init>(La3/b0;La3/t2;)V

    iput-object v0, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 5
    iput p2, p0, Landroid/arch/lifecycle/h;->a:I

    iput-object p1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/io/InputStream;)Ld3/f;
    .registers 4

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ld3/b;

    iget-object v1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v1, Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p1, v0}, Ld3/b;-><init>(Lorg/w3c/dom/Document;)V

    return-object p1
.end method

.method public final h(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)La3/k1;
    .registers 10

    .line 1
    sget-object v0, La3/m1;->g:La3/m1;

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/h;->j(Ljava/lang/reflect/Method;)La3/m1;

    move-result-object v1

    sget-object v2, La3/m1;->d:La3/m1;

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/arch/lifecycle/h;->k(Ljava/lang/reflect/Method;La3/m1;)La3/v;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget-object v2, La3/m1;->e:La3/m1;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    array-length v4, v4

    if-ne v4, v3, :cond_4

    .line 3
    iget v2, v1, La3/m1;->b:I

    .line 4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-static {v5}, Ld1/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, La3/v;

    invoke-direct {v3, p1, v1, v2}, La3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v3

    .line 6
    :goto_1
    iget-object v1, p1, La3/v;->c:Ljava/lang/Object;

    check-cast v1, La3/m1;

    if-ne v1, v0, :cond_3

    .line 7
    new-instance v0, La3/n2;

    invoke-direct {v0, p1, p2, p3}, La3/n2;-><init>(La3/v;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :cond_3
    new-instance v0, La3/y0;

    invoke-direct {v0, p1, p2, p3}, La3/y0;-><init>(La3/v;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    .line 8
    :cond_4
    new-instance p2, La3/d;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "Set method %s is not a valid property"

    invoke-direct {p2, p1, p3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 9
    :cond_5
    new-instance p1, La3/d;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "Annotation %s must mark a set or get method"

    invoke-direct {p1, p2, p3}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final i(Lz2/b;)Lz2/d;
    .registers 6

    invoke-interface {p1}, Lz2/b;->value()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v0, Lf3/a;

    invoke-interface {v0, p1}, Lf3/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/d;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v1, Lf3/a;

    invoke-interface {v1, p1, v0}, Lf3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lz2/c;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Can not instantiate %s"

    invoke-direct {v0, p1, v1}, Lz2/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final j(Ljava/lang/reflect/Method;)La3/m1;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, La3/m1;->d:La3/m1;

    return-object p1

    :cond_0
    const-string v0, "is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, La3/m1;->e:La3/m1;

    return-object p1

    :cond_1
    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, La3/m1;->g:La3/m1;

    return-object p1

    :cond_2
    sget-object p1, La3/m1;->f:La3/m1;

    return-object p1
.end method

.method public final k(Ljava/lang/reflect/Method;La3/m1;)La3/v;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1
    iget v0, p2, La3/m1;->b:I

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ld1/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, La3/v;

    invoke-direct {v1, p1, p2, v0}, La3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance p2, La3/d;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Get method %s is not a valid property"

    invoke-direct {p2, p1, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final l(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/h;->j(Ljava/lang/reflect/Method;)La3/m1;

    move-result-object v0

    sget-object v1, La3/m1;->g:La3/m1;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    :cond_0
    return-object v2

    .line 2
    :cond_1
    sget-object v1, La3/m1;->d:La3/m1;

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    :cond_2
    return-object v2

    .line 4
    :cond_3
    sget-object v1, La3/m1;->e:La3/m1;

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/arch/lifecycle/h;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v1, Ld3/e;

    invoke-interface {v1}, Ld3/e;->m()I

    move-result v1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "line %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :sswitch_1
    iget-object v0, p0, Landroid/arch/lifecycle/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
