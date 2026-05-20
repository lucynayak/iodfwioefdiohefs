.class public final enum Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v3, "Alpha"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v3, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v5, "Scale"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v5, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v7, "PositionX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v7, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v9, "PositionY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v9, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v11, "Height"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-object v0
.end method
