.class public final synthetic Le2/z;
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

    iput p2, p0, Le2/z;->a:I

    iput-object p1, p0, Le2/z;->b:Le2/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget v0, p0, Le2/z;->a:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Le2/z;->b:Le2/a0;

    .line 1
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0xd04d5e

    new-array v2, v1, [C

    if-eqz p1, :cond_0

    fill-array-data v2, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v2, :array_1

    .line 2
    :goto_0
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xd04d2c

    new-array v2, v1, [C

    if-eqz p1, :cond_1

    .line 3
    fill-array-data v2, :array_2

    goto :goto_1

    :cond_1
    fill-array-data v2, :array_3

    .line 4
    :goto_1
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xd06d9e

    new-array v2, v1, [C

    if-eqz p1, :cond_2

    .line 5
    fill-array-data v2, :array_4

    goto :goto_2

    :cond_2
    fill-array-data v2, :array_5

    .line 6
    :goto_2
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xd06daa

    new-array v2, v1, [C

    if-eqz p1, :cond_3

    .line 7
    fill-array-data v2, :array_6

    goto :goto_3

    :cond_3
    fill-array-data v2, :array_7

    .line 8
    :goto_3
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xba9500

    if-eqz p1, :cond_4

    new-array p1, v1, [C

    .line 9
    fill-array-data p1, :array_8

    goto :goto_4

    :cond_4
    new-array p1, v1, [C

    fill-array-data p1, :array_9

    .line 10
    :goto_4
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_5
    return-void

    .line 11
    :pswitch_1
    iget-object v0, p0, Le2/z;->b:Le2/a0;

    .line 12
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0xe7d002

    if-eqz p1, :cond_6

    new-array p1, v1, [C

    fill-array-data p1, :array_a

    goto :goto_5

    :cond_6
    new-array p1, v1, [C

    fill-array-data p1, :array_b

    .line 13
    :goto_5
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_7
    return-void

    .line 14
    :goto_6
    iget-object v0, p0, Le2/z;->b:Le2/a0;

    .line 15
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0xe6dacc

    if-eqz p1, :cond_8

    new-array p1, v1, [C

    fill-array-data p1, :array_c

    goto :goto_7

    :cond_8
    new-array p1, v1, [C

    fill-array-data p1, :array_d

    .line 16
    :goto_7
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x3cs
        0xf6s
        0x8es
        0xe7s
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_3
    .array-data 2
        0x48s
        0xf6s
        0xfes
        0xe0s
    .end array-data

    :array_4
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_5
    .array-data 2
        0x46s
        0xf6s
        0xcs
        0xe3s
    .end array-data

    :array_6
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_7
    .array-data 2
        0x46s
        0xf6s
        0xcs
        0xe3s
    .end array-data

    :array_8
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_9
    .array-data 2
        0x98s
        0xf7s
        0xbcs
        0xe3s
    .end array-data

    :array_a
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_b
    .array-data 2
        0xd8s
        0xf4s
        0x92s
        0xe6s
    .end array-data

    :array_c
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_d
    .array-data 2
        0xe7s
        0xf4s
        0x68s
        0xe3s
    .end array-data
.end method
