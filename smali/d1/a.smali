.class public Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/e$a;
.implements Lr1/n;
.implements Le3/i;
.implements Lx2/b;


# static fields
.field public static b:Ljava/lang/reflect/Method;

.field public static c:Z

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static j:Ljava/lang/String;

.field public static k:I

.field public static l:I

.field public static final m:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ld1/a;->f:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ld1/a;->g:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f030098

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Ld1/a;->h:[I

    new-array v0, v0, [I

    const v1, 0x7f03009a

    aput v1, v0, v3

    sput-object v0, Ld1/a;->i:[I

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    sput-object v0, Ld1/a;->m:[B

    return-void

    :array_0
    .array-data 4
        0x7f030145
        0x7f030212
    .end array-data

    :array_1
    .array-data 4
        0x10100b3
        0x7f03014c
        0x7f03014d
        0x7f03014e
        0x7f03017b
        0x7f030184
        0x7f030185
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;
    .registers 4

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Ld1/a;->z(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lj0/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Ld1/a;->A(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    aget-char v1, p0, v0

    .line 1
    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-char v2, p0, v0

    .line 2
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 3
    aget-char v2, p0, v2

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 6
    aput-char v1, p0, v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :cond_3
    return-object p0
.end method

.method public static E(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p0, p0, v1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Ld1/a;->A(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p0, v1, [Ljava/lang/Class;

    return-object p0
.end method

.method public static F(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Ld1/a;->A(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static H(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static I(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ld1/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1
    sget-object p0, Lc1/g;->c:Lc1/g;

    const-string v0, "AppsFlyerKey"

    .line 2
    invoke-virtual {p0, v0}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld1/a;->L(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ld1/a;->d:Ljava/lang/String;

    sget-object v1, Ld1/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld1/a;->g(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs J(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .registers 14

    .line 1
    sget-object v0, Ly1/a;->i:[I

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_0

    .line 2
    sget-object v1, Ld1/a;->i:[I

    const-string v4, "Theme.MaterialComponents"

    invoke-static {p0, v1, v4}, Ld1/a;->n(Landroid/content/Context;[ILjava/lang/String;)V

    .line 3
    :cond_0
    sget-object v1, Ld1/a;->h:[I

    const-string v4, "Theme.AppCompat"

    invoke-static {p0, v1, v4}, Ld1/a;->n(Landroid/content/Context;[ILjava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    array-length v4, p5

    if-nez v4, :cond_2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    if-eq p5, v1, :cond_3

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    array-length v5, p5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget v7, p5, v6

    invoke-virtual {v4, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-ne v7, v1, :cond_4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_6

    .line 7
    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    .line 8
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .registers 12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static L(Ljava/lang/String;)V
    .registers 4

    sput-object p0, Ld1/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ld1/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static N()Z
    .registers 3

    .line 1
    sget-object v0, Lc1/g;->c:Lc1/g;

    const/4 v1, 0x1

    const-string v2, "shouldLog"

    .line 2
    invoke-virtual {v0, v2, v1}, Lc1/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "Base64 decoding failed."

    const-string v1, "Invalid key specification."

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "IABUtil/Security"

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ly1/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lw1/a; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v2, "SHA1withRSA"

    .line 2
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    invoke-static {p2}, Ly1/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Signature verification failed."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lw1/a; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    const-string v0, "Signature exception."

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    const-string v0, "NoSuchAlgorithmException."

    :catch_3
    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v3

    :catch_4
    move-exception p0

    .line 3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_2
    const-string p0, "Purchase verification failed: missing data."

    .line 4
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static P(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    sget-object v0, Ld1/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Ld1/a;->k:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "InstanceID/Rpc"

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.google.android.c2dm.permission.RECEIVE"

    invoke-virtual {p0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v4, Ld1/a;->l:I

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sput-object v3, Ld1/a;->j:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const-string v5, "Possible malicious package "

    .line 1
    invoke-static {v5}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " declares "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " without permission"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Failed to resolve REGISTER intent, falling back"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Ld1/a;->j:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Ld1/a;->l:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    :try_start_2
    const-string v0, "com.google.android.gsf"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Ld1/a;->j:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput p0, Ld1/a;->l:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    const-string p0, "Both Google Play Services and legacy GSF package are missing"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " must not be null"

    .line 1
    invoke-static {p1, v0}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Ld1/a;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppsFlyer_4.7.1"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1, p0}, Lc1/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Ld1/a;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppsFlyer_4.7.1"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    const-string v1, "I"

    invoke-virtual {v0, v1, p0}, Lc1/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Ljava/lang/Throwable;)V
    .registers 7

    .line 1
    invoke-static {}, Ld1/a;->N()Z

    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_2

    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v1

    goto :goto_3

    .line 3
    :cond_2
    array-length v5, p0

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v1

    :goto_2
    array-length v1, p0

    if-ge v4, v1, :cond_3

    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v5

    :goto_3
    const-string v1, "exception"

    .line 4
    invoke-virtual {v0, v1, v2, p0}, Lc1/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lc1/g;->c:Lc1/g;

    const/4 v1, 0x0

    const-string v2, "disableLogs"

    .line 2
    invoke-virtual {v0, v2, v1}, Lc1/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppsFlyer_4.7.1"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1, p0}, Lc1/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Ld1/a;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppsFlyer_4.7.1"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1, p0}, Lc1/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Z)V
    .registers 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static l(I)I
    .registers 1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    aget-object v2, v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p0, p1, v2}, Landroid/support/v4/app/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v3, -0x2

    :cond_5
    :goto_2
    return v3
.end method

.method public static n(Landroid/content/Context;[ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The style on this component requires your app theme to be "

    const-string v0, " (or a descendant)."

    .line 3
    invoke-static {p1, p2, v0}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ll1/a;Z)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1
    iget-object v1, p0, Ll1/a;->b:Landroid/net/Uri;

    const-string v2, "LINK"

    .line 2
    invoke-static {v0, v2, v1}, Lh1/x;->z(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object v1, p0, Ll1/a;->e:Ljava/lang/String;

    const-string v2, "PLACE"

    .line 4
    invoke-static {v0, v2, v1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Ll1/a;->f:Ljava/lang/String;

    const-string v2, "REF"

    .line 6
    invoke-static {v0, v2, v1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DATA_FAILURES_FATAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Ll1/a;->d:Ljava/util/List;

    .line 8
    invoke-static {p1}, Lh1/x;->s(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "FRIENDS"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    :cond_0
    iget-object p0, p0, Ll1/a;->c:Ll1/b;

    if-eqz p0, :cond_1

    .line 10
    iget-object p0, p0, Ll1/b;->b:Ljava/lang/String;

    const-string p1, "HASHTAG"

    .line 11
    invoke-static {v0, p1, p0}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static p(Ll1/a;Z)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1
    iget-object v1, p0, Ll1/a;->b:Landroid/net/Uri;

    const-string v2, "com.facebook.platform.extra.LINK"

    .line 2
    invoke-static {v0, v2, v1}, Lh1/x;->z(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object v1, p0, Ll1/a;->e:Ljava/lang/String;

    const-string v2, "com.facebook.platform.extra.PLACE"

    .line 4
    invoke-static {v0, v2, v1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Ll1/a;->f:Ljava/lang/String;

    const-string v2, "com.facebook.platform.extra.REF"

    .line 6
    invoke-static {v0, v2, v1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object p0, p0, Ll1/a;->d:Ljava/util/List;

    .line 8
    invoke-static {p0}, Lh1/x;->s(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "com.facebook.platform.extra.FRIENDS"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-object v0
.end method

.method public static q(Lx2/b;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lx2/c;->b:Ljava/nio/charset/Charset;

    invoke-interface {p0}, Lx2/b;->length()I

    move-result v1

    .line 1
    instance-of v2, p0, Lx2/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p0, Lx2/a;

    .line 2
    iget-object p0, p0, Lx2/a;->b:[B

    .line 3
    invoke-static {p0, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lx2/b;->a()[B

    move-result-object p0

    .line 5
    invoke-static {p0, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ld1/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld1/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v4, C

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    aget-object v7, v1, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    aget-object v7, v1, v4

    const/16 v8, 0x20

    aput-char v8, v7, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_3

    aget-object v6, v1, v5

    aget-char v6, v6, v4

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final u(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ld1/a;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from cache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppsFlyer_4.7.1"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)Lx2/b;
    .registers 4

    sget-object v0, Lx2/c;->b:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Lx2/a;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lx2/a;-><init>(I)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lx2/a;->b([BII)V

    return-object v0
.end method

.method public static final w(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "AFRequestCache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final x(Landroid/content/Context;)Ljava/util/List;
    .registers 10

    const-string v0, "AppsFlyer_4.7.1"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Ld1/a;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found cached request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v5, 0x0

    .line 1
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v8, v7

    new-array v7, v8, [C

    invoke-virtual {v6, v7}, Ljava/io/Reader;->read([C)I

    new-instance v8, Ld1/b;

    invoke-direct {v8, v7}, Ld1/b;-><init>([C)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2
    iput-object v4, v8, Ld1/b;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :catch_0
    move-object v5, v8

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_2
    :cond_1
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_3
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 4
    :catch_4
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_5
    const-string p0, "Could not cache request"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method public static y(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ld1/a;->z(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Ld1/a;->z(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_2
    const-class p0, Ljava/lang/Object;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public G(Landroid/view/View;)F
    .registers 3

    const v0, 0x7f080111

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public M(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setRight(I)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method public a()[B
    .registers 2

    sget-object v0, Ld1/a;->m:[B

    return-object v0
.end method

.method public b(Ll1/j;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    iget-object p1, p1, Ll1/j;->e:Landroid/net/Uri;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Le1/m;

    const-string v1, "Unable to attach images"

    invoke-direct {v0, v1, p1}, Le1/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Le3/k;
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    .line 1
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    new-instance v5, Le3/c;

    invoke-direct {v5, v4}, Le3/c;-><init>(I)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    new-instance v5, Le3/b;

    invoke-direct {v5, v1}, Le3/b;-><init>(I)V

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_2

    new-instance v5, Le3/b;

    const/4 p1, 0x5

    invoke-direct {v5, p1}, Le3/b;-><init>(I)V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_3

    new-instance v5, Le3/c;

    invoke-direct {v5, v3}, Le3/c;-><init>(I)V

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    new-instance v5, Le3/c;

    invoke-direct {v5, v1}, Le3/c;-><init>(I)V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_5

    new-instance v5, Le3/b;

    const/4 p1, 0x6

    invoke-direct {v5, p1}, Le3/b;-><init>(I)V

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_6

    new-instance v5, Le3/d;

    invoke-direct {v5, v4}, Le3/d;-><init>(I)V

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_7

    new-instance v5, Le3/c;

    invoke-direct {v5, v2}, Le3/c;-><init>(I)V

    goto :goto_0

    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_8

    new-instance v5, Le3/d;

    invoke-direct {v5, v3}, Le3/d;-><init>(I)V

    goto :goto_0

    :cond_8
    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    new-instance v5, Le3/d;

    invoke-direct {v5, v2}, Le3/d;-><init>(I)V

    :cond_9
    :goto_0
    return-object v5

    :cond_a
    const-string v1, "java.util"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_12

    .line 3
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_b

    new-instance v5, Le3/f;

    invoke-direct {v5, p1, v6}, Le3/f;-><init>(Ljava/lang/Class;I)V

    goto :goto_1

    :cond_b
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_c

    new-instance v5, Le3/f;

    invoke-direct {v5, v3}, Le3/f;-><init>(I)V

    goto :goto_1

    :cond_c
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_d

    new-instance v5, Le3/b;

    invoke-direct {v5, v2}, Le3/b;-><init>(I)V

    goto :goto_1

    :cond_d
    const-class v0, Ljava/util/GregorianCalendar;

    if-ne p1, v0, :cond_e

    new-instance v5, Le3/f;

    invoke-direct {v5, v2}, Le3/f;-><init>(I)V

    goto :goto_1

    :cond_e
    const-class v0, Ljava/util/TimeZone;

    if-ne p1, v0, :cond_f

    new-instance v5, Le3/b;

    const/4 p1, 0x7

    invoke-direct {v5, p1}, Le3/b;-><init>(I)V

    goto :goto_1

    :cond_f
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p1, v0, :cond_10

    new-instance v5, Le3/b;

    invoke-direct {v5, v6}, Le3/b;-><init>(I)V

    goto :goto_1

    :cond_10
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v0, :cond_11

    new-instance v5, Le3/c;

    invoke-direct {v5, v6}, Le3/c;-><init>(I)V

    :cond_11
    :goto_1
    return-object v5

    :cond_12
    const-string v1, "java.net"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5
    const-class v0, Ljava/net/URL;

    if-ne p1, v0, :cond_13

    new-instance v5, Le3/b;

    const/16 p1, 0x8

    invoke-direct {v5, p1}, Le3/b;-><init>(I)V

    :cond_13
    return-object v5

    :cond_14
    const-string v1, "java.io"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 7
    const-class v0, Ljava/io/File;

    if-ne p1, v0, :cond_15

    new-instance v5, Le3/b;

    invoke-direct {v5, v3}, Le3/b;-><init>(I)V

    :cond_15
    return-object v5

    :cond_16
    const-string v1, "java.sql"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9
    const-class v0, Ljava/sql/Time;

    if-ne p1, v0, :cond_17

    new-instance v5, Le3/f;

    invoke-direct {v5, p1, v6}, Le3/f;-><init>(Ljava/lang/Class;I)V

    goto :goto_2

    :cond_17
    const-class v0, Ljava/sql/Date;

    if-ne p1, v0, :cond_18

    new-instance v5, Le3/f;

    invoke-direct {v5, p1, v6}, Le3/f;-><init>(Ljava/lang/Class;I)V

    goto :goto_2

    :cond_18
    const-class v0, Ljava/sql/Timestamp;

    if-ne p1, v0, :cond_19

    new-instance v5, Le3/f;

    invoke-direct {v5, p1, v6}, Le3/f;-><init>(Ljava/lang/Class;I)V

    :cond_19
    :goto_2
    return-object v5

    :cond_1a
    const-string v1, "java.math"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 11
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_1b

    new-instance v5, Le3/d;

    invoke-direct {v5, v6}, Le3/d;-><init>(I)V

    goto :goto_3

    :cond_1b
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_1c

    new-instance v5, Le3/b;

    invoke-direct {v5, v4}, Le3/b;-><init>(I)V

    :cond_1c
    :goto_3
    return-object v5

    .line 12
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v5, Le3/f;

    invoke-direct {v5, p1, v4}, Le3/f;-><init>(Ljava/lang/Class;I)V

    goto :goto_4

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v5, Le3/f;

    invoke-direct {v5, p1, v4}, Le3/f;-><init>(Ljava/lang/Class;I)V

    :cond_1f
    :goto_4
    return-object v5
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
