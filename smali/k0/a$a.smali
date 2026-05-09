.class public final Lk0/a$a;
.super Lk0/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .registers 2

    invoke-direct {p0}, Lk0/a$f;-><init>()V

    iput-object p1, p0, Lk0/a$a;->a:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public final c()V
    .registers 2

    iget-object v0, p0, Lk0/a$a;->a:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lk0/a$a;->a:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method
