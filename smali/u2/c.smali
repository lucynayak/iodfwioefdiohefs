.class public final Lu2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/b;


# static fields
.field public static m:I

.field public static final n:[J

.field public static final o:[I

.field public static final p:[Ljava/lang/String;

.field public static final q:[J

.field public static final r:[J

.field public static final s:[J


# instance fields
.field public b:C

.field public c:I

.field public d:Ljava/lang/StringBuffer;

.field public e:Lu2/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:[I

.field public final l:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lu2/c;->n:[J

    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\n"

    const-string v4, "/"

    const-string v5, ";"

    const-string v6, "="

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu2/c;->p:[Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lu2/c;->o:[I

    const/4 v0, 0x1

    new-array v1, v0, [J

    const-wide/32 v2, 0x38003f

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    sput-object v1, Lu2/c;->s:[J

    new-array v1, v0, [J

    const-wide/16 v2, 0x140

    aput-wide v2, v1, v4

    sput-object v1, Lu2/c;->q:[J

    new-array v0, v0, [J

    const-wide/16 v1, 0x40

    aput-wide v1, v0, v4

    sput-object v0, Lu2/c;->r:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lu2/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lu2/c;->k:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lu2/c;->l:[I

    const/4 v0, 0x0

    iput v0, p0, Lu2/c;->c:I

    iput-object p1, p0, Lu2/c;->e:Lu2/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lu2/c;->j:I

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lu2/c;->k:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Lu2/f;
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, v0, Lu2/c;->e:Lu2/e;

    const/4 v6, -0x1

    .line 1
    iput v6, v5, Lu2/e;->n:I

    invoke-virtual {v5}, Lu2/e;->e()C

    move-result v7

    iget v8, v5, Lu2/e;->e:I

    iput v8, v5, Lu2/e;->n:I

    .line 2
    iput-char v7, v0, Lu2/c;->b:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iput v2, v0, Lu2/c;->f:I

    :goto_1
    iget v5, v0, Lu2/c;->c:I

    const/4 v7, 0x2

    const-wide/16 v8, 0x1

    const/16 v10, 0x22

    const/4 v14, 0x3

    const-wide/16 v15, 0x0

    const v1, 0x7fffffff

    const/4 v12, 0x1

    if-eqz v5, :cond_44

    const/16 v13, 0x40

    if-eq v5, v12, :cond_2e

    if-eq v5, v7, :cond_18

    if-eq v5, v14, :cond_0

    goto/16 :goto_1e

    :cond_0
    iput v1, v0, Lu2/c;->g:I

    iput v2, v0, Lu2/c;->h:I

    .line 3
    iget-char v4, v0, Lu2/c;->b:C

    if-eq v4, v10, :cond_17

    .line 4
    iput v14, v0, Lu2/c;->i:I

    iget-object v4, v0, Lu2/c;->l:[I

    aput v2, v4, v2

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_2
    iget v2, v0, Lu2/c;->j:I

    add-int/2addr v2, v12

    iput v2, v0, Lu2/c;->j:I

    if-ne v2, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lu2/c;->a()V

    :cond_1
    iget-char v2, v0, Lu2/c;->b:C

    const/16 v1, 0x12

    const/16 v11, 0x11

    if-ge v2, v13, :cond_7

    shl-long v17, v8, v2

    :cond_2
    iget-object v2, v0, Lu2/c;->l:[I

    add-int/2addr v4, v6

    aget v2, v2, v4

    if-eqz v2, :cond_4

    if-eq v2, v12, :cond_3

    if-eq v2, v7, :cond_4

    goto :goto_3

    :cond_3
    if-le v5, v11, :cond_6

    const/16 v5, 0x11

    goto :goto_3

    :cond_4
    const-wide v19, -0x400000001L

    and-long v19, v17, v19

    cmp-long v2, v19, v15

    if-eqz v2, :cond_6

    if-le v5, v1, :cond_5

    const/16 v5, 0x12

    :cond_5
    invoke-virtual {v0, v7}, Lu2/c;->c(I)V

    :cond_6
    :goto_3
    if-ne v4, v10, :cond_2

    goto/16 :goto_9

    :cond_7
    const/16 v13, 0x80

    if-ge v2, v13, :cond_f

    and-int/lit8 v2, v2, 0x3f

    shl-long v17, v8, v2

    :goto_4
    iget-object v2, v0, Lu2/c;->l:[I

    add-int/2addr v4, v6

    aget v13, v2, v4

    const-wide/32 v20, -0x10000001

    if-eqz v13, :cond_a

    if-eq v13, v12, :cond_9

    if-eq v13, v7, :cond_8

    goto :goto_6

    :cond_8
    and-long v20, v17, v20

    cmp-long v2, v20, v15

    if-eqz v2, :cond_d

    if-le v5, v1, :cond_b

    goto :goto_5

    :cond_9
    if-le v5, v11, :cond_d

    const/16 v5, 0x11

    goto :goto_6

    :cond_a
    and-long v20, v17, v20

    cmp-long v13, v20, v15

    if-eqz v13, :cond_c

    if-le v5, v1, :cond_b

    :goto_5
    const/16 v5, 0x12

    :cond_b
    invoke-virtual {v0, v7}, Lu2/c;->c(I)V

    goto :goto_6

    :cond_c
    iget-char v13, v0, Lu2/c;->b:C

    const/16 v1, 0x5c

    if-ne v13, v1, :cond_d

    iget v1, v0, Lu2/c;->i:I

    add-int/lit8 v13, v1, 0x1

    iput v13, v0, Lu2/c;->i:I

    aput v12, v2, v1

    :cond_d
    :goto_6
    if-ne v4, v10, :cond_e

    goto :goto_9

    :cond_e
    const/16 v1, 0x12

    goto :goto_4

    :cond_f
    and-int/lit16 v1, v2, 0xff

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    shl-long v17, v8, v2

    :cond_10
    iget-object v2, v0, Lu2/c;->l:[I

    add-int/2addr v4, v6

    aget v2, v2, v4

    if-eqz v2, :cond_12

    if-eq v2, v12, :cond_11

    if-eq v2, v7, :cond_12

    goto :goto_7

    :cond_11
    sget-object v2, Lu2/c;->n:[J

    aget-wide v20, v2, v1

    and-long v20, v17, v20

    cmp-long v2, v20, v15

    if-eqz v2, :cond_14

    if-le v5, v11, :cond_14

    const/16 v2, 0x12

    const/16 v5, 0x11

    goto :goto_8

    :cond_12
    sget-object v2, Lu2/c;->n:[J

    aget-wide v20, v2, v1

    and-long v20, v17, v20

    cmp-long v2, v20, v15

    if-eqz v2, :cond_14

    const/16 v2, 0x12

    if-le v5, v2, :cond_13

    const/16 v5, 0x12

    :cond_13
    invoke-virtual {v0, v7}, Lu2/c;->c(I)V

    goto :goto_8

    :cond_14
    :goto_7
    const/16 v2, 0x12

    :goto_8
    if-ne v4, v10, :cond_10

    :goto_9
    const v1, 0x7fffffff

    if-eq v5, v1, :cond_15

    iput v5, v0, Lu2/c;->g:I

    iput v14, v0, Lu2/c;->h:I

    const v5, 0x7fffffff

    :cond_15
    add-int/lit8 v14, v14, 0x1

    iget v4, v0, Lu2/c;->i:I

    iput v10, v0, Lu2/c;->i:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v4, v10, :cond_16

    goto/16 :goto_1a

    :cond_16
    :try_start_1
    iget-object v1, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v1}, Lu2/e;->e()C

    move-result v1

    iput-char v1, v0, Lu2/c;->b:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const v1, 0x7fffffff

    const/16 v13, 0x40

    goto/16 :goto_2

    :cond_17
    const/16 v1, 0x13

    .line 5
    invoke-virtual {v0, v1}, Lu2/c;->g(I)I

    goto/16 :goto_19

    .line 6
    :cond_18
    iput v1, v0, Lu2/c;->g:I

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->h:I

    .line 7
    iget-char v2, v0, Lu2/c;->b:C

    const/16 v4, 0x28

    if-eq v2, v4, :cond_2d

    const/16 v4, 0x29

    if-eq v2, v4, :cond_2c

    .line 8
    iput v14, v0, Lu2/c;->i:I

    iget-object v2, v0, Lu2/c;->l:[I

    aput v1, v2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    :goto_a
    iget v10, v0, Lu2/c;->j:I

    add-int/2addr v10, v12

    iput v10, v0, Lu2/c;->j:I

    const v11, 0x7fffffff

    if-ne v10, v11, :cond_19

    invoke-virtual/range {p0 .. p0}, Lu2/c;->a()V

    :cond_19
    iget-char v10, v0, Lu2/c;->b:C

    const/16 v11, 0xc

    const/16 v13, 0xf

    const/16 v14, 0x40

    if-ge v10, v14, :cond_1e

    :cond_1a
    iget-object v10, v0, Lu2/c;->l:[I

    add-int/2addr v5, v6

    aget v10, v10, v5

    if-eqz v10, :cond_1c

    if-eq v10, v12, :cond_1b

    goto :goto_b

    :cond_1b
    if-le v4, v11, :cond_1d

    const/16 v4, 0xc

    goto :goto_b

    :cond_1c
    if-le v4, v13, :cond_1d

    const/16 v4, 0xf

    :cond_1d
    :goto_b
    if-ne v5, v1, :cond_1a

    goto/16 :goto_f

    :cond_1e
    const/16 v14, 0x80

    if-ge v10, v14, :cond_25

    :goto_c
    iget-object v10, v0, Lu2/c;->l:[I

    add-int/2addr v5, v6

    aget v14, v10, v5

    if-eqz v14, :cond_21

    if-eq v14, v12, :cond_20

    if-eq v14, v7, :cond_1f

    goto :goto_d

    :cond_1f
    if-le v4, v13, :cond_23

    const/16 v4, 0xf

    goto :goto_d

    :cond_20
    if-le v4, v11, :cond_23

    const/16 v4, 0xc

    goto :goto_d

    :cond_21
    if-le v4, v13, :cond_22

    const/16 v4, 0xf

    :cond_22
    iget-char v14, v0, Lu2/c;->b:C

    const/16 v7, 0x5c

    if-ne v14, v7, :cond_23

    iget v7, v0, Lu2/c;->i:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v0, Lu2/c;->i:I

    aput v12, v10, v7

    :cond_23
    :goto_d
    if-ne v5, v1, :cond_24

    goto :goto_f

    :cond_24
    const/4 v7, 0x2

    goto :goto_c

    :cond_25
    and-int/lit16 v7, v10, 0xff

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    shl-long v20, v8, v10

    :cond_26
    iget-object v10, v0, Lu2/c;->l:[I

    add-int/2addr v5, v6

    aget v10, v10, v5

    if-eqz v10, :cond_28

    if-eq v10, v12, :cond_27

    goto :goto_e

    :cond_27
    sget-object v10, Lu2/c;->n:[J

    aget-wide v22, v10, v7

    and-long v22, v22, v20

    cmp-long v10, v22, v15

    if-eqz v10, :cond_29

    if-le v4, v11, :cond_29

    const/16 v4, 0xc

    goto :goto_e

    :cond_28
    sget-object v10, Lu2/c;->n:[J

    aget-wide v22, v10, v7

    and-long v22, v22, v20

    cmp-long v10, v22, v15

    if-eqz v10, :cond_29

    if-le v4, v13, :cond_29

    const/16 v4, 0xf

    :cond_29
    :goto_e
    if-ne v5, v1, :cond_26

    :goto_f
    const v5, 0x7fffffff

    if-eq v4, v5, :cond_2a

    iput v4, v0, Lu2/c;->g:I

    iput v2, v0, Lu2/c;->h:I

    const v4, 0x7fffffff

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    iget v5, v0, Lu2/c;->i:I

    iput v1, v0, Lu2/c;->i:I

    rsub-int/lit8 v1, v1, 0x3

    if-ne v5, v1, :cond_2b

    goto/16 :goto_17

    :cond_2b
    :try_start_2
    iget-object v7, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v7}, Lu2/e;->e()C

    move-result v7

    iput-char v7, v0, Lu2/c;->b:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x2

    goto/16 :goto_a

    :cond_2c
    const/16 v1, 0xe

    goto :goto_10

    :cond_2d
    const/16 v1, 0xd

    .line 9
    :goto_10
    invoke-virtual {v0, v1}, Lu2/c;->g(I)I

    goto/16 :goto_19

    .line 10
    :cond_2e
    iput v1, v0, Lu2/c;->g:I

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->h:I

    .line 11
    iget-char v2, v0, Lu2/c;->b:C

    const/16 v4, 0x28

    if-eq v2, v4, :cond_43

    const/16 v4, 0x29

    if-eq v2, v4, :cond_42

    .line 12
    iput v14, v0, Lu2/c;->i:I

    iget-object v2, v0, Lu2/c;->l:[I

    aput v1, v2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    :goto_11
    iget v7, v0, Lu2/c;->j:I

    add-int/2addr v7, v12

    iput v7, v0, Lu2/c;->j:I

    const v10, 0x7fffffff

    if-ne v7, v10, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lu2/c;->a()V

    :cond_2f
    iget-char v7, v0, Lu2/c;->b:C

    const/16 v10, 0x9

    const/16 v11, 0xb

    const/16 v13, 0x40

    if-ge v7, v13, :cond_34

    :cond_30
    iget-object v7, v0, Lu2/c;->l:[I

    add-int/2addr v5, v6

    aget v7, v7, v5

    if-eqz v7, :cond_32

    if-eq v7, v12, :cond_31

    goto :goto_12

    :cond_31
    if-le v4, v10, :cond_33

    const/16 v4, 0x9

    goto :goto_12

    :cond_32
    if-le v4, v11, :cond_33

    const/16 v4, 0xb

    :cond_33
    :goto_12
    if-ne v5, v1, :cond_30

    goto/16 :goto_16

    :cond_34
    const/16 v14, 0x80

    if-ge v7, v14, :cond_3b

    :goto_13
    iget-object v7, v0, Lu2/c;->l:[I

    add-int/2addr v5, v6

    aget v13, v7, v5

    if-eqz v13, :cond_37

    if-eq v13, v12, :cond_36

    const/4 v7, 0x2

    if-eq v13, v7, :cond_35

    goto :goto_14

    :cond_35
    if-le v4, v11, :cond_39

    const/16 v4, 0xb

    goto :goto_14

    :cond_36
    if-le v4, v10, :cond_39

    const/16 v4, 0x9

    goto :goto_14

    :cond_37
    if-le v4, v11, :cond_38

    const/16 v4, 0xb

    :cond_38
    iget-char v13, v0, Lu2/c;->b:C

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_39

    iget v13, v0, Lu2/c;->i:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lu2/c;->i:I

    aput v12, v7, v13

    :cond_39
    :goto_14
    if-ne v5, v1, :cond_3a

    goto :goto_16

    :cond_3a
    const/16 v13, 0x40

    const/16 v14, 0x80

    goto :goto_13

    :cond_3b
    and-int/lit16 v13, v7, 0xff

    shr-int/lit8 v13, v13, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long v20, v8, v7

    :cond_3c
    iget-object v7, v0, Lu2/c;->l:[I

    add-int/2addr v5, v6

    aget v7, v7, v5

    if-eqz v7, :cond_3e

    if-eq v7, v12, :cond_3d

    goto :goto_15

    :cond_3d
    sget-object v7, Lu2/c;->n:[J

    aget-wide v22, v7, v13

    and-long v22, v22, v20

    cmp-long v7, v22, v15

    if-eqz v7, :cond_3f

    if-le v4, v10, :cond_3f

    const/16 v4, 0x9

    goto :goto_15

    :cond_3e
    sget-object v7, Lu2/c;->n:[J

    aget-wide v22, v7, v13

    and-long v22, v22, v20

    cmp-long v7, v22, v15

    if-eqz v7, :cond_3f

    if-le v4, v11, :cond_3f

    const/16 v4, 0xb

    :cond_3f
    :goto_15
    if-ne v5, v1, :cond_3c

    :goto_16
    const v5, 0x7fffffff

    if-eq v4, v5, :cond_40

    iput v4, v0, Lu2/c;->g:I

    iput v2, v0, Lu2/c;->h:I

    const v4, 0x7fffffff

    :cond_40
    add-int/lit8 v2, v2, 0x1

    iget v5, v0, Lu2/c;->i:I

    iput v1, v0, Lu2/c;->i:I

    rsub-int/lit8 v1, v1, 0x3

    if-ne v5, v1, :cond_41

    goto :goto_17

    :cond_41
    :try_start_3
    iget-object v7, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v7}, Lu2/e;->e()C

    move-result v7

    iput-char v7, v0, Lu2/c;->b:C
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_11

    :catch_0
    :goto_17
    move v14, v2

    goto :goto_1a

    :cond_42
    const/16 v1, 0x8

    goto :goto_18

    :cond_43
    const/16 v1, 0xa

    .line 13
    :goto_18
    invoke-virtual {v0, v1}, Lu2/c;->g(I)I

    :goto_19
    const/4 v14, 0x1

    :catch_1
    :goto_1a
    move v4, v14

    goto :goto_1e

    .line 14
    :cond_44
    iput v1, v0, Lu2/c;->g:I

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->h:I

    .line 15
    iget-char v1, v0, Lu2/c;->b:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4b

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4a

    if-eq v1, v10, :cond_49

    const/16 v2, 0x28

    if-eq v1, v2, :cond_48

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_47

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_46

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_45

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Lu2/c;->e(II)I

    move-result v2

    goto :goto_1d

    :cond_45
    const/4 v1, 0x5

    goto :goto_1b

    :cond_46
    const/4 v1, 0x4

    goto :goto_1b

    :cond_47
    invoke-virtual {v0, v14}, Lu2/c;->g(I)I

    goto :goto_1c

    :cond_48
    const/4 v1, 0x7

    goto :goto_1b

    :cond_49
    const/16 v1, 0x10

    :goto_1b
    invoke-virtual {v0, v1}, Lu2/c;->g(I)I

    :goto_1c
    const/4 v2, 0x1

    goto :goto_1d

    :cond_4a
    invoke-virtual {v0, v12}, Lu2/c;->f(I)I

    move-result v2

    goto :goto_1d

    :cond_4b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lu2/c;->f(I)I

    move-result v2

    :goto_1d
    move v4, v2

    .line 16
    :goto_1e
    iget v1, v0, Lu2/c;->g:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_5e

    iget v1, v0, Lu2/c;->h:I

    add-int/lit8 v2, v1, 0x1

    if-ge v2, v4, :cond_4c

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    sub-int v1, v4, v1

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Lu2/e;->d(I)V

    :cond_4c
    sget-object v1, Lu2/c;->s:[J

    iget v2, v0, Lu2/c;->g:I

    shr-int/lit8 v5, v2, 0x6

    aget-wide v10, v1, v5

    and-int/lit8 v1, v2, 0x3f

    shl-long v7, v8, v1

    and-long v9, v10, v7

    cmp-long v1, v9, v15

    if-eqz v1, :cond_50

    invoke-virtual/range {p0 .. p0}, Lu2/c;->d()Lu2/f;

    move-result-object v1

    .line 17
    iget v2, v0, Lu2/c;->g:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_4d

    goto :goto_1f

    :cond_4d
    iget-object v2, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_4e
    iget-object v2, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v3, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    iget v5, v0, Lu2/c;->h:I

    add-int/2addr v5, v12

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lu2/e;->c(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v3, v6

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lu2/f;->c:Ljava/lang/String;

    .line 18
    :goto_1f
    sget-object v2, Lu2/c;->o:[I

    iget v3, v0, Lu2/c;->g:I

    aget v4, v2, v3

    if-eq v4, v6, :cond_4f

    aget v2, v2, v3

    iput v2, v0, Lu2/c;->c:I

    :cond_4f
    return-object v1

    :cond_50
    sget-object v1, Lu2/c;->q:[J

    aget-wide v9, v1, v5

    and-long/2addr v9, v7

    cmp-long v1, v9, v15

    if-eqz v1, :cond_54

    sget-object v1, Lu2/c;->r:[J

    aget-wide v9, v1, v5

    and-long v1, v7, v9

    cmp-long v5, v1, v15

    if-eqz v5, :cond_52

    invoke-virtual/range {p0 .. p0}, Lu2/c;->d()Lu2/f;

    move-result-object v1

    if-nez v3, :cond_51

    goto :goto_20

    :cond_51
    iput-object v1, v3, Lu2/f;->e:Lu2/f;

    :goto_20
    move-object v3, v1

    :cond_52
    sget-object v1, Lu2/c;->o:[I

    iget v2, v0, Lu2/c;->g:I

    aget v5, v1, v2

    if-eq v5, v6, :cond_53

    aget v1, v1, v2

    iput v1, v0, Lu2/c;->c:I

    :cond_53
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 19
    :cond_54
    iget v1, v0, Lu2/c;->f:I

    iget v4, v0, Lu2/c;->h:I

    add-int/2addr v4, v12

    add-int/2addr v4, v1

    iput v4, v0, Lu2/c;->f:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_23

    :pswitch_1
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_55

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_55
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_21

    :pswitch_2
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_56

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_56
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->f:I

    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v2, v6

    goto/16 :goto_22

    :pswitch_3
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_57

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_57
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->f:I

    sget v1, Lu2/c;->m:I

    add-int/2addr v1, v6

    sput v1, Lu2/c;->m:I

    if-nez v1, :cond_5c

    .line 20
    iput v12, v0, Lu2/c;->c:I

    goto/16 :goto_23

    .line 21
    :pswitch_4
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_58

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_58
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->f:I

    sget v1, Lu2/c;->m:I

    add-int/2addr v1, v12

    sput v1, Lu2/c;->m:I

    goto :goto_23

    :pswitch_5
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_59

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_59
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_21

    :pswitch_6
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_5a
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->f:I

    sput v12, Lu2/c;->m:I

    goto :goto_23

    :pswitch_7
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_5b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    :cond_5b
    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    iget v4, v0, Lu2/c;->f:I

    invoke-virtual {v2, v4}, Lu2/e;->c(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_21
    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->f:I

    iget-object v1, v0, Lu2/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 22
    :cond_5c
    :goto_23
    sget-object v1, Lu2/c;->o:[I

    iget v2, v0, Lu2/c;->g:I

    aget v4, v1, v2

    if-eq v4, v6, :cond_5d

    aget v1, v1, v2

    iput v1, v0, Lu2/c;->c:I

    :cond_5d
    const v1, 0x7fffffff

    iput v1, v0, Lu2/c;->g:I

    :try_start_4
    iget-object v1, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v1}, Lu2/e;->e()C

    move-result v1

    iput-char v1, v0, Lu2/c;->b:C
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_2
    const/4 v1, 0x0

    goto :goto_24

    :cond_5e
    move v1, v4

    :goto_24
    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    .line 23
    iget-object v3, v2, Lu2/e;->d:[I

    iget v4, v2, Lu2/e;->e:I

    aget v3, v3, v4

    .line 24
    iget-object v5, v2, Lu2/e;->b:[I

    aget v4, v5, v4

    .line 25
    :try_start_5
    invoke-virtual {v2}, Lu2/e;->e()C

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v2, v12}, Lu2/e;->d(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move v5, v3

    move v6, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_27

    :catch_3
    nop

    if-gt v1, v12, :cond_5f

    const-string v2, ""

    goto :goto_25

    :cond_5f
    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v2}, Lu2/e;->b()Ljava/lang/String;

    move-result-object v2

    :goto_25
    iget-char v5, v0, Lu2/c;->b:C

    const/16 v6, 0xa

    if-eq v5, v6, :cond_61

    const/16 v6, 0xd

    if-ne v5, v6, :cond_60

    goto :goto_26

    :cond_60
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v6, v4

    const/4 v4, 0x1

    goto :goto_27

    :cond_61
    :goto_26
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    :goto_27
    if-nez v4, :cond_63

    iget-object v2, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v2, v12}, Lu2/e;->d(I)V

    if-gt v1, v12, :cond_62

    const-string v2, ""

    goto :goto_28

    :cond_62
    iget-object v1, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v1}, Lu2/e;->b()Ljava/lang/String;

    move-result-object v2

    :cond_63
    :goto_28
    move-object v7, v2

    new-instance v1, Lu2/g;

    iget-char v8, v0, Lu2/c;->b:C

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lu2/g;-><init>(ZIILjava/lang/String;C)V

    throw v1

    :catch_4
    const/4 v1, 0x0

    iput v1, v0, Lu2/c;->g:I

    invoke-virtual/range {p0 .. p0}, Lu2/c;->d()Lu2/f;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .registers 7

    iget-object v0, p0, Lu2/c;->k:[I

    aget v1, v0, p1

    iget v2, p0, Lu2/c;->j:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lu2/c;->l:[I

    iget v3, p0, Lu2/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lu2/c;->i:I

    aput p1, v1, v3

    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method public final d()Lu2/f;
    .registers 6

    iget v0, p0, Lu2/c;->g:I

    .line 1
    new-instance v1, Lu2/f;

    invoke-direct {v1}, Lu2/f;-><init>()V

    .line 2
    iput v0, v1, Lu2/f;->d:I

    sget-object v2, Lu2/c;->p:[Ljava/lang/String;

    aget-object v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v0}, Lu2/e;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lu2/f;->c:Ljava/lang/String;

    iget-object v0, p0, Lu2/c;->e:Lu2/e;

    .line 3
    iget-object v2, v0, Lu2/e;->d:[I

    iget v3, v0, Lu2/e;->n:I

    aget v4, v2, v3

    .line 4
    iput v4, v1, Lu2/f;->b:I

    .line 5
    iget-object v4, v0, Lu2/e;->b:[I

    aget v3, v4, v3

    .line 6
    iput v3, v1, Lu2/f;->a:I

    .line 7
    iget v0, v0, Lu2/e;->e:I

    aget v2, v2, v0

    .line 8
    aget v0, v4, v0

    return-object v1
.end method

.method public final e(II)I
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iput v1, v0, Lu2/c;->i:I

    iget-object v2, v0, Lu2/c;->l:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v5, p2

    const/4 v6, 0x1

    const v7, 0x7fffffff

    const/4 v8, 0x0

    :goto_0
    iget v9, v0, Lu2/c;->j:I

    add-int/2addr v9, v4

    iput v9, v0, Lu2/c;->j:I

    if-ne v9, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lu2/c;->a()V

    :cond_0
    iget-char v9, v0, Lu2/c;->b:C

    const/16 v10, 0x40

    const-wide/16 v11, 0x1

    const/4 v13, 0x6

    const/16 v14, 0x15

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    if-ge v9, v10, :cond_e

    shl-long v18, v11, v9

    :cond_1
    iget-object v9, v0, Lu2/c;->l:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v10, 0x100000200L

    if-eqz v9, :cond_c

    const-wide/high16 v20, 0x3ff000000000000L

    const/16 v12, 0x14

    if-eq v9, v4, :cond_a

    const-wide v22, 0x3ff6cfafffffdffL

    if-eq v9, v15, :cond_8

    if-eq v9, v1, :cond_2

    goto :goto_3

    :cond_2
    and-long v22, v18, v22

    cmp-long v9, v22, v16

    if-eqz v9, :cond_4

    if-le v7, v14, :cond_3

    const/16 v7, 0x15

    :cond_3
    invoke-virtual {v0, v15}, Lu2/c;->c(I)V

    goto :goto_1

    :cond_4
    and-long v9, v18, v10

    cmp-long v11, v9, v16

    if-eqz v11, :cond_6

    if-le v7, v13, :cond_5

    const/4 v7, 0x6

    :cond_5
    invoke-virtual {v0, v3}, Lu2/c;->c(I)V

    :cond_6
    :goto_1
    and-long v9, v18, v20

    cmp-long v11, v9, v16

    if-eqz v11, :cond_d

    if-le v7, v12, :cond_7

    goto :goto_2

    :cond_7
    move v12, v7

    :goto_2
    invoke-virtual {v0, v4}, Lu2/c;->c(I)V

    move v7, v12

    goto :goto_3

    :cond_8
    and-long v9, v18, v22

    cmp-long v11, v9, v16

    if-eqz v11, :cond_d

    if-le v7, v14, :cond_9

    const/16 v7, 0x15

    :cond_9
    invoke-virtual {v0, v15}, Lu2/c;->c(I)V

    goto :goto_3

    :cond_a
    and-long v9, v18, v20

    cmp-long v11, v9, v16

    if-eqz v11, :cond_d

    if-le v7, v12, :cond_b

    const/16 v7, 0x14

    :cond_b
    invoke-virtual {v0, v4}, Lu2/c;->c(I)V

    goto :goto_3

    :cond_c
    and-long v9, v18, v10

    cmp-long v11, v9, v16

    if-eqz v11, :cond_d

    invoke-virtual {v0, v3}, Lu2/c;->c(I)V

    const/4 v7, 0x6

    :cond_d
    :goto_3
    if-ne v6, v8, :cond_1

    goto :goto_6

    :cond_e
    const/16 v10, 0x80

    if-ge v9, v10, :cond_12

    and-int/lit8 v9, v9, 0x3f

    shl-long v18, v11, v9

    :cond_f
    iget-object v9, v0, Lu2/c;->l:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-eq v9, v15, :cond_10

    if-eq v9, v1, :cond_10

    goto :goto_4

    :cond_10
    const-wide/32 v9, -0x38000002

    and-long v9, v18, v9

    cmp-long v11, v9, v16

    if-eqz v11, :cond_11

    invoke-virtual {v0, v15}, Lu2/c;->c(I)V

    const/16 v7, 0x15

    :cond_11
    :goto_4
    if-ne v6, v8, :cond_f

    goto :goto_6

    :cond_12
    and-int/lit16 v10, v9, 0xff

    shr-int/2addr v10, v13

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v11, v9

    :cond_13
    iget-object v9, v0, Lu2/c;->l:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-eq v9, v15, :cond_14

    if-eq v9, v1, :cond_14

    goto :goto_5

    :cond_14
    sget-object v9, Lu2/c;->n:[J

    aget-wide v18, v9, v10

    and-long v18, v11, v18

    cmp-long v9, v18, v16

    if-eqz v9, :cond_16

    if-le v7, v14, :cond_15

    const/16 v7, 0x15

    :cond_15
    invoke-virtual {v0, v15}, Lu2/c;->c(I)V

    :cond_16
    :goto_5
    if-ne v6, v8, :cond_13

    :goto_6
    if-eq v7, v2, :cond_17

    iput v7, v0, Lu2/c;->g:I

    iput v5, v0, Lu2/c;->h:I

    const v7, 0x7fffffff

    :cond_17
    add-int/lit8 v5, v5, 0x1

    iget v6, v0, Lu2/c;->i:I

    iput v8, v0, Lu2/c;->i:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v6, v8, :cond_18

    return v5

    :cond_18
    :try_start_0
    iget-object v9, v0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v9}, Lu2/e;->e()C

    move-result v9

    iput-char v9, v0, Lu2/c;->b:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method public final f(I)I
    .registers 3

    iput p1, p0, Lu2/c;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lu2/c;->h:I

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lu2/c;->e:Lu2/e;

    invoke-virtual {v0}, Lu2/e;->e()C

    move-result v0

    iput-char v0, p0, Lu2/c;->b:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lu2/c;->e(II)I

    move-result p1

    :catch_0
    return p1
.end method

.method public final g(I)I
    .registers 2

    iput p1, p0, Lu2/c;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lu2/c;->h:I

    const/4 p1, 0x1

    return p1
.end method
