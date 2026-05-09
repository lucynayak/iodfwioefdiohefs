.class public final Le1/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le1/u;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le1/u;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/u$b;->a:Le1/u;

    iput-object p2, p0, Le1/u$b;->b:Ljava/lang/Object;

    return-void
.end method
