.class public final Lu2/d;
.super La3/a2;
.source "SourceFile"


# instance fields
.field public b:Lu2/f;

.field public c:Ljava/lang/String;

.field public d:[[I

.field public e:Z

.field public f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "Cannot parse field"

    invoke-direct {p0, v0}, La3/a2;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu2/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu2/d;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, La3/a2;-><init>(Ljava/lang/String;)V

    const-string p1, "line.separator"

    const-string v0, "\n"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu2/d;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu2/d;->e:Z

    return-void
.end method

.method public constructor <init>(Lu2/f;[[I[Ljava/lang/String;)V
    .registers 6

    const-string v0, ""

    invoke-direct {p0, v0}, La3/a2;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu2/d;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/d;->e:Z

    iput-object p1, p0, Lu2/d;->b:Lu2/f;

    iput-object p2, p0, Lu2/d;->d:[[I

    iput-object p3, p0, Lu2/d;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .registers 16

    iget-boolean v0, p0, Lu2/d;->e:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lu2/d;->d:[[I

    array-length v5, v4

    const-string v6, " "

    const-string v7, "    "

    if-ge v2, v5, :cond_4

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    aget-object v3, v4, v2

    array-length v3, v3

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lu2/d;->d:[[I

    aget-object v8, v5, v2

    array-length v8, v8

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lu2/d;->f:[Ljava/lang/String;

    aget-object v5, v5, v2

    aget v5, v5, v4

    aget-object v5, v8, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v5, v2

    aget-object v5, v5, v2

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-eqz v4, :cond_3

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v4, p0, Lu2/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lu2/d;->b:Lu2/f;

    iget-object v2, v2, Lu2/f;->e:Lu2/f;

    const-string v4, "Encountered \""

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_10

    if-eqz v5, :cond_5

    .line 1
    invoke-static {v4, v6}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    :cond_5
    iget v8, v2, Lu2/f;->d:I

    if-nez v8, :cond_6

    .line 3
    invoke-static {v4}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lu2/d;->f:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 5
    :cond_6
    invoke-static {v4}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6
    iget-object v8, v2, Lu2/f;->c:Ljava/lang/String;

    .line 7
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_f

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eqz v11, :cond_e

    const/16 v12, 0x22

    if-eq v11, v12, :cond_d

    const/16 v12, 0x27

    if-eq v11, v12, :cond_c

    const/16 v12, 0x5c

    if-eq v11, v12, :cond_b

    const/16 v12, 0xc

    if-eq v11, v12, :cond_a

    const/16 v12, 0xd

    if-eq v11, v12, :cond_9

    packed-switch v11, :pswitch_data_0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-lt v11, v12, :cond_8

    const/16 v12, 0x7e

    if-le v11, v12, :cond_7

    goto :goto_4

    :pswitch_0
    const-string v11, "\\n"

    goto :goto_5

    :pswitch_1
    const-string v11, "\\t"

    goto :goto_5

    :pswitch_2
    const-string v11, "\\b"

    goto :goto_5

    :cond_7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_8
    :goto_4
    const-string v12, "0000"

    .line 8
    invoke-static {v12}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x10

    .line 9
    invoke-static {v11, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\u"

    .line 10
    invoke-static {v12}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 11
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_9
    const-string v11, "\\r"

    goto :goto_5

    :cond_a
    const-string v11, "\\f"

    goto :goto_5

    :cond_b
    const-string v11, "\\\\"

    goto :goto_5

    :cond_c
    const-string v11, "\\\'"

    goto :goto_5

    :cond_d
    const-string v11, "\\\""

    :goto_5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lu2/f;->e:Lu2/f;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_10
    :goto_7
    const-string v1, "\" at line "

    .line 13
    invoke-static {v4, v1}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lu2/d;->b:Lu2/f;

    iget-object v2, v2, Lu2/f;->e:Lu2/f;

    iget v2, v2, Lu2/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu2/d;->b:Lu2/f;

    iget-object v2, v2, Lu2/f;->e:Lu2/f;

    iget v2, v2, Lu2/f;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 15
    invoke-static {v1, v2}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lu2/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lu2/d;->d:[[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 17
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Was expecting:"

    goto :goto_8

    :cond_11
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Was expecting one of:"

    .line 18
    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu2/d;->c:Ljava/lang/String;

    .line 19
    invoke-static {v1, v2, v7}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
