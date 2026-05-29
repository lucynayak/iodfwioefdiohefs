.class public final synthetic Le2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le2/a0;


# direct methods
.method public synthetic constructor <init>(Le2/a0;I)V
    .registers 3

    iput p2, p0, Le2/x;->a:I

    iput-object p1, p0, Le2/x;->b:Le2/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    iget v0, p0, Le2/x;->a:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Le2/x;->b:Le2/a0;

    .line 1
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x155a9d4

    if-eqz p1, :cond_0

    new-array p1, v1, [C

    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [C

    fill-array-data p1, :array_1

    .line 2
    :goto_0
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_1
    return-void

    .line 3
    :goto_1
    iget-object v0, p0, Le2/x;->b:Le2/a0;

    .line 4
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xbe861e

    if-eqz p1, :cond_2

    new-array p1, v1, [C

    fill-array-data p1, :array_2

    goto :goto_2

    :cond_2
    new-array p1, v1, [C

    fill-array-data p1, :array_3

    .line 5
    :goto_2
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 2
        0x10s
        0xbds
    .end array-data

    :array_1
    .array-data 2
        0xd0s
        0xf8s
    .end array-data

    :array_2
    .array-data 2
        0x10s
        0xbds
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x69s
    .end array-data
.end method
