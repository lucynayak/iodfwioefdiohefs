.class public final synthetic Le2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b$a;


# static fields
.field public static final synthetic a:Le2/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le2/i;

    invoke-direct {v0}, Le2/i;-><init>()V

    sput-object v0, Le2/i;->a:Le2/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    sget v0, Le2/j;->x:I

    const-string v0, "Overdraw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    const/16 v0, 0x23

    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method
