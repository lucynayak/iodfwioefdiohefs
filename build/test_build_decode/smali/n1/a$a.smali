.class public final Ln1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/a;->zzn(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Ln1/a$a;->c:Ln1/a;

    iput-object p2, p0, Ln1/a$a;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln1/a$a;->c:Ln1/a;

    iget-object v1, p0, Ln1/a$a;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Ln1/a;->zza(Ln1/a;Landroid/content/Intent;)V

    return-void
.end method
