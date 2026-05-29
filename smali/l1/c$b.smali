.class public final Ll1/c$b;
.super Ll1/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/a$a<",
        "Ll1/c;",
        "Ll1/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ll1/a$a;-><init>()V

    return-void
.end method
