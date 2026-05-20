.class final Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BootstrapEntry"
.end annotation


# instance fields
.field public final code:[B

.field public final synthetic this$0:Lorg/mozilla/classfile/ClassFileWriter;


# direct methods
.method public varargs constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/classfile/ClassFileWriter$MHandle;[Ljava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ConstantPool;->addMethodHandle(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S

    move-result p2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    array-length p2, p3

    invoke-static {p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    :goto_0
    array-length p2, p3

    if-ge v2, p2, :cond_0

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object p2

    aget-object v0, p3, v2

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-static {p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    iget-object p1, p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    not-int v0, v0

    return v0
.end method
