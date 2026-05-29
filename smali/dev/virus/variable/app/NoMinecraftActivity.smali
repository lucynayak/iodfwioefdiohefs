.class public Ldev/virus/variable/app/NoMinecraftActivity;
.super Lh0/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lh0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lh0/f;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    invoke-virtual {p0, p1}, Lh0/f;->setContentView(I)V

    return-void
.end method
