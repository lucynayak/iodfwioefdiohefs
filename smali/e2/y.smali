.class public final synthetic Le2/y;
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

    iput p2, p0, Le2/y;->a:I

    iput-object p1, p0, Le2/y;->b:Le2/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget v0, p0, Le2/y;->a:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Le2/y;->b:Le2/a0;

    .line 1
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xe79406

    new-array v2, v1, [C

    if-eqz p1, :cond_0

    fill-array-data v2, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v2, :array_1

    .line 2
    :goto_0
    invoke-static {v0, v2}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const v0, 0xe793a8

    if-eqz p1, :cond_1

    new-array p1, v1, [C

    .line 3
    fill-array-data p1, :array_2

    goto :goto_1

    :cond_1
    new-array p1, v1, [C

    fill-array-data p1, :array_3

    .line 4
    :goto_1
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_2
    return-void

    .line 5
    :goto_2
    iget-object v0, p0, Le2/y;->b:Le2/a0;

    .line 6
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0xe5f1e4

    if-eqz p1, :cond_3

    new-array p1, v1, [C

    fill-array-data p1, :array_4

    goto :goto_3

    :cond_3
    new-array p1, v1, [C

    fill-array-data p1, :array_5

    .line 7
    :goto_3
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        0xdcs
        0xf4s
        0xfes
        0xe2s
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
        0xdcs
        0xf4s
        0x20s
        0xe3s
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
        0xf5s
        0xf4s
        0x4es
        0xe5s
    .end array-data
.end method
