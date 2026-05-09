.class public final Lx/e$a;
.super Lx/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lx/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lx/d$a;-><init>(Lx/d$a;)V

    return-void
.end method


# virtual methods
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lx/e;

    invoke-direct {v0, p0, p1}, Lx/e;-><init>(Lx/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
