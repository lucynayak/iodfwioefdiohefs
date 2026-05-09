.class public Lcom/microsoft/bond/internal/IntArrayStack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20


# instance fields
.field private size:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/microsoft/bond/internal/IntArrayStack;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    return-void
.end method

.method private ensureExtraCapacity(I)V
    .locals 3

    iget v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    return-void
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    return v0
.end method

.method public pop()I
    .locals 2

    iget v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    iget-object v1, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    aget v0, v1, v0

    return v0
.end method

.method public push(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/bond/internal/IntArrayStack;->ensureExtraCapacity(I)V

    iget-object v1, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    iget v2, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    aput p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    return-void
.end method

.method public set(II)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    aput p2, v0, p1

    return-void
.end method
