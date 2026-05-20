.class public Landroid/support/design/theme/MaterialComponentsViewInflater;
.super Landroid/support/v7/app/AppCompatViewInflater;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method public createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Lo0/e;
    .registers 4

    new-instance v0, Lj/a;

    invoke-direct {v0, p1, p2}, Lj/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
