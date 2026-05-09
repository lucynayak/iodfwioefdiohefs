.class public abstract Ls1/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/j$b;->b:Ljava/lang/String;

    iput-boolean p2, p0, Ls1/j$b;->c:Z

    iput-boolean p3, p0, Ls1/j$b;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lv1/a;Ljava/lang/Object;)V
.end method

.method public abstract b(Lv1/b;Ljava/lang/Object;)V
.end method

.method public abstract c(Ljava/lang/Object;)Z
.end method
