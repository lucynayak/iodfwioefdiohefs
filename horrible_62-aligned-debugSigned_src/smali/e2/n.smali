.class public final Le2/n;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final o:Li2/b;


# direct methods
.method public constructor <init>()V
    .registers 7

    const-string v0, "EditionFaker"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Windows 10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iOS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Android"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FireOS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GearVR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HoloLens"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "macOS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Nintendo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PlayStation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tvOS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Windows x32"

    aput-object v2, v0, v1

    new-instance v1, Li2/b;

    const-string v2, "Edition"

    invoke-direct {v1, v2, v0}, Li2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ld2/h;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ld2/h;-><init>(Lc2/b;I)V

    iput-object v2, v1, Li2/b;->g:Li2/b$a;

    iput-object v1, p0, Le2/n;->o:Li2/b;

    invoke-virtual {p0, v1}, Lc2/b;->addSetting(Li2/c;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 1

    invoke-virtual {p0}, Le2/n;->T()V

    return-void
.end method

.method public final G()V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Le2/n;->T()V

    iget-object v0, p0, Le2/n;->o:Li2/b;

    invoke-virtual {v0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_9

    const-string v3, "Windows 10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "iOS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "FireOS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "GearVR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "HoloLens"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x6

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "macOS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "Nintendo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0xc

    const/4 v2, 0x3

    goto :goto_0

    :cond_6
    const-string v3, "PlayStation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v1, 0xa

    const/4 v2, 0x3

    goto :goto_0

    :cond_7
    const-string v3, "tvOS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v1, 0xb

    const/4 v2, 0x3

    goto :goto_0

    :cond_8
    const-string v3, "Windows x32"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v1, 0x8

    const/4 v2, 0x1

    :cond_9
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v3, 0x0

    const/16 v4, 0xd0

    aput-char v4, v0, v3

    const v3, 0x13418b3

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v3, 0x0

    const/16 v4, 0x4f

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0xf0

    aput-char v4, v0, v3

    const/4 v3, 0x2

    aput-char v1, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-char v4, v0, v3

    const v3, 0x13418c4

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v3, 0x0

    const/16 v4, 0xd0

    aput-char v4, v0, v3

    const v3, 0x13418f1

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x21

    aput-char v4, v0, v3

    const v3, 0x1341902

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x21

    aput-char v4, v0, v3

    const v3, 0x1341926

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x21

    aput-char v4, v0, v3

    const v3, 0x134194a

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v3, 0x0

    const/16 v4, 0x4f

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0xf0

    aput-char v4, v0, v3

    const/4 v3, 0x2

    aput-char v2, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x70

    aput-char v4, v0, v3

    const/4 v3, 0x5

    const/16 v4, 0x47

    aput-char v4, v0, v3

    const v3, 0xb6dca6

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x20

    aput-char v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x70

    aput-char v4, v0, v3

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-char v4, v0, v3

    const v3, 0xb4cfd4

    invoke-static {v3, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public final T()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xd1

    aput-char v2, v0, v1

    const v1, 0x13418b3

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    const v1, 0x13418c4

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xd1

    aput-char v2, v0, v1

    const v1, 0x13418f1

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const v1, 0x1341902

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    const v1, 0x1341926

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    const v1, 0x134194a

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const v1, 0xb6dca6

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const v1, 0xb4cfd4

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void

    nop

    :array_0
    .array-data 2
        0x80s
        0x69s
        0x43s
        0xf0s
        0x0s
        0xbds
    .end array-data

    :array_1
    .array-data 2
        0x64s
        0xf0s
        0xd0s
        0xb9s
    .end array-data

    :array_2
    .array-data 2
        0x4fs
        0xf0s
        0xffs
        0x31s
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x21s
    .end array-data

    :array_4
    .array-data 2
        0x52s
        0x99s
    .end array-data

    :array_5
    .array-data 2
        0x53s
        0x99s
    .end array-data
.end method
