.class public abstract Lg0/m;
.super Lg0/h;
.source "SourceFile"


# instance fields
.field public j:I

.field public k:I

.field public l:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lg0/h;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lg0/m;->k:I

    iput p2, p0, Lg0/m;->j:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lg0/m;->l:Landroid/view/LayoutInflater;

    return-void
.end method
