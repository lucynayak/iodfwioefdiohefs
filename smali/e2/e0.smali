.class public final synthetic Le2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# static fields
.field public static final synthetic a:Le2/e0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Le2/e0;

    invoke-direct {v0}, Le2/e0;-><init>()V

    sput-object v0, Le2/e0;->a:Le2/e0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    sget v0, Le2/f0;->u:I

    const/16 v0, 0x15

    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method
