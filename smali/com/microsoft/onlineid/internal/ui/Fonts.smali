.class public final enum Lcom/microsoft/onlineid/internal/ui/Fonts;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ui/Fonts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/Fonts;

.field public static final enum SegoeUI:Lcom/microsoft/onlineid/internal/ui/Fonts;

.field public static final enum SegoeUILight:Lcom/microsoft/onlineid/internal/ui/Fonts;

.field public static final enum SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;


# instance fields
.field private _fallbackFamilyName:Ljava/lang/String;

.field private _fallbackStyle:I

.field private _filename:Ljava/lang/String;

.field private _loadFailed:Z

.field private _typeface:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    new-instance v6, Lcom/microsoft/onlineid/internal/ui/Fonts;

    const-string v1, "SegoeUI"

    const/4 v2, 0x0

    const-string v3, "segoeui"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/ui/Fonts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUI:Lcom/microsoft/onlineid/internal/ui/Fonts;

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/Fonts;

    const-string v8, "SegoeUILight"

    const/4 v9, 0x1

    const-string v10, "segoeuil"

    const-string v11, "sans-serif-thin"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/onlineid/internal/ui/Fonts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUILight:Lcom/microsoft/onlineid/internal/ui/Fonts;

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/Fonts;

    const-string v14, "SegoeUISemiBold"

    const/4 v15, 0x2

    const-string v16, "seguisb"

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/microsoft/onlineid/internal/ui/Fonts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/microsoft/onlineid/internal/ui/Fonts;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Fonts;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Fonts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_loadFailed:Z

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackFamilyName:Ljava/lang/String;

    iput p5, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackStyle:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Fonts;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ui/Fonts;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/Fonts;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/Fonts;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/Fonts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/Fonts;

    return-object v0
.end method


# virtual methods
.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_loadFailed:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_filename:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "fonts/%s.ttf"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackFamilyName:Ljava/lang/String;

    iget v2, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackStyle:I

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    :goto_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_loadFailed:Z

    :cond_1
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
