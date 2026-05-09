.class Lorg/mozilla/javascript/ScriptableObject$Slot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slot"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x548617c41c7a8763L


# instance fields
.field private attributes:S

.field public indexOrHash:I

.field public name:Ljava/lang/Object;

.field public transient next:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field public transient orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    iput p2, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    int-to-short p1, p3

    iput-short p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttributes()I
    .registers 2

    iget-short v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    return v0
.end method

.method public getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 4

    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iget-short v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    invoke-static {p2, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public declared-synchronized setAttributes(I)V
    .registers 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    int-to-short p1, p1

    iput-short p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 6

    iget-short v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    const-string p2, "msg.modify.readonly"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    if-ne p2, p3, :cond_2

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
