.class public final La3/m2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:La3/l2;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/l2;

    invoke-direct {v0, p1}, La3/l2;-><init>(Z)V

    iput-object v0, p0, La3/m2$a;->b:La3/l2;

    return-void
.end method
