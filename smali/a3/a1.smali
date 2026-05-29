.class public final La3/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/a1$a;
    }
.end annotation


# instance fields
.field public final a:Lf3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf3/a<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/b;

    invoke-direct {v0}, Lf3/b;-><init>()V

    iput-object v0, p0, La3/a1;->a:Lf3/b;

    return-void
.end method
