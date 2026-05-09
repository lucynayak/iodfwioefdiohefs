.class public final synthetic Le2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# static fields
.field public static final synthetic a:Le2/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le2/u;

    invoke-direct {v0}, Le2/u;-><init>()V

    sput-object v0, Le2/u;->a:Le2/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    sget v0, Le2/v;->o:I

    const/16 v0, 0x13

    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method
