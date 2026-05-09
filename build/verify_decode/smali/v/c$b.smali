.class public final Lv/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lv/c$c;


# direct methods
.method public constructor <init>([Lv/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c$b;->a:[Lv/c$c;

    return-void
.end method
