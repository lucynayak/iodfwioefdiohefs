.class public final Le2/rd$Sampler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sampler"
.end annotation


# instance fields
.field public final synthetic b:Le2/rd;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mColors:[I


# direct methods
.method public constructor <init>(Le2/rd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/rd$Sampler;->b:Le2/rd;

    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Le2/rd$Sampler;->mColors:[I

    const/16 v0, 0x20

    const/16 v1, 0x20

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Le2/rd$Sampler;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static idToColor(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_0

    const v0, -0x959596

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const v0, -0x858586

    return v0

    :sswitch_2
    const v0, -0xa64dc5

    return v0

    :sswitch_3
    const v0, -0x84a8cf

    return v0

    :sswitch_4
    const v0, -0xa1a1a2

    return v0

    :sswitch_5
    const v0, -0x4a5d98

    return v0

    :sswitch_6
    const v0, -0xc070d1

    return v0

    :sswitch_7
    const v0, -0xd1d1d2

    return v0

    :sswitch_8
    const v0, -0xd5aa27

    return v0

    :sswitch_9
    const v0, -0x1fa5e8

    return v0

    :sswitch_a
    const v0, -0x15275f

    return v0

    :sswitch_b
    const v0, -0x666667

    return v0

    :sswitch_c
    const v0, -0x476295

    return v0

    :sswitch_d
    const v0, -0x5c82a2

    return v0

    :sswitch_e
    const v0, -0xc3c3c4

    return v0

    :sswitch_f
    const v0, -0x91a9cb

    return v0

    :sswitch_10
    const v0, -0xd583d6

    return v0

    :sswitch_11
    const v0, -0x2b39a9

    return v0

    :sswitch_12
    const v0, -0x361918

    return v0

    :sswitch_13
    const v0, -0xc2a255

    return v0

    :sswitch_14
    const v0, -0xcfa83a

    return v0

    :sswitch_15
    const v0, -0x1f347b

    return v0

    :sswitch_16
    const v0, -0x121213

    return v0

    :sswitch_17
    const v0, -0x9a5cce

    return v0

    :sswitch_18
    const v0, -0x1f1f20

    return v0

    :sswitch_19
    const v0, -0x1f2000

    return v0

    :sswitch_1a
    const v0, -0x2fcfd0

    return v0

    :sswitch_1b
    const v0, -0x1fa0

    return v0

    :sswitch_1c
    const v0, -0x2f2f30

    return v0

    :sswitch_1d
    const v0, -0x848485

    return v0

    :sswitch_1e
    const v0, -0x57afc4

    return v0

    :sswitch_1f
    const v0, -0x2ddcdd

    return v0

    :sswitch_20
    const v0, -0x4b6fa4

    return v0

    :sswitch_21
    const v0, -0xb699b7

    return v0

    :sswitch_22
    const v0, -0xe0e4d1

    return v0

    :sswitch_23
    const v0, -0x73e0

    return v0

    :sswitch_24
    const v0, -0xe1d1e2

    return v0

    :sswitch_25
    const v0, -0x6381bb

    return v0

    :sswitch_26
    const v0, -0x33ffff

    return v0

    :sswitch_27
    const v0, -0x5f1f18

    return v0

    :sswitch_28
    const v0, -0x701819

    return v0

    :sswitch_29
    const v0, -0x5c83a4

    return v0

    :sswitch_2a
    const v0, -0x73a1cd

    return v0

    :sswitch_2b
    const v0, -0x9b9b9c

    return v0

    :sswitch_2c
    const v0, -0x40cfd0

    return v0

    :sswitch_2d
    const v0, -0x5f4301

    return v0

    :sswitch_2e
    const v0, -0x1

    return v0

    :sswitch_2f
    const v0, -0xe5addc

    return v0

    :sswitch_30
    const v0, -0x5f594c

    return v0

    :sswitch_31
    const v0, -0x723f82

    return v0

    :sswitch_32
    const v0, -0x1f76e0

    return v0

    :sswitch_33
    const v0, -0x85dbdc

    return v0

    :sswitch_34
    const v0, -0xaabcd1

    return v0

    :sswitch_35
    const v0, -0x1980

    return v0

    :sswitch_36
    const v0, -0x1f5fbc

    return v0

    :sswitch_37
    const v0, -0x757576

    return v0

    :sswitch_38
    const v0, -0x74a5d5

    return v0

    :sswitch_39
    const v0, -0x47a6a7

    return v0

    :sswitch_3a
    const v0, -0x99999a

    return v0

    :sswitch_3b
    const v0, -0x574bc5

    return v0

    :sswitch_3c
    const v0, -0xd590d6

    return v0

    :sswitch_3d
    const v0, -0x9f55e1

    return v0

    :sswitch_3e
    const v0, -0xd2ece8

    return v0

    :sswitch_3f
    const v0, -0x84e4ca

    return v0

    :sswitch_40
    const v0, -0xefede8

    return v0

    :sswitch_41
    const v0, -0x1f2574

    return v0

    :sswitch_42
    const v0, -0xe9ece8

    return v0

    :sswitch_43
    const v0, -0x6493c0

    return v0

    :sswitch_44
    const v0, -0xc934ca

    return v0

    :sswitch_45
    const v0, -0xc2b9ba

    return v0

    :sswitch_46
    const v0, -0xbf1fa0

    return v0

    :sswitch_47
    const v0, -0x7591bb

    return v0

    :sswitch_48
    const v0, -0x8c4844

    return v0

    :sswitch_49
    const v0, -0xbdbdbe

    return v0

    :sswitch_4a
    const v0, -0x54f0f1

    return v0

    :sswitch_4b
    const v0, -0x1f2530

    return v0

    :sswitch_4c
    const v0, -0x191f34

    return v0

    :sswitch_4d
    const v0, -0x5fa7b6

    return v0

    :sswitch_4e
    const v0, -0x837fcd

    return v0

    :sswitch_4f
    const v0, -0x94afcf

    return v0

    :sswitch_50
    const v0, -0x65a6c3

    return v0

    :sswitch_51
    const v0, -0xcedde2

    return v0

    :sswitch_52
    const v0, -0x5721a1

    return v0

    :sswitch_53
    const v0, -0xb57a7b

    return v0

    :sswitch_54
    const v0, -0x4a2228

    return v0

    :sswitch_55
    const v0, -0x577cd0

    return v0

    :sswitch_56
    const v0, -0x6ca1bb

    return v0

    :sswitch_57
    const v0, -0xf1f1f2

    return v0

    :sswitch_58
    const v0, -0x573b20

    return v0

    :sswitch_59
    const v0, -0x329ac7

    return v0

    :sswitch_5a
    const v0, -0x2fc0

    return v0

    :sswitch_5b
    const v0, -0x2dafb0

    return v0

    :sswitch_5c
    const v0, -0xafcf80

    return v0

    :sswitch_5d
    const v0, -0x1d295e

    return v0

    :sswitch_5e
    const v0, -0x850000

    return v0

    :sswitch_5f
    const v0, -0xb6bfc0

    return v0

    :sswitch_60
    const v0, -0xffffe8

    return v0

    :sswitch_61
    const v0, -0xaac2da

    return v0

    :sswitch_62
    const v0, -0x273a77

    return v0

    :sswitch_63
    const v0, -0x557eb6

    return v0

    :sswitch_64
    const v0, -0x83a5cb

    return v0

    :sswitch_65
    const v0, -0x2f7fe0

    return v0

    :sswitch_66
    const v0, -0x365fc0

    return v0

    :sswitch_67
    const v0, -0xbababb

    return v0

    :sswitch_68
    const v0, -0xcacacb

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x17 -> :sswitch_67
        0x18 -> :sswitch_15
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5b
        0x1b -> :sswitch_3a
        0x1c -> :sswitch_3a
        0x1d -> :sswitch_5
        0x1e -> :sswitch_16
        0x1f -> :sswitch_17
        0x20 -> :sswitch_3
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x23 -> :sswitch_18
        0x24 -> :sswitch_5
        0x25 -> :sswitch_19
        0x26 -> :sswitch_1a
        0x27 -> :sswitch_3
        0x28 -> :sswitch_1a
        0x29 -> :sswitch_1b
        0x2a -> :sswitch_1c
        0x2b -> :sswitch_1d
        0x2c -> :sswitch_1d
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_1f
        0x2f -> :sswitch_20
        0x30 -> :sswitch_21
        0x31 -> :sswitch_22
        0x32 -> :sswitch_5a
        0x33 -> :sswitch_23
        0x34 -> :sswitch_24
        0x35 -> :sswitch_5
        0x36 -> :sswitch_25
        0x37 -> :sswitch_26
        0x38 -> :sswitch_27
        0x39 -> :sswitch_28
        0x3a -> :sswitch_29
        0x3b -> :sswitch_66
        0x3c -> :sswitch_2a
        0x3d -> :sswitch_2b
        0x3e -> :sswitch_2b
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
        0x41 -> :sswitch_5
        0x42 -> :sswitch_3a
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
        0x45 -> :sswitch_5
        0x46 -> :sswitch_1
        0x47 -> :sswitch_1c
        0x48 -> :sswitch_5
        0x49 -> :sswitch_2c
        0x4a -> :sswitch_2c
        0x4b -> :sswitch_5e
        0x4c -> :sswitch_2c
        0x4d -> :sswitch_4
        0x4e -> :sswitch_2e
        0x4f -> :sswitch_2d
        0x50 -> :sswitch_2e
        0x51 -> :sswitch_2f
        0x52 -> :sswitch_30
        0x53 -> :sswitch_31
        0x54 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_32
        0x57 -> :sswitch_33
        0x58 -> :sswitch_34
        0x59 -> :sswitch_35
        0x5a -> :sswitch_5c
        0x5b -> :sswitch_36
        0x5c -> :sswitch_5d
        0x5d -> :sswitch_5
        0x5e -> :sswitch_5
        0x5f -> :sswitch_12
        0x60 -> :sswitch_5
        0x61 -> :sswitch_1
        0x62 -> :sswitch_37
        0x63 -> :sswitch_38
        0x64 -> :sswitch_39
        0x65 -> :sswitch_3a
        0x66 -> :sswitch_12
        0x67 -> :sswitch_3b
        0x68 -> :sswitch_17
        0x69 -> :sswitch_17
        0x6a -> :sswitch_3c
        0x6b -> :sswitch_5
        0x6c -> :sswitch_1e
        0x6d -> :sswitch_37
        0x6e -> :sswitch_30
        0x6f -> :sswitch_3d
        0x70 -> :sswitch_3e
        0x71 -> :sswitch_3e
        0x72 -> :sswitch_3e
        0x73 -> :sswitch_3f
        0x74 -> :sswitch_40
        0x75 -> :sswitch_5f
        0x76 -> :sswitch_4
        0x77 -> :sswitch_60
        0x78 -> :sswitch_41
        0x79 -> :sswitch_41
        0x7a -> :sswitch_42
        0x7b -> :sswitch_43
        0x7c -> :sswitch_35
        0x7d -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_64
        0x80 -> :sswitch_15
        0x81 -> :sswitch_44
        0x82 -> :sswitch_45
        0x83 -> :sswitch_5
        0x84 -> :sswitch_3a
        0x85 -> :sswitch_46
        0x86 -> :sswitch_61
        0x87 -> :sswitch_62
        0x88 -> :sswitch_63
        0x89 -> :sswitch_47
        0x8a -> :sswitch_48
        0x8b -> :sswitch_4
        0x8c -> :sswitch_3
        0x8d -> :sswitch_65
        0x8e -> :sswitch_3
        0x8f -> :sswitch_5
        0x90 -> :sswitch_49
        0x91 -> :sswitch_49
        0x92 -> :sswitch_25
        0x93 -> :sswitch_1b
        0x94 -> :sswitch_1c
        0x95 -> :sswitch_5
        0x96 -> :sswitch_5
        0x97 -> :sswitch_5
        0x98 -> :sswitch_4a
        0x99 -> :sswitch_4b
        0x9a -> :sswitch_68
        0x9b -> :sswitch_4c
        0x9c -> :sswitch_4c
        0x9d -> :sswitch_3a
        0x9e -> :sswitch_67
        0x9f -> :sswitch_4d
        0xa0 -> :sswitch_12
        0xa1 -> :sswitch_4e
        0xa2 -> :sswitch_4f
        0xa3 -> :sswitch_50
        0xa4 -> :sswitch_51
        0xa5 -> :sswitch_52
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_1c
        0xa8 -> :sswitch_53
        0xa9 -> :sswitch_54
        0xaa -> :sswitch_55
        0xab -> :sswitch_18
        0xac -> :sswitch_56
        0xad -> :sswitch_57
        0xae -> :sswitch_58
        0xaf -> :sswitch_17
        0xb0 -> :sswitch_5
        0xb1 -> :sswitch_5
        0xb2 -> :sswitch_5
        0xb3 -> :sswitch_59
        0xb4 -> :sswitch_59
        0xb5 -> :sswitch_59
        0xb6 -> :sswitch_59
        0xb7 -> :sswitch_61
        0xb8 -> :sswitch_62
        0xb9 -> :sswitch_63
        0xba -> :sswitch_65
        0xbb -> :sswitch_64
        0xbc -> :sswitch_61
        0xbd -> :sswitch_62
        0xbe -> :sswitch_63
        0xbf -> :sswitch_65
        0xc0 -> :sswitch_64
        0xc1 -> :sswitch_61
        0xc2 -> :sswitch_62
        0xc3 -> :sswitch_63
        0xc4 -> :sswitch_64
        0xc5 -> :sswitch_65
        0xc6 -> :sswitch_2a
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_5c
        0xc9 -> :sswitch_5c
        0xca -> :sswitch_5c
        0xcb -> :sswitch_5c
        0xcc -> :sswitch_5c
        0xcd -> :sswitch_5c
        0xce -> :sswitch_41
        0xcf -> :sswitch_2d
        0xd0 -> :sswitch_2e
        0xd1 -> :sswitch_7
        0xd2 -> :sswitch_5c
        0xd3 -> :sswitch_2
        0xd4 -> :sswitch_32
        0xd5 -> :sswitch_9
        0xd6 -> :sswitch_3f
        0xd7 -> :sswitch_3e
        0xd8 -> :sswitch_2e
        0xd9 -> :sswitch_1
        0xda -> :sswitch_5c
        0xdb -> :sswitch_5c
        0xdc -> :sswitch_2e
        0xdd -> :sswitch_32
        0xde -> :sswitch_5c
        0xdf -> :sswitch_2d
        0xe0 -> :sswitch_19
        0xe1 -> :sswitch_17
        0xe2 -> :sswitch_1a
        0xe3 -> :sswitch_1
        0xe4 -> :sswitch_30
        0xe5 -> :sswitch_48
        0xe6 -> :sswitch_5c
        0xe7 -> :sswitch_14
        0xe8 -> :sswitch_3
        0xe9 -> :sswitch_2
        0xea -> :sswitch_1a
        0xeb -> :sswitch_57
        0xec -> :sswitch_30
        0xed -> :sswitch_a
        0xee -> :sswitch_1
        0xef -> :sswitch_1
        0xf0 -> :sswitch_5c
        0xf1 -> :sswitch_12
        0xf2 -> :sswitch_12
        0xf3 -> :sswitch_3
        0xf4 -> :sswitch_1a
        0xf5 -> :sswitch_1
        0xf6 -> :sswitch_1
        0xf7 -> :sswitch_1
        0xf8 -> :sswitch_1
        0xf9 -> :sswitch_1
        0xfa -> :sswitch_1
        0xfb -> :sswitch_68
        0xfc -> :sswitch_1
        0xfd -> :sswitch_1
        0xfe -> :sswitch_1
        0xff -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final run()V
    .registers 10

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le2/rd$Sampler;->b:Le2/rd;

    if-eqz v0, :cond_4

    iget-object v0, v0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_4

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Le2/rd$Sampler;->sample()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    iget-object v2, p0, Le2/rd$Sampler;->b:Le2/rd;

    if-eqz v2, :cond_4

    iget-object v2, v2, Le2/rd;->r:Li2/d;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Li2/d;->getCurrentValue()D

    move-result-wide v2

    double-to-int v0, v2

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    const v1, 0x1388

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    int-to-long v0, v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x1f4

    :goto_2
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :cond_4
    return-void
.end method

.method public sample()V
    .registers 31

    move-object/from16 v15, p0

    iget-object v0, v15, Le2/rd$Sampler;->b:Le2/rd;

    if-eqz v0, :cond_b

    iget-object v0, v0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_b

    move-object/from16 v20, v0

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v0

    move-wide/from16 v18, v0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v2

    move/from16 v25, v2

    move-wide/from16 v0, v18

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v3

    move-wide/from16 v0, v18

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v4

    move/from16 v27, v4

    float-to-int v7, v2

    float-to-int v8, v3

    float-to-int v9, v4

    iget-object v14, v15, Le2/rd$Sampler;->mColors:[I

    if-nez v14, :cond_0

    const/16 v0, 0x400

    new-array v14, v0, [I

    iput-object v14, v15, Le2/rd$Sampler;->mColors:[I

    :cond_0
    const/16 v10, -0x10

    :goto_0
    const/16 v0, 0x10

    if-ge v10, v0, :cond_5

    add-int v11, v9, v10

    const/16 v12, -0x10

    :goto_1
    const/16 v0, 0x10

    if-ge v12, v0, :cond_4

    add-int v13, v7, v12

    const/4 v5, 0x0

    add-int/lit8 v6, v8, 0x20

    const/16 v0, 0xc8

    if-le v6, v0, :cond_1

    move v6, v0

    :cond_1
    :goto_2
    const/4 v0, 0x0

    if-lt v6, v0, :cond_3

    invoke-static {v13, v6, v11}, Ldev/virus/variable/launcher/api/NativeBlock;->getID(III)I

    move-result v0

    if-eqz v0, :cond_2

    move v5, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-static {v5}, Le2/rd$Sampler;->idToColor(I)I

    move-result v0

    add-int/lit8 v1, v10, 0x10

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, v12, 0x10

    add-int/2addr v1, v2

    aput v0, v14, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    iget-object v9, v15, Le2/rd$Sampler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_6

    const/16 v0, 0x20

    const/16 v1, 0x20

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v15, Le2/rd$Sampler;->mBitmap:Landroid/graphics/Bitmap;

    :cond_6
    move-object/from16 v0, v9

    move-object/from16 v1, v14

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/16 v7, 0x20

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v21, v9

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isInGame()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    new-array v3, v0, [F

    new-array v4, v0, [F

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v0, 0x0

    new-array v6, v0, [J

    :cond_8
    array-length v0, v6

    new-array v3, v0, [F

    new-array v4, v0, [F

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_4
    array-length v0, v6

    if-ge v2, v0, :cond_a

    aget-wide v0, v6, v2

    move-wide/from16 v28, v18

    cmp-long v22, v0, v28

    if-eqz v22, :cond_9

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v22

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v23

    sub-float v22, v22, v25

    sub-float v23, v23, v27

    aput v22, v3, v5

    aput v23, v4, v5

    add-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    const/16 v22, 0x10

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-virtual/range {v20 .. v25}, Le2/RadarView;->setData(Landroid/graphics/Bitmap;I[F[FI)V

    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_b
    return-void
.end method
