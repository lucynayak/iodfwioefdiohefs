.class public final Lg2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg2/i$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget v0, p0, Lg2/i$a;->a:I

    invoke-static {v0}, Lz1/p;->toggleGroupVisibility(I)Z

    invoke-static {}, Lz1/p;->refreshBindPopups()V

    return-void
.end method
