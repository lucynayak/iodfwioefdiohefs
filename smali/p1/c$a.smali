.class public final enum Lp1/c$a;
.super Lp1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "IDENTITY"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lp1/c;-><init>(Ljava/lang/String;ILp1/c$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
